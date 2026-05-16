# Problem Maker

A handheld math quiz device built around the STC15W204S (8051-compatible) microcontroller. My little brother needed to practice arithmetic, so I built him something instead of downloading an app. Ten problems per session, four operations, rotary encoder input, HD44780 LCD output, and a timer running off Timer0 interrupts. All written from scratch in C with SDCC and no external libraries. `stc15.h` is self-written, defining the SFR addresses for the STC15W204S directly.

[![YouTube](https://img.shields.io/badge/YouTube-Watch%20Demo-red?logo=youtube)](https://www.youtube.com/watch?v=YTpI4UFTeAw)

---

## Hardware

| Part | Details |
|---|---|
| MCU | STC15W204S (8051 core, 5V, internal RC oscillator) |
| Display | HD44780-compatible 16x2 character LCD |
| Input | KY-040 rotary encoder (CLK, DT, SW) |
| Power | 3x AAA batteries (~4.5V) |
| Contrast | 10K potentiometer on LCD V0 pin |
| Enclosure | 3D printed |

### Pin Mapping

| Signal | MCU Pin | Direction |
|---|---|---|
| LCD RS | P1_2 | Output |
| LCD E | P1_4 | Output |
| LCD D4 | P1_1 | Output |
| LCD D5 | P1_0 | Output |
| LCD D6 | P3_7 | Output |
| LCD D7 | P3_6 | Output |
| Encoder DT | P1_5 | Input |
| Encoder CLK | P3_2 (INT0) | Input (interrupt) |
| Encoder SW | P5_4 | Input |

The LCD data nibble is split non-contiguously across P1 and P3. `LCD4to()` handles the routing manually, extracting bits 4 through 7 from the byte and writing each one to its correct port pin.

---

## Firmware Architecture

### LCD Driver

No LCD library. Three functions handle everything:

- `LCD4to(num)` shifts and masks the upper nibble of a byte onto the four non-contiguous data pins
- `com(data)` sends a command byte in two 4-bit transactions with RS low
- `dat(data)` sends a character byte in two 4-bit transactions with RS high

Each transaction pulses E high then low with `delay()` busy-loops in between. Display state lives in a `display[2][16]` buffer. `displayFlip()` flushes both rows to the LCD every frame, row 0 at DDRAM address `0x80` and row 1 at `0xC0`.

Initialization sequence in `setup()`:

```
0x02  return home
0x28  function set: 4-bit mode, 2 lines, 5x8 font
0x0E  display on, cursor on
0x06  entry mode: increment, no display shift
0x01  clear display
0x80  set DDRAM address to row 0, col 0
```

### Timer / Timekeeping

Timer0 runs in 16-bit mode (`TMOD = 0x11`) with reload value `TH0=0x10, TL0=0x00`. The ISR chains software counters: `e` (0 to 15) overflows into `sec` (0 to 9), into `tsec` (0 to 5), into `min` (0 to 9), into `tmin` (0 to 99). This gives a MM:SS readout with two digits per field. If `tmin` reaches 100, the `timeStuck` flag is set and the display shows "OVER" instead of elapsed time. The timer starts when the player selects a mode and stops (`TMOD = 0x00`) after all 10 questions are answered.

### Rotary Encoder

CLK is wired to INT0 (P3_2), so every falling edge triggers `exint0()`. A short `delay(3)` at the top of the ISR debounces the signal. DT is then sampled: if `DT == 0` the encoder moved clockwise and `turn` increments; if `DT == 1` it moved counterclockwise and `turn` decrements. `turn` is an `unsigned char` that wraps at 0 and 255. A `speed` counter in the main loop handles fast-scroll acceleration. If the encoder moves before `speed` resets, each detent steps by 2 instead of 1.

SW is polled, not interrupt-driven. `enter()` blocks until SW goes low then returns to high (full press-release cycle). In the menu, the MCU samples `rand()` continuously while SW is held down, giving a timing-based seed before the release is detected.

### Question Logic

Each operation has its own function (`add`, `sub`, `mult`, `div`). Each one validates `numA` and `numB` against operation-specific constraints in a `while` loop (addition: sum no greater than 100; subtraction: difference no less than 0; multiplication: product no greater than 144; division: `numA % numB == 0` for whole-number results only), then calls `writeQues()` to format the problem string into `display[0]`, inserting the operation symbol as a raw ASCII character and converting each digit via `+0x30`. `writeAnswer()` renders the current `turn` value and remaining question count into `display[1]`. On SW press (`answer == 1`), `turn` is compared to the correct result and "YES" or "NO" flashes on row 1 for approximately 70 delay units before clearing.

After each question, new operands are pre-generated in a `do...while` loop with the same constraints, so the next problem is ready the moment the current one is dismissed.

### End Screen

After 10 questions, `end()` computes `correctNum * 10` to produce a 0 to 100 percentage and reads the timer counters directly into the display buffer for the elapsed time. The player presses SW to return to the main menu, which resets all counters and stops the timer.

---

## Build and Flash

### Requirements

- [SDCC](http://sdcc.sourceforge.net) (Small Device C Compiler)
- [STC-ISP](https://www.stcmicro.com/rjlj.html) (Windows) or [stcgal](https://github.com/grigorig/stcgal) (Linux/macOS)

### Compile

```bash
sdcc -mmcs51 src/main.c -o src/main.ihx
```

A precompiled `main.ihx` is already in the repo if you just want to flash.

### Flash

**Windows (STC-ISP):**
1. Select chip: STC15W204S
2. Open `src/main.ihx`
3. Click Download, then power-cycle the MCU. STC chips enter ISP mode on power-on.

**Linux/macOS (stcgal):**
```bash
stcgal -p /dev/ttyUSB0 src/main.ihx
```
Run the command first, then power-cycle.

---

## Repo Structure

```
Problem-Maker/
├── src/
│   ├── main.c          # Full firmware source
│   └── main.ihx        # Compiled Intel HEX, ready to flash
├── images/
│   └── Schematic.jpg   # Hand-drawn wiring schematic
├── LICENSE
└── README.md
```

---

Built by Bohan Xu, 2025.
