{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "openrect": [ 85.0, 104.0, 150.0, 76.0 ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 150.0,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 420.0, 15.0, 156.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 150.0, 20.0 ],
                    "text": "amplitude / ring mod",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "comment": "Left In (Signal) audio to modulate",
                    "id": "obj-2",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 15.0, 15.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Right In (Signal) audio to modulate",
                    "id": "obj-3",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 60.0, 15.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Modulator In (Signal) 0 to 1. LFO or audio-rate oscillator scaled to 0-1. Clipped to 0-1. Unconnected = 0 (silent at Depth 1)",
                    "id": "obj-4",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 105.0, 15.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Depth (Float) 0 - 1. 0 = dry, 1 = full modulation. Default 1",
                    "id": "obj-5",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 15.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Ring (Float) 0 - 1. 0 = AM / tremolo, 1 = ring mod (dry signal cancels), in between = partial. Default 0",
                    "id": "obj-6",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 270.0, 15.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Slew (Float) 0 - 1000 ms. Smooths the modulator to de-click square or stepped LFOs. 0 = off. Keep 0 for audio-rate ring mod. Default 0",
                    "id": "obj-7",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 340.0, 15.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-8",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 200.0, 50.0, 44.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.0, 25.0, 44.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 1.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Depth",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Depth",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "Depth"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-9",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 270.0, 50.0, 44.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 55.0, 25.0, 44.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Ring",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Ring",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "Ring"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-10",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 340.0, 50.0, 44.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 105.0, 25.0, 44.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [ 0.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Slew",
                            "parameter_mmax": 1000.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Slew",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "varname": "Slew"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 115.0, 107.0, 22.0 ],
                    "text": "prepend depth"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 270.0, 115.0, 100.0, 22.0 ],
                    "text": "prepend ring"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 340.0, 115.0, 100.0, 22.0 ],
                    "text": "prepend slew"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 100.0, 100.0, 600.0, 450.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "linecount": 7,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 20.0, 30.0, 22.0 ],
                                    "text": "in 1 @comment left in"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "linecount": 7,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 130.0, 20.0, 30.0, 22.0 ],
                                    "text": "in 2 @comment right in"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "linecount": 10,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 210.0, 20.0, 30.0, 22.0 ],
                                    "text": "in 3 @comment modulator 0 to 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "// br.am 1.0 -- stereo amplitude modulation that morphs into ring modulation\n// mod is 0..1. depth 0 = dry, 1 = full modulation.\n// ring 0 = AM / tremolo: gain swings 0..1, the dry signal stays in\n// ring 1 = ring mod: gain swings -1..1, the dry signal cancels, only sum/difference tones\n// Gain never exceeds 1 at any setting.\n// slew = one-pole time constant in ms on the modulator, 0 = off. Rounds the edges of square or\n// stepped LFOs. It lowpasses the modulator, so keep it at 0 for audio-rate ring mod.\nParam depth(1, min=0, max=1);\nParam ring(0, min=0, max=1);\nParam slew(0, min=0, max=1000);\nHistory d_s(0);\nHistory r_s(0);\nHistory m_s(0);\nHistory primed(0);\nd_prev = d_s;\nr_prev = r_s;\nm_prev = m_s;\nwas_primed = primed;\n// 20 ms glide on dial moves so depth and ring never click\nk = 1 - exp(-1 / mstosamps(20));\nd = was_primed ? d_prev + (depth - d_prev) * k : depth;\nr = was_primed ? r_prev + (ring - r_prev) * k : ring;\nmod = clamp(in3, 0, 1);\nm = mod;\nkm = 1;\nif (slew > 0 && was_primed) {\n    km = 1 - exp(-1 / mstosamps(slew));\n    m = m_prev + (mod - m_prev) * km;\n}\n// ring 0 keeps m in 0..1, ring 1 stretches it to -1..1\nm_bi = m * (1 + r) - r;\ngain = (1 - d) + d * m_bi;\nout1 = in1 * gain;\nout2 = in2 * gain;\nd_s = d;\nr_s = r;\nm_s = m;\nprimed = 1;\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-4",
                                    "maxclass": "codebox",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 80.0, 400.0, 200.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "linecount": 8,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 320.0, 30.0, 22.0 ],
                                    "text": "out 1 @comment left out"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "linecount": 9,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 130.0, 320.0, 30.0, 22.0 ],
                                    "text": "out 2 @comment right out"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 2 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 15.0, 155.0, 120.0, 22.0 ],
                    "text": "gen~",
                    "varname": "br_am"
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal) modulated audio",
                    "id": "obj-15",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 200.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal) modulated audio",
                    "id": "obj-16",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 105.0, 200.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-17",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 145.0, 219.0, 20.0 ],
                    "text": "dials glide 20 ms inside gen~"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "id": "obj-18",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 250.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 155.0, 79.0 ],
                    "proportion": 0.39,
                    "rounded": 0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-14", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 1 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 2 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-10": [ "Slew", "Slew", 0 ],
            "obj-8": [ "Depth", "Depth", 0 ],
            "obj-9": [ "Ring", "Ring", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}