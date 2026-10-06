# Max/MSP Abstraction:   
## br.am.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.am.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.am](https://github.com/guaguanco127/br.am)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Table of Contents 

[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[Example Patch](#Example)  
 
 

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

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install 

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy and paste br.am.1.0.maxpat inside of the same folder as the Max patch you are using.

3. To use the built-in dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the br.am.1.0.maxpat located within the same folder as your project. Size the bpatcher to 155 x 79 to show all of the controls.

4. Alternatively, create an object called br.am.1.0 (for example: [br.am.1.0], do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

The first two inlets are your stereo audio, and the third is the modulator. Every control has its own inlet after that, in the same order as the dials. Sending a value to an inlet moves its on-screen dial too, so the display always matches the sound. Hover over an inlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Modulator In | Signal | 0 to 1 (anything outside is clipped) | |
| 4 | Depth | Float | 0 - 1 | 1 |
| 5 | Ring | Float | 0 - 1 | 0 |
| 6 | Slew | Float | 0 - 1000 ms | 0 |

| Outlet | Name | Type |
|---|---|---|
| 1 | Left Out | Signal |
| 2 | Right Out | Signal |

For a mono sound, connect it to both Left In and Right In.

The modulator must move between 0 and 1. An LFO such as [cycle~] moves between -1 and 1, so scale it first: [*~ 0.5] into [+~ 0.5]. A square wave from 0 to 1 can be made with [phasor~] into [<~ 0.5].

If nothing is connected to the Modulator In, the modulator is 0, so at Depth 1 the output is silent (like a VCA with no control signal).

## <a name="Example"></a>Example Patch

Open _br.am.example.1.0.maxpat (keep it in the same folder as br.am.1.0.maxpat). Turn on the audio with the toggle, then raise the gain sliders, which start muted.

- **A (sine modulator):** At 4 Hz you hear tremolo. Set the modulator to about 300 Hz and turn Ring up to 1 to hear ring modulation. Turn Ring between 0 and 1 to hear the blend.
- **B (square modulator):** At Slew 0 the square tremolo clicks. Raise Slew to about 5 to 20 ms to hear the clicks go away.
