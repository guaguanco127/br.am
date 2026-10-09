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
        "openinpresentation": 0,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1070.0,
                        15.0,
                        520.0,
                        40.0
                    ],
                    "text": "br.am.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
                    "linecount": 2
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        650.0,
                        15.0,
                        156.0,
                        20.0
                    ],
                    "text": "amplitude / ring mod",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Left In (Signal) audio to modulate",
                    "id": "obj-2",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right In (Signal) audio to modulate",
                    "id": "obj-3",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        60.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Modulator In (Signal) 0 to 1. LFO or audio-rate oscillator scaled to 0-1. Clipped to 0-1. Unconnected = 0 (silent at Depth 1)",
                    "id": "obj-4",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        105.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Depth (Signal/Float) 0 - 1. 0 = dry, 1 = full modulation. Default 1",
                    "id": "obj-5",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        345.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Ring (Signal/Float) 0 - 1. 0 = AM / tremolo, 1 = ring mod (dry signal cancels), in between = partial. Default 0",
                    "id": "obj-6",
                    "index": 5,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        455.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Slew (Signal/Float) 0 - 1000 ms. Smooths the modulator to de-click square or stepped LFOs. 0 = off. Keep 0 for audio-rate ring mod. Default 0",
                    "id": "obj-7",
                    "index": 6,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        565.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
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
                        "rect": [
                            100.0,
                            100.0,
                            600.0,
                            450.0
                        ],
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
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
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
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        130.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
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
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 3 @comment modulator 0 to 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "// br.am.1.1 -- stereo amplitude modulation that morphs into ring modulation\n// mod is 0..1. depth 0 = dry, 1 = full modulation.\n// ring 0 = AM / tremolo: gain swings 0..1, the dry signal stays in\n// ring 1 = ring mod: gain swings -1..1, the dry signal cancels, only sum/difference tones\n// Gain never exceeds 1 at any setting.\n// slew = one-pole time constant in ms on the modulator, 0 = off. Rounds the edges of square or\n// stepped LFOs. It lowpasses the modulator, so keep it at 0 for audio-rate ring mod.\n// in1/in2 audio L/R, in3 modulator 0..1, in4 depth, in5 ring, in6 slew ms: numbers or signals.\nHistory d_s(0);\nHistory r_s(0);\nHistory m_s(0);\nHistory primed(0);\ndepth = clamp(in4, 0, 1);\nring = clamp(in5, 0, 1);\nslew = clamp(in6, 0, 1000);\nd_prev = d_s;\nr_prev = r_s;\nm_prev = m_s;\nwas_primed = primed;\n// 20 ms glide on dial moves so depth and ring never click\nk = 1 - exp(-1 / mstosamps(20));\nd = was_primed ? d_prev + (depth - d_prev) * k : depth;\nr = was_primed ? r_prev + (ring - r_prev) * k : ring;\nmod = clamp(in3, 0, 1);\nm = mod;\nkm = 1;\nif (slew > 0 && was_primed) {\n    km = 1 - exp(-1 / mstosamps(slew));\n    m = m_prev + (mod - m_prev) * km;\n}\n// ring 0 keeps m in 0..1, ring 1 stretches it to -1..1\nm_bi = m * (1 + r) - r;\ngain = (1 - d) + d * m_bi;\nout1 = in1 * gain;\nout2 = in2 * gain;\nd_s = d;\nr_s = r;\nm_s = m;\nprimed = 1;\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-4",
                                    "maxclass": "codebox",
                                    "numinlets": 6,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        80.0,
                                        400.0,
                                        200.0
                                    ]
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
                                    "patching_rect": [
                                        50.0,
                                        320.0,
                                        30.0,
                                        22.0
                                    ],
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
                                    "patching_rect": [
                                        130.0,
                                        320.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "out 2 @comment right out"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-in4",
                                    "maxclass": "newobj",
                                    "text": "in 4 @comment depth 0-1 @default 1 @min 0 @max 1",
                                    "patching_rect": [
                                        290.0,
                                        20.0,
                                        110.0,
                                        22.0
                                    ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-in5",
                                    "maxclass": "newobj",
                                    "text": "in 5 @comment ring 0-1 @default 0 @min 0 @max 1",
                                    "patching_rect": [
                                        410.0,
                                        20.0,
                                        110.0,
                                        22.0
                                    ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-in6",
                                    "maxclass": "newobj",
                                    "text": "in 6 @comment slew ms @default 0 @min 0 @max 1000",
                                    "patching_rect": [
                                        530.0,
                                        20.0,
                                        110.0,
                                        22.0
                                    ],
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-4",
                                        0
                                    ],
                                    "source": [
                                        "obj-1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-4",
                                        1
                                    ],
                                    "source": [
                                        "obj-2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-4",
                                        2
                                    ],
                                    "source": [
                                        "obj-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-5",
                                        0
                                    ],
                                    "source": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-6",
                                        0
                                    ],
                                    "source": [
                                        "obj-4",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-in4",
                                        0
                                    ],
                                    "destination": [
                                        "obj-4",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-in5",
                                        0
                                    ],
                                    "destination": [
                                        "obj-4",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-in6",
                                        0
                                    ],
                                    "destination": [
                                        "obj-4",
                                        5
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        15.0,
                        80.0,
                        580.0,
                        22.0
                    ],
                    "text": "gen~ @title br.am.1.1",
                    "varname": "br_am"
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal) modulated audio",
                    "id": "obj-15",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        125.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal) modulated audio",
                    "id": "obj-16",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        565.0,
                        125.0,
                        30.0,
                        30.0
                    ]
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
                    "patching_rect": [
                        15.0,
                        170.0,
                        260.0,
                        20.0
                    ],
                    "text": "Depth and Ring glide 20 ms inside gen~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-why",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        650.0,
                        45.0,
                        400.0,
                        74.0
                    ],
                    "text": "The plain object: Depth, Ring and Slew go straight into gen~, so they take numbers OR signals. An LFO patched into Ring morphs AM into ring mod by itself; Depth and Ring glide 20 ms inside gen~, so jumps never click. [br.am.ui.1.1] wraps this file with dials and a State outlet.",
                    "linecount": 5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-2",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-3",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-4",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-6",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-7",
                        0
                    ],
                    "destination": [
                        "obj-14",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-14",
                        0
                    ],
                    "destination": [
                        "obj-15",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-14",
                        1
                    ],
                    "destination": [
                        "obj-16",
                        0
                    ]
                }
            }
        ],
        "description": "br.am.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/"
    }
}