# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.am.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.am.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.am](https://github.com/guaguanco127/br.am)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Links

[About](#About)   
[Max/MSP Abstraction](https://github.com/guaguanco127/br.am/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   

This is a Max/MSP-only release (no Max for Live device).

## <a name="About"></a>About

A stereo Max/MSP abstraction for amplitude modulation that morphs smoothly into ring modulation. It multiplies your audio by a modulator, such as an LFO or an oscillator, moving between 0 and 1.

**Tremolo / AM:** With Ring at 0, the volume moves between silent and full. With a slow modulator (a few Hz) you hear tremolo. With an audio-rate modulator you hear new tones on either side of the original sound, and the original sound stays in.

**Ring modulation:** With Ring at 1, the modulator swings the signal from fully positive to fully negative. The original sound cancels out, and only the sum and difference tones are left: the metallic, bell-like sound of a ring modulator. Values in between blend the two, so the original sound is partly there.

**Depth** sets how much of the modulation you hear, from none (dry) to full. At every setting, the volume never goes above the volume of the input, so turning the controls never makes it louder.

**Slew** smooths the modulator so that square or stepped LFOs do not click. Turning Depth and Ring by hand also never clicks: they always glide over 20 ms.

The example patch (_br.am.example.1.0.maxpat) has two versions side by side: one with a sine modulator to try tremolo and ring modulation, and one with a square modulator to hear what Slew does.
