# Max/MSP Abstraction:   
## br.am.1.1



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.am.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.am](https://github.com/guaguanco127/br.am)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Table of Contents 

[What's new in 1.1](#New11)  
[About](#About)   
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
 
 

## <a name="New11"></a>What's new in 1.1

- **Two files.** br.am.1.1 is now the plain object: no dials, and Depth, Ring and Slew go straight into gen~, so they take **signals** as well as numbers. Patch a slow LFO into Ring and br.am morphs between tremolo and ring modulation by itself. br.am.ui.1.1 is the version with dials, for a [bpatcher].
- New [State outlet](#State) on br.am.ui.1.1 (outlet 3, the last one): it sends the settings as named messages the moment they change.
- Smaller panel: 150 x 76.
- Inlets and the audio outlets are unchanged. If you used 1.0 in a [bpatcher], choose br.am.ui.1.1; if you used it as an object box, type br.am.1.1.
- The example patch now has tabs: **tremolo**, **ring mod** (with a spectroscope, and an LFO morphing the plain object) and **State outlet**.

## <a name="About"></a>About

A stereo Max/MSP abstraction for amplitude modulation that morphs smoothly into ring modulation. It multiplies your audio by a modulator, such as an LFO or an oscillator, moving between 0 and 1.

**Tremolo / AM:** With Ring at 0, the volume moves between silent and full. With a slow modulator (a few Hz) you hear tremolo. With an audio-rate modulator you hear new tones on either side of the original sound, and the original sound stays in.

**Ring modulation:** With Ring at 1, the modulator swings the signal from fully positive to fully negative. The original sound cancels out, and only the sum and difference tones are left: the metallic, bell-like sound of a ring modulator. Values in between blend the two, so the original sound is partly there.

**Depth** sets how much of the modulation you hear, from none (dry) to full. At every setting, the volume never goes above the volume of the input, so turning the controls never makes it louder.

**Slew** smooths the modulator so that square or stepped LFOs do not click. Turning Depth and Ring by hand also never clicks: they always glide over 20 ms.

### Controls

**Depth:** How much modulation you hear, from 0 to 1. At 0, the audio passes through unchanged. At 1, the modulation is at full strength. The default is 1.

**Ring:** Morphs from amplitude modulation to ring modulation, from 0 to 1. The default is 0.

| Ring | Volume swings between | What you hear |
|---|---|---|
| 0 | silent and full | Tremolo (slow modulator) or AM (audio-rate modulator). The original sound stays in. |
| 0.5 | partly | A blend: the original sound is partly cancelled. |
| 1 | full positive and full negative | Ring modulation. The original sound cancels; only the sum and difference tones are left. |

At Depth 1, the table above is the full effect. Lower Depth mixes the dry sound back in.

**Slew:** Smooths the modulator, in milliseconds, from 0 to 1000. 0 turns it off. The default is 0. A square LFO jumps instantly between 0 and 1, which clicks. A Slew of about 5 to 20 ms rounds off those jumps without making the tremolo feel soft. Larger values make the tremolo smoother and gentler.

Slew works by filtering the modulator, so it also filters out fast modulators. Keep it at 0 when you use an audio-rate modulator for AM or ring modulation, or the effect will fade away.

## <a name="Files"></a>Which file?

Both files have the same inlets and audio outlets in the same order, so either swaps in without rewiring:

| File | What it is |
|---|---|
| br.am.1.1 | The plain object, no UI. Depth, Ring and Slew take numbers or signals |
| br.am.ui.1.1 | The same effect with dials and a State outlet, ready for a [bpatcher]. Controls take numbers |
| _br.am.example.1.1 | Example patch: open this first |

br.am.ui.1.1 contains br.am.1.1, so keep both files together. Open br.am.ui.1.1 in patching mode to see how it is built.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install 

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy br.am.1.1.maxpat and br.am.ui.1.1.maxpat into the same folder as the Max patch you are using (br.am.ui.1.1 uses br.am.1.1).

3. For the version with dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select br.am.ui.1.1.maxpat. Size the bpatcher to 150 x 76 to show all of the controls.

4. For the plain object, create an object called br.am.1.1 (for example: [br.am.1.1], do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

The first two inlets are your stereo audio, and the third is the modulator. Every control has its own inlet after that, in the same order as the dials. On br.am.ui.1.1, sending a value to an inlet moves its on-screen dial too, so the display always matches the sound. On br.am.1.1, the control inlets also take signals. Hover over an inlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Modulator In | Signal | 0 to 1 (anything outside is clipped) | |
| 4 | Depth | Float (Signal on br.am.1.1) | 0 - 1 | 1 |
| 5 | Ring | Float (Signal on br.am.1.1) | 0 - 1 | 0 |
| 6 | Slew | Float (Signal on br.am.1.1) | 0 - 1000 ms | 0 |

| Outlet | Name | Type |
|---|---|---|
| 1 | Left Out | Signal |
| 2 | Right Out | Signal |
| 3 | State (br.am.ui.1.1 only): the settings as named messages, see [State outlet](#State) | Message |

For a mono sound, connect it to both Left In and Right In.

The modulator must move between 0 and 1. An LFO such as [cycle~] moves between -1 and 1, so scale it first: [*~ 0.5] into [+~ 0.5]. A square wave from 0 to 1 can be made with [phasor~] into [<~ 0.5].

If nothing is connected to the Modulator In, the modulator is 0, so at Depth 1 the output is silent (like a VCA with no control signal).

## <a name="State"></a>State outlet

The last outlet of br.am.ui.1.1 (State) sends the current settings as named messages the moment they change, for example `depth 1.`, `ring 0.5`, `slew 10.`. Moving a dial, numbers into the inlets and preset recalls all show up. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route depth ring slew], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| depth | Float | 0 to 1 |
| ring | Float | 0 to 1 |
| slew | Float | ms, 0 to 1000 |

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. The plain br.am.1.1 has no State outlet: whatever drives it already knows the values.

## <a name="Example"></a>Example Patch

Open _br.am.example.1.1.maxpat (keep it in the same folder as both br.am files). The first page introduces br.am; the tabs at the top hold the examples. Each tab has its own audio toggle and gain sliders, which start muted.

- **tremolo:** A (sine modulator): at 4 Hz you hear tremolo. B (square modulator): at Slew 0 the square tremolo clicks; raise Slew to about 5 to 20 ms to hear the clicks go away.
- **ring mod:** A sine source and an audio-rate sine modulator, each side with a spectroscope. Left: turn Ring on br.am.ui.1.1 and watch the source's peak disappear at Ring 1, leaving only the sum and difference tones. Right: the plain br.am.1.1 with a slow LFO on Ring, morphing between AM and ring modulation by itself.
- **State outlet:** The tremolo tab's settings (A), read by name with [route] into number boxes. Move a dial and its number follows.
