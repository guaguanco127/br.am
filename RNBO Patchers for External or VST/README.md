# Max/MSP RNBO Patch for External Creation: br.am.rnbo.1.1  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.am.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.am](https://github.com/guaguanco127/br.am)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[How To Export as a Max/MSP External](#Export)  
[A Note on VST and AU Plugins](#VST)  

## <a name="About"></a>About

A stereo tremolo that morphs smoothly into ring modulation. Ring 0 is tremolo / AM; Ring 1 is ring modulation, where the original sound cancels and only the sum and difference tones are left. The volume never goes above the input's. Every control is click-free.

Inside [rnbo~], Depth, Ring and Slew are params, and inlets 4 to 6 set the same params, so the external has the same inlets and outlets as the plain abstraction br.am.1.1: Left, Right, Modulator (a signal from 0 to 1), Depth, Ring, Slew / Left, Right. The gen~ code inside is the same as br.am.1.1, so you can also copy it into your own RNBO patches. To try it, drop a sample into the [playlist~], set the modulator frequency (a sine scaled to 0 to 1 feeds inlet 3) and use the attrui controls.

There is no State output: whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.am.rnbo.1.1.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.am.1.1~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.am.1.1, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.am.1.1~ in any patch. It has the same inlets and outlets as the plain abstraction br.am.1.1, except that the controls take numbers only.

## <a name="VST"></a>A Note on VST and AU Plugins

RNBO can also export this patch as a VST3 or AU plugin (Export Sidebar > Audio Plugin Export). Depth, Ring and Slew become the plugin's parameters. The modulator is a third audio input (in~ 3), which most DAWs treat as a sidechain input: route an LFO or oscillator track there. If you want a plugin that runs on its own, put an LFO inside [rnbo~] (for example [cycle~] into [*~ 0.5] into [+~ 0.5], with a param for its rate) in place of in~ 3 before exporting.
