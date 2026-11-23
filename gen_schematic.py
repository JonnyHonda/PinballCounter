#!/usr/bin/env python3
"""
Generate PinballCounter.sch - an Autodesk EAGLE (9.x XML) schematic for an
8-digit, individually-triggerable decade counter built from 74LS-series TTL.

Per digit n (1 = ones ... 8 = ten-millions):
  switch -> 74LS221 one-shot (debounce) -> 74LS08 AND (merge with carry from
  digit n-1) -> 74LS192 CPU -> 74LS47 -> 330R x7 -> common-anode 7-seg.
  74LS192 /TCU -> carry into digit n+1.

Sheet 1: inputs, debounce, reset, power, decoupling
Sheet 2: counter chain
Sheet 3: decoders and displays

Connections are made with short net stubs + net labels (same name = same
net, across sheets too). Run:  python3 gen_schematic.py
"""
from xml.sax.saxutils import escape, quoteattr

U = 2.54            # 0.1 inch grid, mm
STUB = 2 * U        # net stub length
OUT = "PinballCounter.sch"


def f(v):
    return f"{round(v, 4):g}"


# ---------------------------------------------------------------- library --

class Package:
    def __init__(self, name, pads, outline):
        self.name, self.pads, self.outline = name, pads, outline

    def xml(self):
        s = [f'<package name="{self.name}">']
        for (n, x, y, shape, rot) in self.pads:
            r = f' rot="{rot}"' if rot else ""
            s.append(f'<pad name="{n}" x="{f(x)}" y="{f(y)}" drill="0.8" shape="{shape}"{r}/>')
        s += self.outline
        s.append(f'<text x="0" y="{f(self.text_y)}" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>')
        s.append("</package>")
        return "\n".join(s)


def rect(x1, y1, x2, y2, layer, width=0.254):
    return [f'<wire x1="{f(a)}" y1="{f(b)}" x2="{f(c)}" y2="{f(d)}" width="{width}" layer="{layer}"/>'
            for (a, b, c, d) in [(x1, y1, x2, y1), (x2, y1, x2, y2), (x2, y2, x1, y2), (x1, y2, x1, y1)]]


def dip(n):
    half = n // 2
    x0 = -(half - 1) * U / 2
    pads = [(str(i + 1), x0 + i * U, -3.81, "long", "R90") for i in range(half)]
    pads += [(str(half + i + 1), -x0 - i * U, 3.81, "long", "R90") for i in range(half)]
    w = half * U / 2
    p = Package(f"DIP{n}", pads, rect(-w, -2.8, w, 2.8, 21))
    p.text_y = 5.5
    return p


def seg_pkg():
    # 0.56" single-digit common-anode display, 10 pins, 0.6" row spacing
    # (5161BS / SA56-11 style): 1 e,2 d,3 CA,4 c,5 dp,6 b,7 a,8 CA,9 f,10 g
    pads = [(str(i + 1), -2 * U + i * U, -3 * U, "long", "R90") for i in range(5)]
    pads += [(str(6 + i), 2 * U - i * U, 3 * U, "long", "R90") for i in range(5)]
    p = Package("7SEG-056", pads, rect(-6.35, -9.5, 6.35, 9.5, 21))
    p.text_y = 10.5
    return p


def header(n):
    x0 = -(n - 1) * U / 2
    pads = [(str(i + 1), x0 + i * U, 0, "long", "R90") for i in range(n)]
    w = n * U / 2
    p = Package(f"1X{n:02d}", pads, rect(-w, -1.27, w, 1.27, 21))
    p.text_y = 2.5
    return p


def two_pad(name, pitch, w, h):
    p = Package(name, [("1", -pitch / 2, 0, "round", None), ("2", pitch / 2, 0, "round", None)],
                rect(-w / 2, -h / 2, w / 2, h / 2, 21))
    p.text_y = h / 2 + 0.8
    return p


def tact():
    pads = [("1", -3.25, 2.25, "round", None), ("2", 3.25, 2.25, "round", None),
            ("3", -3.25, -2.25, "round", None), ("4", 3.25, -2.25, "round", None)]
    p = Package("TACT6MM", pads, rect(-3, -3, 3, 3, 21))
    p.text_y = 3.8
    return p


class Symbol:
    def __init__(self, name, pins, drawing):
        # pins: list of (name, x, y, rot, length, direction, visible)
        self.name, self.pins, self.drawing = name, pins, drawing
        self.pinpos = {p[0]: (p[1], p[2]) for p in pins}

    def xml(self):
        s = [f'<symbol name="{self.name}">']
        s += self.drawing
        for (n, x, y, rot, length, d, vis) in self.pins:
            r = f' rot="{rot}"' if rot else ""
            v = f' visible="{vis}"' if vis else ""
            s.append(f'<pin name={quoteattr(n)} x="{f(x)}" y="{f(y)}"{v} length="{length}" direction="{d}"{r}/>')
        s.append("</symbol>")
        return "\n".join(s)


def box_symbol(name, left, right):
    """left/right: lists of (pin_name, direction). Pins on 0.1" grid."""
    n = max(len(left), len(right))
    top = ((n - 1) // 2) * U
    bot = top - (n - 1) * U
    pins = [(p, -5 * U, top - i * U, None, "middle", d, None) for i, (p, d) in enumerate(left)]
    pins += [(p, 5 * U, top - i * U, "R180", "middle", d, None) for i, (p, d) in enumerate(right)]
    draw = rect(-3 * U, top + U, 3 * U, bot - U, 94, 0.4064)
    draw.append(f'<text x="{f(-3 * U)}" y="{f(top + U + 0.5)}" size="1.778" layer="95">&gt;NAME</text>')
    draw.append(f'<text x="{f(-3 * U)}" y="{f(bot - U - 2.5)}" size="1.778" layer="96">&gt;VALUE</text>')
    return Symbol(name, pins, draw)


def two_pin_symbol(name, body):
    pins = [("1", -2 * U, 0, None, "short", "pas", "off"),
            ("2", 2 * U, 0, "R180", "short", "pas", "off")]
    body = body + [
        f'<text x="{f(-U)}" y="{f(1.8)}" size="1.778" layer="95">&gt;NAME</text>',
        f'<text x="{f(-U)}" y="{f(-3.6)}" size="1.778" layer="96">&gt;VALUE</text>']
    return Symbol(name, pins, body)


def w(x1, y1, x2, y2, layer=94, width=0.254):
    return f'<wire x1="{f(x1)}" y1="{f(y1)}" x2="{f(x2)}" y2="{f(y2)}" width="{width}" layer="{layer}"/>'


SYM_R = two_pin_symbol("R", rect(-U, -0.889, U, 0.889, 94))
SYM_C = two_pin_symbol("C", [w(-U, 0, -0.508, 0), w(0.508, 0, U, 0),
                             w(-0.508, -1.524, -0.508, 1.524, 94, 0.4064),
                             w(0.508, -1.524, 0.508, 1.524, 94, 0.4064)])
SYM_SW = two_pin_symbol("PUSHBUTTON", [w(-U, 0, 2.032, 1.524), w(-1.27, 2.54, 1.27, 2.54),
                                       w(0, 2.54, 0, 1.0)])

SYM_192 = box_symbol("74LS192", [("CPU", "in"), ("CPD", "in"), ("!PL", "in"), ("MR", "in"),
                                 ("P0", "in"), ("P1", "in"), ("P2", "in"), ("P3", "in"),
                                 ("VCC", "pwr"), ("GND", "pwr")],
                     [("Q0", "out"), ("Q1", "out"), ("Q2", "out"), ("Q3", "out"),
                      ("!TCU", "out"), ("!TCD", "out")])
SYM_47 = box_symbol("74LS47", [("A", "in"), ("B", "in"), ("C", "in"), ("D", "in"),
                               ("!LT", "in"), ("!RBI", "in"), ("VCC", "pwr"), ("GND", "pwr")],
                    [("SEG_A", "oc"), ("SEG_B", "oc"), ("SEG_C", "oc"), ("SEG_D", "oc"),
                     ("SEG_E", "oc"), ("SEG_F", "oc"), ("SEG_G", "oc"), ("!BI/!RBO", "io")])
SYM_08 = box_symbol("74LS08", [("1A", "in"), ("1B", "in"), ("2A", "in"), ("2B", "in"),
                               ("3A", "in"), ("3B", "in"), ("4A", "in"), ("4B", "in"),
                               ("VCC", "pwr"), ("GND", "pwr")],
                    [("1Y", "out"), ("2Y", "out"), ("3Y", "out"), ("4Y", "out")])
SYM_221 = box_symbol("74LS221", [("!1A", "in"), ("1B", "in"), ("!1CLR", "in"), ("1CEXT", "pas"),
                                 ("1REXT/CEXT", "pas"), ("!2A", "in"), ("2B", "in"), ("!2CLR", "in"),
                                 ("2CEXT", "pas"), ("2REXT/CEXT", "pas"), ("VCC", "pwr"), ("GND", "pwr")],
                     [("1Q", "out"), ("!1Q", "out"), ("2Q", "out"), ("!2Q", "out")])
SYM_14 = box_symbol("74LS14", [("1A", "in"), ("2A", "in"), ("3A", "in"), ("4A", "in"),
                               ("5A", "in"), ("6A", "in"), ("VCC", "pwr"), ("GND", "pwr")],
                    [("1Y", "out"), ("2Y", "out"), ("3Y", "out"), ("4Y", "out"),
                     ("5Y", "out"), ("6Y", "out")])
SYM_7SEG = box_symbol("7SEG-CA", [("A", "pas"), ("B", "pas"), ("C", "pas"), ("D", "pas"),
                                  ("E", "pas"), ("F", "pas"), ("G", "pas"), ("DP", "pas")],
                      [("CA", "pas")])
SYM_HDR10 = box_symbol("HEADER-10", [], [(str(i), "pas") for i in range(1, 11)])
SYM_HDR2 = box_symbol("HEADER-2", [], [("1", "pas"), ("2", "pas")])

PKG = {p.name: p for p in [dip(14), dip(16), seg_pkg(), header(10), header(2), tact(),
                           two_pad("0207/10", 10.16, 6.5, 2.4),
                           two_pad("C2.5", 2.54, 4.0, 2.4),
                           two_pad("E2.5-6", 2.54, 6.0, 6.0)]}


class DeviceSet:
    def __init__(self, name, prefix, symbol, devices, uservalue=False, desc=""):
        # devices: list of (device_name, package_name, {pin: "pads"})
        self.name, self.prefix, self.symbol = name, prefix, symbol
        self.devices, self.uservalue, self.desc = devices, uservalue, desc

    def xml(self):
        uv = ' uservalue="yes"' if self.uservalue else ""
        s = [f'<deviceset name="{self.name}" prefix="{self.prefix}"{uv}>',
             f"<description>{escape(self.desc)}</description>",
             f'<gates><gate name="G$1" symbol="{self.symbol.name}" x="0" y="0"/></gates>', "<devices>"]
        for (dn, pk, con) in self.devices:
            s.append(f'<device name="{dn}" package="{pk}"><connects>')
            for pin, pads in con.items():
                s.append(f'<connect gate="G$1" pin={quoteattr(pin)} pad="{pads}"/>')
            s.append('</connects><technologies><technology name=""/></technologies></device>')
        s.append("</devices></deviceset>")
        return "\n".join(s)


def pins_by_number(mapping):
    return {pin: str(pad) for pin, pad in mapping.items()}


DS = {
    "74LS192": DeviceSet("74LS192", "U", SYM_192, [("N", "DIP16", pins_by_number({
        "P1": 1, "Q1": 2, "Q0": 3, "CPD": 4, "CPU": 5, "Q2": 6, "Q3": 7, "GND": 8, "P3": 9,
        "P2": 10, "!PL": 11, "!TCU": 12, "!TCD": 13, "MR": 14, "P0": 15, "VCC": 16}))],
        desc="Synchronous BCD up/down decade counter"),
    "74LS47": DeviceSet("74LS47", "U", SYM_47, [("N", "DIP16", pins_by_number({
        "B": 1, "C": 2, "!LT": 3, "!BI/!RBO": 4, "!RBI": 5, "D": 6, "A": 7, "GND": 8,
        "SEG_E": 9, "SEG_D": 10, "SEG_C": 11, "SEG_B": 12, "SEG_A": 13, "SEG_G": 14,
        "SEG_F": 15, "VCC": 16}))], desc="BCD to 7-segment decoder/driver, open collector"),
    "74LS08": DeviceSet("74LS08", "U", SYM_08, [("N", "DIP14", pins_by_number({
        "1A": 1, "1B": 2, "1Y": 3, "2A": 4, "2B": 5, "2Y": 6, "GND": 7, "3Y": 8, "3A": 9,
        "3B": 10, "4Y": 11, "4A": 12, "4B": 13, "VCC": 14}))], desc="Quad 2-input AND"),
    "74LS221": DeviceSet("74LS221", "U", SYM_221, [("N", "DIP16", pins_by_number({
        "!1A": 1, "1B": 2, "!1CLR": 3, "!1Q": 4, "2Q": 5, "2CEXT": 6, "2REXT/CEXT": 7,
        "GND": 8, "!2A": 9, "2B": 10, "!2CLR": 11, "!2Q": 12, "1Q": 13, "1CEXT": 14,
        "1REXT/CEXT": 15, "VCC": 16}))], desc="Dual non-retriggerable monostable"),
    "74LS14": DeviceSet("74LS14", "U", SYM_14, [("N", "DIP14", pins_by_number({
        "1A": 1, "1Y": 2, "2A": 3, "2Y": 4, "3A": 5, "3Y": 6, "GND": 7, "4Y": 8, "4A": 9,
        "5Y": 10, "5A": 11, "6Y": 12, "6A": 13, "VCC": 14}))], desc="Hex Schmitt-trigger inverter"),
    "7SEG-CA": DeviceSet("7SEG-CA", "DS", SYM_7SEG, [("", "7SEG-056", {
        "E": "1", "D": "2", "CA": "3 8", "C": "4", "DP": "5", "B": "6", "A": "7",
        "F": "9", "G": "10"})], uservalue=True,
        desc="0.56in common-anode 7-segment display (5161BS / SA56-11 pinout)"),
    "HEADER-10": DeviceSet("HEADER-10", "J", SYM_HDR10, [("", "1X10", {str(i): str(i) for i in range(1, 11)})],
                           desc="1x10 0.1in header"),
    "HEADER-2": DeviceSet("HEADER-2", "J", SYM_HDR2, [("", "1X02", {"1": "1", "2": "2"})],
                          desc="1x2 0.1in header"),
    "R": DeviceSet("R", "R", SYM_R, [("", "0207/10", {"1": "1", "2": "2"})], uservalue=True,
                   desc="Resistor"),
    "C": DeviceSet("C", "C", SYM_C, [("", "C2.5", {"1": "1", "2": "2"})], uservalue=True,
                   desc="Capacitor, non-polarised"),
    "CPOL": DeviceSet("CPOL", "C", SYM_C, [("", "E2.5-6", {"1": "1", "2": "2"})], uservalue=True,
                      desc="Electrolytic capacitor, pin 1 = +"),
    "PUSHBUTTON": DeviceSet("PUSHBUTTON", "S", SYM_SW, [("", "TACT6MM", {"1": "1 2", "2": "3 4"})],
                            desc="6mm tactile switch"),
}
SYMBOLS = [SYM_R, SYM_C, SYM_SW, SYM_192, SYM_47, SYM_08, SYM_221, SYM_14, SYM_7SEG, SYM_HDR10, SYM_HDR2]

# -------------------------------------------------------------- schematic --


class Sch:
    def __init__(self):
        self.parts = {}            # name -> (deviceset, device, value)
        self.sheets = []           # list of dict(instances, plain)
        self.nets = {}             # net -> list of (sheet, part, pin, x, y)

    def sheet(self, title):
        self.sheets.append({"inst": [], "plain": [
            f'<text x="0" y="{f(110 * U)}" size="5.08" layer="97">{escape(title)}</text>']})
        return len(self.sheets) - 1

    def note(self, sh, x, y, text):
        self.sheets[sh]["plain"].append(
            f'<text x="{f(x * U)}" y="{f(y * U)}" size="2.1844" layer="97">{escape(text)}</text>')

    def place(self, sh, name, ds, value=None, x=0, y=0, conns=None):
        """x, y in 0.1in grid units. conns: {pin: net}."""
        dset = DS[ds]
        self.parts[name] = (ds, dset.devices[0][0], value or ds)
        X, Y = x * U, y * U
        self.sheets[sh]["inst"].append(f'<instance part="{name}" gate="G$1" x="{f(X)}" y="{f(Y)}"/>')
        for pin, net in (conns or {}).items():
            if net is None:
                continue
            px, py = dset.symbol.pinpos[pin]
            self.nets.setdefault(net, []).append((sh, name, pin, X + px, Y + py))

    def xml(self):
        lib = ['<library name="pinball_ttl">', "<packages>"]
        lib += [p.xml() for p in PKG.values()]
        lib += ["</packages>", "<symbols>"] + [s.xml() for s in SYMBOLS] + ["</symbols>", "<devicesets>"]
        lib += [d.xml() for d in DS.values()] + ["</devicesets>", "</library>"]

        parts = [f'<part name="{n}" library="pinball_ttl" deviceset="{ds}" device="{dev}" value={quoteattr(v)}/>'
                 for n, (ds, dev, v) in self.parts.items()]

        sheets = []
        for si, sh in enumerate(self.sheets):
            nets = []
            for net, refs in sorted(self.nets.items()):
                segs = []
                for (s, part, pin, x, y) in refs:
                    if s != si:
                        continue
                    left = x < 0 or self._is_left(part, pin)
                    x2 = x - STUB if left else x + STUB
                    rot = ' rot="R180"' if left else ""
                    segs.append(
                        f'<segment><pinref part="{part}" gate="G$1" pin={quoteattr(pin)}/>'
                        f'<wire x1="{f(x)}" y1="{f(y)}" x2="{f(x2)}" y2="{f(y)}" width="0.1524" layer="91"/>'
                        f'<label x="{f(x2)}" y="{f(y)}" size="1.778" layer="95"{rot}/></segment>')
                if segs:
                    nets.append(f'<net name={quoteattr(net)} class="0">' + "".join(segs) + "</net>")
            sheets.append("<sheet><plain>" + "".join(sh["plain"]) + "</plain><instances>"
                          + "\n".join(sh["inst"]) + "</instances><busses/><nets>\n"
                          + "\n".join(nets) + "\n</nets></sheet>")

        layers = [(1, "Top", 4), (16, "Bottom", 1), (17, "Pads", 2), (18, "Vias", 2),
                  (19, "Unrouted", 6), (20, "Dimension", 15), (21, "tPlace", 7), (22, "bPlace", 7),
                  (25, "tNames", 7), (26, "bNames", 7), (27, "tValues", 7), (28, "bValues", 7),
                  (51, "tDocu", 7), (91, "Nets", 2), (92, "Busses", 1), (93, "Pins", 2),
                  (94, "Symbols", 4), (95, "Names", 7), (96, "Values", 7), (97, "Info", 7),
                  (98, "Guide", 6)]
        lay = "".join(f'<layer number="{n}" name="{nm}" color="{c}" fill="1" visible="yes" active="yes"/>'
                      for n, nm, c in layers)
        return f"""<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings><setting alwaysvectorfont="no"/><setting verticaltext="up"/></settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>{lay}</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<description>8-digit individually-triggered 74LS TTL pinball score counter</description>
<libraries>
{chr(10).join(lib)}
</libraries>
<attributes/>
<variantdefs/>
<classes><class number="0" name="default" width="0" drill="0"/></classes>
<parts>
{chr(10).join(parts)}
</parts>
<sheets>
{chr(10).join(sheets)}
</sheets>
</schematic>
</drawing>
</eagle>
"""

    def _is_left(self, part, pin):
        ds = DS[self.parts[part][0]]
        return ds.symbol.pinpos[pin][0] < 0


def build():
    s = Sch()
    VCC, GND = "VCC", "GND"
    pwr = {"VCC": VCC, "GND": GND}

    # ---------------- sheet 1: inputs, debounce, reset, power ----------------
    s1 = s.sheet("Pinball Counter - Sheet 1: Inputs, debounce, reset, power")
    s.note(s1, 0, 104, "Switch inputs close to GND. 74LS221 gives a ~23 ms active-low pulse (0.7 x 33k x 1uF).")
    s.note(s1, 0, 100, "Reset: button or power-on (10uF/4.7k) -> 74LS14 -> RESET (active high) to all 74LS192 MR.")

    s.place(s1, "J1", "HEADER-10", "SWITCHES", 10, 80,
            {**{str(n): f"SW{n}" for n in range(1, 9)}, "9": GND, "10": GND})
    s.place(s1, "J2", "HEADER-2", "+5V IN", 10, 55, {"1": VCC, "2": GND})

    for k in range(4):                       # U19..U22: 74LS221 (2 channels each)
        a, b = 2 * k + 1, 2 * k + 2
        s.place(s1, f"U{19 + k}", "74LS221", None, 45, 80 - 20 * k, {
            "!1A": f"SW{a}", "1B": VCC, "!1CLR": VCC, "1CEXT": f"CX{a}", "1REXT/CEXT": f"RCX{a}",
            "!1Q": f"TRIG{a}", "1Q": None,
            "!2A": f"SW{b}", "2B": VCC, "!2CLR": VCC, "2CEXT": f"CX{b}", "2REXT/CEXT": f"RCX{b}",
            "!2Q": f"TRIG{b}", "2Q": None, **pwr})

    for i in range(8):
        n = i + 1
        y = 85 - 4 * i
        s.place(s1, f"R{n}", "R", "4.7k", 75, y, {"1": VCC, "2": f"SW{n}"})        # pull-up
        s.place(s1, f"R{8 + n}", "R", "33k", 95, y, {"1": VCC, "2": f"RCX{n}"})    # timing R
        s.place(s1, f"C{n}", "C", "1uF", 115, y, {"1": f"CX{n}", "2": f"RCX{n}"})  # timing C

    s.place(s1, "S1", "PUSHBUTTON", "RESET", 140, 88, {"1": "RST_N", "2": GND})
    s.place(s1, "R73", "R", "4.7k", 140, 82, {"1": VCC, "2": "RST_N"})
    s.place(s1, "C9", "CPOL", "10uF", 140, 76, {"1": "RST_N", "2": GND})
    s.place(s1, "U23", "74LS14", None, 172, 82, {
        "1A": "RST_N", "1Y": "RESET", "2A": GND, "3A": GND, "4A": GND, "5A": GND, "6A": GND, **pwr})

    s.note(s1, 135, 66, "Decoupling: one 100nF per IC, close to pin VCC")
    for i in range(23):                       # C10..C32 decoupling, C33 bulk
        col, row = divmod(i, 12)
        s.place(s1, f"C{10 + i}", "C", "100nF", 140 + 32 * col, 60 - 4 * row, {"1": VCC, "2": GND})
    s.place(s1, "C33", "CPOL", "100uF", 172, 60 - 4 * 11, {"1": VCC, "2": GND})

    # ---------------- sheet 2: counter chain ----------------
    s2 = s.sheet("Pinball Counter - Sheet 2: Counter chain (74LS192 + 74LS08)")
    s.note(s2, 0, 104, "CLKn = TRIGn AND CARRY(n-1). Both idle HIGH, pulse LOW; 74LS192 counts on the rising edge.")
    s.note(s2, 0, 100, "Digit 1 = ones (rightmost display). CARRY8 = overflow (unused / optional LED).")

    for i in range(8):
        n = i + 1
        s.place(s2, f"U{n}", "74LS192", None, 20 + 40 * (i % 4), 80 - 28 * (i // 4), {
            "CPU": f"CLK{n}", "CPD": VCC, "!PL": VCC, "MR": "RESET",
            "P0": GND, "P1": GND, "P2": GND, "P3": GND,
            "Q0": f"D{n}_Q0", "Q1": f"D{n}_Q1", "Q2": f"D{n}_Q2", "Q3": f"D{n}_Q3",
            "!TCU": f"CARRY{n}" if n < 8 else None, "!TCD": None, **pwr})
    for k in range(2):                        # U17, U18: 74LS08
        c = {}
        for g in range(4):
            n = 4 * k + g + 1
            c[f"{g + 1}A"] = f"TRIG{n}"
            c[f"{g + 1}B"] = VCC if n == 1 else f"CARRY{n - 1}"
            c[f"{g + 1}Y"] = f"CLK{n}"
        s.place(s2, f"U{17 + k}", "74LS08", None, 20 + 40 * k, 25, {**c, **pwr})

    # ---------------- sheet 3: decoders + displays ----------------
    s3 = s.sheet("Pinball Counter - Sheet 3: Decoders (74LS47) and displays")
    s.note(s3, 0, 104, "Leading-zero blanking: RBI of digit 8 = GND, RBO(n) -> RBI(n-1), digit 1 RBI = VCC (always shows 0).")
    s.note(s3, 0, 100, "Segment resistors 330R (~9 mA/segment). Displays: common anode 0.56in, e.g. 5161BS.")

    segs = "ABCDEFG"
    for i in range(8):
        n = i + 1
        x0, y0 = 15 + 75 * (i % 4), 80 - 38 * (i // 4)
        rbi = GND if n == 8 else (VCC if n == 1 else f"RBO{n + 1}")
        rbo = f"RBO{n}" if n > 2 else None
        conn = {"A": f"D{n}_Q0", "B": f"D{n}_Q1", "C": f"D{n}_Q2", "D": f"D{n}_Q3",
                "!LT": VCC, "!RBI": rbi, "!BI/!RBO": rbo, **pwr}
        conn.update({f"SEG_{c}": f"D{n}_SEG{c}" for c in segs})
        s.place(s3, f"U{8 + n}", "74LS47", None, x0, y0, conn)
        for j, c in enumerate(segs):
            s.place(s3, f"R{17 + 7 * i + j}", "R", "330", x0 + 25, y0 + 12 - 4 * j,
                    {"1": f"D{n}_SEG{c}", "2": f"D{n}_LED{c}"})
        dc = {c: f"D{n}_LED{c}" for c in segs}
        dc.update({"CA": VCC, "DP": None})
        s.place(s3, f"DS{n}", "7SEG-CA", "5161BS", x0 + 50, y0, dc)

    return s


def selfcheck(s):
    errs = []
    for name, (ds, dev, _) in s.parts.items():
        d = DS[ds]
        pk = PKG[[x for x in d.devices if x[0] == dev][0][1]]
        padnames = {p[0] for p in pk.pads}
        con = [x for x in d.devices if x[0] == dev][0][2]
        for pin in d.symbol.pinpos:
            if pin not in con:
                errs.append(f"{ds}: pin {pin} has no pad")
        used = []
        for pads in con.values():
            for p in pads.split():
                if p not in padnames:
                    errs.append(f"{ds}: pad {p} missing from {pk.name}")
                used.append(p)
        if len(used) != len(set(used)):
            errs.append(f"{ds}: pad used twice")
    for net, refs in s.nets.items():
        if len(refs) < 2:
            errs.append(f"net {net} has only one connection: {refs}")
    return errs


if __name__ == "__main__":
    sch = build()
    problems = selfcheck(sch)
    for p in problems:
        print("CHECK:", p)
    with open(OUT, "w") as fh:
        fh.write(sch.xml())
    print(f"wrote {OUT}: {len(sch.parts)} parts, {len(sch.nets)} nets, {len(sch.sheets)} sheets")
