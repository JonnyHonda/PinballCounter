# Pinball Counter

An 8-digit decimal score counter built entirely from 74LS-series TTL logic.
Each digit has its own trigger input, so a pinball switch can add 1, 10, 100,
... directly. Digits carry into the next digit like electromechanical score
reels: when a digit goes 9 → 0, it adds 1 to the digit on its left.

## Files

| File | What it is |
|---|---|
| `PinballCounter.sch` | Autodesk EAGLE 9.x schematic (3 sheets, embedded library `pinball_ttl`) |
| `gen_schematic.py` | Python 3 script that generates the schematic. Edit this, then rerun it; don't hand-edit the `.sch` file if you want to keep regenerating it. |

Regenerate with:

```sh
python3 gen_schematic.py
```

The script runs a self-check (every symbol pin maps to a pad, no pad is used
twice, no net has only one connection). It prints any problems before writing
the file.

> **Status:** the schematic has not yet been opened in EAGLE. It parses as
> valid XML and passes the script's self-check, and rendered previews show a
> clean layout. The first step in EAGLE should be an ERC run (see *Known
> ERC warnings*).

## How it works

Signal path for each digit *n* (digit 1 = ones, digit 8 = ten-millions):

```
 Switch ──► 74LS221 one-shot ──► TRIGn ─┐
 (to GND)   (~23 ms, active low)        ├─► 74LS08 AND ─► CLKn ─► CPU  74LS192  Q0-Q3 ─► 74LS47 ─► 330R ×7 ─► 7-seg (CA)
 CARRY(n-1) from digit n-1 ─────────────┘                               /TCU ─► CARRYn (to digit n+1)
```

- **Debounce:** pinball switches bounce. Each input drives the falling-edge
  trigger (`/A`) of a non-retriggerable 74LS221 one-shot. Each one-shot outputs
  a single clean low pulse of width ≈ 0.7 × R × C = 0.7 × 33 kΩ × 1 µF ≈ 23 ms.
- **Trigger and carry merge:** the 74LS192 counts up on the *rising* edge of
  `CPU`. Its carry output `/TCU` is normally HIGH and goes LOW only when the
  count is 9 and `CPU` is low. When `CPU` rises, the counter goes to 0 and
  `/TCU` rises with it. The trigger and the carry both idle HIGH and pulse
  LOW, so ANDing them means either one pulls the clock low, and the return to
  HIGH counts one step.
- **Digit 1** has no carry in, so its AND input B is tied to VCC.
- **Display:** a 74LS47 (open-collector BCD → 7-segment decoder) drives a
  common-anode display through 330 Ω resistors, at about 9 mA per segment.
  There's no multiplexing; every digit is driven continuously.
- **Leading-zero blanking:** digit 8 `/RBI` = GND. Each digit's `/BI/RBO`
  feeds the `/RBI` of the digit below it, and digit 1 `/RBI` = VCC. A score
  of 0 therefore shows a single "0", and 1234 shows as `    1234`.
- **Reset:** the S1 pushbutton (to GND) and a 10 µF / 4.7 kΩ RC give a
  manual reset and a power-on reset. A 74LS14 Schmitt inverter turns this
  into an active-high `RESET` that drives `MR` on all eight 74LS192s.
  (Driving eight LS inputs from a gate avoids needing a very small pull-down
  resistor.)

## Schematic sheets

1. **Inputs, debounce, reset, power:** J1, J2, U19–U22 (74LS221), R1–R16,
   C1–C8, S1, R73, C9, U23 (74LS14), decoupling C10–C33.
2. **Counter chain:** U1–U8 (74LS192, one per digit) and U17–U18 (74LS08).
3. **Decoders and displays:** U9–U16 (74LS47), R17–R72 (segment resistors),
   DS1–DS8.

Connections use short wire stubs with **net labels**. Pins with the same
label are connected, including across sheets.

### Net naming

| Net | Meaning |
|---|---|
| `SWn` | Raw switch input n (J1 pin n, with pull-up) |
| `CXn`, `RCXn` | 74LS221 timing capacitor/resistor nodes for channel n |
| `TRIGn` | Debounced trigger pulse for digit n (active low) |
| `CARRYn` | 74LS192 `/TCU` of digit n → AND gate of digit n+1 |
| `CLKn` | Clock into `CPU` of digit n |
| `Dn_Q0`–`Dn_Q3` | BCD output of digit n |
| `Dn_SEGA`–`G` | 74LS47 output (before resistor) |
| `Dn_LEDA`–`G` | Display segment (after resistor) |
| `RBOn` | Blanking output of digit n → `/RBI` of digit n-1 |
| `RST_N`, `RESET` | Reset button node (active low) / buffered reset (active high) |

## Bill of materials

| Ref | Qty | Part | Notes |
|---|---|---|---|
| U1–U8 | 8 | 74LS192 | BCD up/down counter, DIP-16 |
| U9–U16 | 8 | 74LS47 | BCD → 7-seg decoder/driver, open collector, DIP-16 |
| U17–U18 | 2 | 74LS08 | Quad 2-input AND, DIP-14 |
| U19–U22 | 4 | 74LS221 | Dual monostable, DIP-16 |
| U23 | 1 | 74LS14 | Hex Schmitt inverter, DIP-14 |
| DS1–DS8 | 8 | 0.56" common-anode 7-seg | 5161BS / SA56-11 pinout |
| R1–R8 | 8 | 4.7 kΩ | Switch pull-ups |
| R9–R16 | 8 | 33 kΩ | One-shot timing |
| R17–R72 | 56 | 330 Ω | Segment current limiting |
| R73 | 1 | 4.7 kΩ | Reset pull-up |
| C1–C8 | 8 | 1 µF ceramic | One-shot timing (non-polarised) |
| C9 | 1 | 10 µF electrolytic | Power-on reset, pin 1 = + |
| C10–C32 | 23 | 100 nF ceramic | Decoupling, one per IC |
| C33 | 1 | 100 µF electrolytic | Bulk supply, pin 1 = + |
| S1 | 1 | 6 mm tactile switch | Reset |
| J1 | 1 | 1×10 header | SW1–SW8, GND, GND |
| J2 | 1 | 1×2 header | +5 V, GND |

**Power:** 5 V regulated, at least 1 A. All segments lit draws about 600 mA
for the LEDs plus about 300 mA for the logic.

## Chip pinouts used (DIP)

**74LS192:** 1 P1 · 2 Q1 · 3 Q0 · 4 CPD · 5 CPU · 6 Q2 · 7 Q3 · 8 GND ·
9 P3 · 10 P2 · 11 /PL · 12 /TCU · 13 /TCD · 14 MR · 15 P0 · 16 VCC

- CPU = CLKn
- CPD and /PL = VCC
- P0–P3 = GND
- MR = RESET
- /TCD is unused

**74LS47:** 1 B · 2 C · 3 /LT · 4 /BI/RBO · 5 /RBI · 6 D · 7 A · 8 GND ·
9 e · 10 d · 11 c · 12 b · 13 a · 14 g · 15 f · 16 VCC

- /LT = VCC

**74LS08:** gate g (1–4) of U17 serves digit g, and gate g of U18 serves
digit 4+g. Input A = TRIG, input B = CARRY of the previous digit, output
Y = CLK.

**74LS221:** 1 /1A · 2 1B · 3 /1CLR · 4 /1Q · 5 2Q · 6 2Cext · 7 2Rext/Cext ·
8 GND · 9 /2A · 10 2B · 11 /2CLR · 12 /2Q · 13 1Q · 14 1Cext ·
15 1Rext/Cext · 16 VCC

- B and /CLR = VCC
- Q outputs are unused
- U19 serves digits 1–2, U20 digits 3–4, U21 digits 5–6, and U22 digits 7–8

**7-segment (5161BS):** 1 e · 2 d · 3 CA · 4 c · 5 dp · 6 b · 7 a · 8 CA ·
9 f · 10 g

## Known limitations

- **Simultaneous hits:** if a digit's own trigger overlaps an incoming carry
  pulse, the two LOW pulses merge and one count is lost. With ~23 ms pulses
  this is rare. Electromechanical machines behave the same way.
- **Minimum time between hits** on the same input is about the one-shot pulse
  width (23 ms). Change R9–R16 / C1–C8 to adjust it. The 74LS221 needs Rext
  between 1.4 kΩ and 100 kΩ.
- **Overflow:** past 99,999,999 the counter wraps to 0. `/TCU` of U8 is
  unconnected and could drive an overflow LED.
- **Logic families:** don't mix 74HC with 74LS. If you substitute parts, use
  74HCT.

## Known ERC warnings (expected)

These pins are deliberately left unconnected:

- 74LS192 `/TCD` on all digits, and `/TCU` on U8
- 74LS221 `1Q` and `2Q`
- 74LS47 `/BI/RBO` on digits 1 and 2
- Display `DP` pins

## Possible next steps

- [ ] Open in EAGLE, run ERC, and fix any import issues
- [ ] Breadboard one or two digits to confirm the trigger/carry timing
- [ ] Add an overflow LED on U8 `/TCU`
- [ ] Board layout (`.brd`)
- [ ] Optional: a multiplexed display version to reduce the chip count
