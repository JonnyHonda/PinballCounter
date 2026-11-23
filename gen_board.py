#!/usr/bin/env python3
"""
Generate PinballCounter.brd - EAGLE 9.x board matching PinballCounter.sch.

Places every part, draws the board outline, mounting holes and silkscreen,
creates every signal (shown as airwires) and a GND pour on the bottom layer.
Traces are NOT routed: open the board in EAGLE and run the autorouter (AUTO)
or route by hand.

Part names, packages, values and connections come from gen_schematic.py, so
the .sch/.brd pair stays consistent for forward/back annotation.

Layout (top view, digit 8 on the left so the score reads normally):
    displays              - top row, one column per digit
    330R segment resistors - under each display
    74LS47                - under the resistors
    74LS192               - under the 74LS47
    74LS08 x2             - logic row
    74LS221 x4 + R/C      - debounce rows
    J1, J2, reset, 74LS14 - bottom edge
Run:  python3 gen_board.py
"""
import math
from xml.sax.saxutils import quoteattr

import gen_schematic as gs
from gen_schematic import f, DS, PKG, net_class, classes_xml

OUT = "PinballCounter.brd"

COL = 22.86                 # column pitch per digit (0.9")
MARGIN = 6.0
BOARD_W = round(2 * MARGIN + 8 * COL, 2)   # ~194.9 mm
BOARD_H = 160.0

Y_LOGIC_08 = 46.0           # 74LS08 row
Y_221 = 32.0                # 74LS221 row
Y_RC = 19.0                 # pull-ups, timing R/C (vertical)
Y_EDGE = 6.5                # connectors, reset
Y_192 = 68.0
Y_47 = 94.0
Y_SEGR = 111.0              # first segment resistor
Y_DISP = 146.4


def col_x(c):
    """Centre x of column c (0 = leftmost = digit 8)."""
    return MARGIN + COL / 2 + c * COL


def digit_x(d):
    return col_x(8 - d)


def placements():
    P = {}   # part -> (x, y, rot)

    for d in range(1, 9):
        x = digit_x(d)
        P[f"DS{d}"] = (x, Y_DISP, "R0")
        # Stack order (bottom -> top) follows the 74LS47 output pins top -> bottom
        # (f,g,a,b,c,d,e) so tracks fan out without crossing. R180 puts pad 1
        # (decoder side) on the right, next to the 74LS47 output column.
        for j, seg in enumerate("ABCDEFG"):
            P[f"R{17 + 7 * (d - 1) + j}"] = (x, Y_SEGR + "FGABCDE".index(seg) * 3.81, "R180")
        P[f"U{8 + d}"] = (x, Y_47, "R270")                     # 74LS47, pin 1 top-left
        P[f"U{d}"] = (x, Y_192, "R270")                        # 74LS192
        P[f"C{17 + d}"] = (x, Y_47 + 13.0, "R0")               # decoupling for 74LS47
        P[f"C{9 + d}"] = (x, Y_192 + 13.0, "R0")               # decoupling for 74LS192

    # 74LS08: U18 serves digits 5-8 (left half), U17 digits 1-4 (right half)
    P["U18"] = (col_x(1.5), Y_LOGIC_08, "R0")
    P["U17"] = (col_x(5.5), Y_LOGIC_08, "R0")
    P["C27"] = (col_x(1.5) + 12.0, Y_LOGIC_08, "R90")
    P["C26"] = (col_x(5.5) + 12.0, Y_LOGIC_08, "R90")

    # 74LS221: one per pair of digits. U22 = digits 7/8 ... U19 = digits 1/2
    for k in range(4):
        u = 19 + k
        lo, hi = 2 * k + 1, 2 * k + 2
        cx = col_x(2 * (3 - k) + 0.5)
        P[f"U{u}"] = (cx, Y_221, "R0")
        P[f"C{28 + k}"] = (cx + 13.5, Y_221, "R90")            # decoupling
        # vertical row underneath: higher digit on the left (matches display order)
        row = [f"R{hi}", f"R{8 + hi}", f"C{hi}", f"R{lo}", f"R{8 + lo}", f"C{lo}"]
        for i, part in enumerate(row):
            P[part] = (cx - 12.5 + 5.0 * i, Y_RC, "R90")

    # bottom edge: power, reset, switch header
    P["J2"] = (15.0, Y_EDGE, "R0")
    P["C33"] = (27.0, Y_EDGE, "R0")
    P["S1"] = (42.0, Y_EDGE + 1.0, "R0")
    P["R73"] = (60.0, Y_EDGE, "R0")
    P["C9"] = (72.0, Y_EDGE, "R0")
    P["U23"] = (92.0, Y_EDGE + 1.0, "R0")
    P["C32"] = (106.0, Y_EDGE + 1.0, "R90")
    P["J1"] = (150.0, Y_EDGE - 1.0, "R0")
    return P


def rotate(x, y, rot):
    a = {"R0": 0, "R90": 90, "R180": 180, "R270": 270}[rot]
    r = math.radians(a)
    return (x * math.cos(r) - y * math.sin(r), x * math.sin(r) + y * math.cos(r))


def pads_world(sch, P):
    """part -> list of (pad, x, y) in board coords."""
    out = {}
    for part, (ds, dev, _) in sch.parts.items():
        pk = PKG[[d for d in DS[ds].devices if d[0] == dev][0][1]]
        x0, y0, rot = P[part]
        out[part] = [(p[0], *(a + b for a, b in zip((x0, y0), rotate(p[1], p[2], rot)))) for p in pk.pads]
    return out


def pin_pads(ds, dev, pin):
    return [d for d in DS[ds].devices if d[0] == dev][0][2][pin].split()


def check(sch, P, W):
    errs = []
    missing = set(sch.parts) - set(P)
    if missing:
        errs.append(f"unplaced parts: {sorted(missing)}")
    allpads = [(part, n, x, y) for part, pads in W.items() for (n, x, y) in pads]
    for part, n, x, y in allpads:
        if not (2.0 < x < BOARD_W - 2.0 and 2.0 < y < BOARD_H - 2.0):
            errs.append(f"{part}.{n} off board at ({x:.1f},{y:.1f})")
    # pad-to-pad spacing between different parts (pads are ~1.6-1.9 mm)
    for i in range(len(allpads)):
        for j in range(i + 1, len(allpads)):
            a, b = allpads[i], allpads[j]
            if a[0] != b[0] and math.hypot(a[2] - b[2], a[3] - b[3]) < 2.4:
                errs.append(f"pads too close: {a[0]}.{a[1]} / {b[0]}.{b[1]}")
    for hx, hy in HOLES:
        for part, n, x, y in allpads:
            if math.hypot(hx - x, hy - y) < 4.0:
                errs.append(f"{part}.{n} too close to hole at ({hx},{hy})")
    return errs


HOLES = [(3.5, 3.5), (BOARD_W - 3.5, 3.5), (3.5, BOARD_H - 3.5), (BOARD_W - 3.5, BOARD_H - 3.5)]


def build_xml(sch, P):
    plain = []
    # outline
    plain += gs.rect(0, 0, BOARD_W, BOARD_H, 20, 0)
    for hx, hy in HOLES:
        plain.append(f'<hole x="{f(hx)}" y="{f(hy)}" drill="3.2"/>')
    # silkscreen
    plain.append(f'<text x="{f(BOARD_W / 2)}" y="{f(Y_LOGIC_08 + 8)}" size="2.54" layer="21" '
                 f'align="center">PINBALL COUNTER - 74LS TTL</text>')
    for d in range(1, 9):
        plain.append(f'<text x="{f(digit_x(d))}" y="{f(BOARD_H - 3.0)}" size="1.778" layer="21" '
                     f'align="center">{10 ** (d - 1):,}</text>'.replace(",", " "))
    j1x, j1y, _ = P["J1"]
    for i in range(10):
        lbl = f"SW{i + 1}" if i < 8 else "GND"
        plain.append(f'<text x="{f(j1x - 11.43 + i * 2.54)}" y="{f(j1y + 2.2)}" size="0.8" layer="21" '
                     f'rot="R90">{lbl}</text>')
    j2x, j2y, _ = P["J2"]
    plain.append(f'<text x="{f(j2x - 1.27)}" y="{f(j2y + 2.2)}" size="0.8" layer="21" rot="R90">+5V</text>')
    plain.append(f'<text x="{f(j2x + 1.27)}" y="{f(j2y + 2.2)}" size="0.8" layer="21" rot="R90">GND</text>')

    lib = ['<library name="pinball_ttl"><packages>'] + [p.xml() for p in PKG.values()] + ["</packages></library>"]

    elements = []
    for part, (ds, dev, val) in sch.parts.items():
        pkg = [d for d in DS[ds].devices if d[0] == dev][0][1]
        x, y, rot = P[part]
        r = f' rot="{rot}"' if rot != "R0" else ""
        elements.append(f'<element name="{part}" library="pinball_ttl" package="{pkg}" value={quoteattr(val)} '
                        f'x="{f(x)}" y="{f(y)}"{r}/>')

    signals = []
    for net, refs in sorted(sch.nets.items()):
        crefs = []
        for (_, part, pin, _, _) in refs:
            ds, dev, _ = sch.parts[part]
            for pad in pin_pads(ds, dev, pin):
                crefs.append(f'<contactref element="{part}" pad="{pad}"/>')
        poly = ""
        if net == "GND":
            m = 0.6
            poly = (f'<polygon width="0.3048" layer="16" isolate="0.4064" thermals="yes">'
                    f'<vertex x="{m}" y="{m}"/><vertex x="{f(BOARD_W - m)}" y="{m}"/>'
                    f'<vertex x="{f(BOARD_W - m)}" y="{f(BOARD_H - m)}"/><vertex x="{m}" y="{f(BOARD_H - m)}"/>'
                    f'</polygon>')
        signals.append(f'<signal name={quoteattr(net)} class="{net_class(net)}">' + "".join(crefs) + poly + "</signal>")

    layers = [(1, "Top", 4), (16, "Bottom", 1), (17, "Pads", 2), (18, "Vias", 2), (19, "Unrouted", 6),
              (20, "Dimension", 24), (21, "tPlace", 7), (22, "bPlace", 7), (23, "tOrigins", 15),
              (24, "bOrigins", 15), (25, "tNames", 7), (26, "bNames", 7), (27, "tValues", 7),
              (28, "bValues", 7), (29, "tStop", 7), (30, "bStop", 7), (31, "tCream", 7), (32, "bCream", 7),
              (35, "tGlue", 7), (36, "bGlue", 7), (39, "tKeepout", 4), (40, "bKeepout", 1),
              (41, "tRestrict", 4), (42, "bRestrict", 1), (43, "vRestrict", 2), (44, "Drills", 7),
              (45, "Holes", 7), (46, "Milling", 3), (47, "Measures", 7), (48, "Document", 7),
              (49, "Reference", 7), (51, "tDocu", 7), (52, "bDocu", 7), (91, "Nets", 2), (92, "Busses", 1),
              (93, "Pins", 2), (94, "Symbols", 4), (95, "Names", 7), (96, "Values", 7), (97, "Info", 7),
              (98, "Guide", 6)]
    lay = "".join(f'<layer number="{n}" name="{nm}" color="{c}" fill="1" visible="yes" active="yes"/>'
                  for n, nm, c in layers)
    nl = "\n"
    return f"""<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings><setting alwaysvectorfont="no"/><setting verticaltext="up"/></settings>
<grid distance="0.025" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.005" altunitdist="inch" altunit="inch"/>
<layers>{lay}</layers>
<board>
<plain>
{nl.join(plain)}
</plain>
<libraries>
{nl.join(lib)}
</libraries>
<attributes/>
<variantdefs/>
{classes_xml()}
<elements>
{nl.join(elements)}
</elements>
<signals>
{nl.join(signals)}
</signals>
</board>
</drawing>
</eagle>
"""


if __name__ == "__main__":
    sch = gs.build()
    P = placements()
    W = pads_world(sch, P)
    problems = check(sch, P, W)
    for p in problems:
        print("CHECK:", p)
    with open(OUT, "w") as fh:
        fh.write(build_xml(sch, P))
    print(f"wrote {OUT}: {BOARD_W:.1f} x {BOARD_H:.1f} mm, {len(P)} parts, {len(sch.nets)} signals, "
          f"{len(problems)} check problems")
