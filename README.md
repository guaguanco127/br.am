# Max/MSP Patches, Abstractions, Externals, RNBO and VSTs

## br.am.1.1



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.am.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.am](https://github.com/guaguanco127/br.am)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[What's new in 1.1](#New11)  
[About](#About)   
[Max/MSP Abstraction](https://github.com/guaguanco127/br.am/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.am/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external or VST/AU plugin, or to reuse the code in your own RNBO patches (needs RNBO)  

You can use it as an abstraction within Max/MSP. With RNBO you can also build your own Max external or plugin from the included RNBO patch.

## <a name="New11"></a>What's new in 1.1

- **Two files:** br.am.1.1 is the plain object, whose Depth, Ring and Slew inlets take signals as well as numbers (patch an LFO into Ring to morph AM into ring mod), and br.am.ui.1.1 is the version with dials, for a [bpatcher].
- A State outlet on br.am.ui.1.1 sends the settings as named messages the moment they change.
- A smaller panel, and an example patch with tabs: tremolo, ring mod and State outlet.
- New RNBO patch, to build your own Max external or VST/AU plugin.
- Inlets and audio outlets are unchanged.

## <a name="About"></a>About

A stereo Max/MSP abstraction for amplitude modulation that morphs smoothly into ring modulation. It multiplies your audio by a modulator, such as an LFO or an oscillator, moving between 0 and 1.

**Tremolo / AM:** With Ring at 0, the volume moves between silent and full. With a slow modulator (a few Hz) you hear tremolo. With an audio-rate modulator you hear new tones on either side of the original sound, and the original sound stays in.

**Ring modulation:** With Ring at 1, the modulator swings the signal from fully positive to fully negative. The original sound cancels out, and only the sum and difference tones are left: the metallic, bell-like sound of a ring modulator. Values in between blend the two, so the original sound is partly there.

**Depth** sets how much of the modulation you hear, from none (dry) to full. At every setting, the volume never goes above the volume of the input, so turning the controls never makes it louder.

**Slew** smooths the modulator so that square or stepped LFOs do not click. Turning Depth and Ring by hand also never clicks: they always glide over 20 ms.

**Signal control:** The plain br.am.1.1 takes signals in Depth, Ring and Slew, so an LFO or envelope can move them.

**State outlet:** br.am.ui.1.1 reports its settings by name from its last outlet.

The example patch (_br.am.example.1.1.maxpat) has a tremolo tab (a sine modulator, and a square one to hear what Slew does), a ring mod tab with spectroscopes and an LFO morphing the plain object, and a State outlet tab.
