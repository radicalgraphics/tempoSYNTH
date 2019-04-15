{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 40.0, 82.0, 1842.0, 960.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 328.0, 643.0, 39.0, 22.0 ],
					"text" : "folder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 430.333343505859375, 508.9285888671875, 41.0, 22.0 ],
					"text" : "unjoin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 472.0, 580.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 430.333343505859375, 545.0, 71.0, 22.0 ],
					"text" : "set $1.WAV"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 430.333343505859375, 696.5, 24.0, 22.0 ],
					"text" : "t 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 430.333343505859375, 768.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 458.5, 696.5, 85.0, 22.0 ],
					"text" : "prepend open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "bang" ],
					"patching_rect" : [ 430.333343505859375, 732.4285888671875, 59.0, 22.0 ],
					"saved_object_attributes" : 					{
						"basictuning" : 440,
						"followglobaltempo" : 0,
						"formantcorrection" : 0,
						"mode" : "basic",
						"originallength" : [ 6582.878911564616828, "ticks" ],
						"originaltempo" : 119.999999999999829,
						"pitchcorrection" : 0,
						"quality" : "basic",
						"timestretch" : [ 0 ]
					}
,
					"text" : "sfplay~ 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 430.333343505859375, 619.0, 87.0, 22.0 ],
					"text" : "prepend prefix"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"autopopulate" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"items" : [ "Cymatics - Terror Bass D 001.wav", ",", "Cymatics - Terror Bass D 002.wav", ",", "Cymatics - Terror Bass D 003.wav", ",", "Cymatics - Terror Bass D 004.wav", ",", "Cymatics - Terror Bass D 005.wav", ",", "Cymatics - Terror Bass D 006.wav", ",", "Cymatics - Terror Bass D 007.wav", ",", "Cymatics - Terror Bass D 008.wav", ",", "Cymatics - Terror Bass D 009.wav", ",", "Cymatics - Terror Bass D 010.wav", ",", "Cymatics - Terror Bass D 011.wav", ",", "Cymatics - Terror Bass D 012.wav", ",", "Cymatics - Terror Bass E 001.wav", ",", "Cymatics - Terror Bass E 002.wav", ",", "Cymatics - Terror Bass E 003.wav", ",", "Cymatics - Terror Bass E 004.wav", ",", "Cymatics - Terror Bass E 005.wav", ",", "Cymatics - Terror Bass E 006.wav", ",", "Cymatics - Terror Bass E 007.wav", ",", "Cymatics - Terror Bass E 008.wav", ",", "Cymatics - Terror Bass E 009.wav", ",", "Cymatics - Terror Bass E 010.wav", ",", "Cymatics - Terror Bass E 011.wav", ",", "Cymatics - Terror Bass E 012.wav", ",", "Cymatics - Terror Bass E 013.wav", ",", "Cymatics - Terror Bass E 014.wav", ",", "Cymatics - Terror Bass E 015.wav", ",", "Cymatics - Terror Bass E 016.wav", ",", "Cymatics - Terror Bass E 017.wav", ",", "Cymatics - Terror Bass E 018.wav", ",", "Cymatics - Terror Bass E 019.wav", ",", "Cymatics - Terror Bass E 020.wav", ",", "Cymatics - Terror Bass E 021.wav", ",", "Cymatics - Terror Bass E 022.wav", ",", "Cymatics - Terror Bass E 023.wav", ",", "Cymatics - Terror Bass E 024.wav", ",", "Cymatics - Terror Bass E 025.wav", ",", "Cymatics - Terror Bass E 026.wav", ",", "Cymatics - Terror Bass E 027.wav", ",", "Cymatics - Terror Bass E 028.wav", ",", "Cymatics - Terror Bass E 029.wav", ",", "Cymatics - Terror Bass E 030.wav", ",", "Cymatics - Terror Bass E 031.wav", ",", "Cymatics - Terror Bass E 032.wav", ",", "Cymatics - Terror Bass E 033.wav", ",", "Cymatics - Terror Bass E 034.wav", ",", "Cymatics - Terror Bass E 035.wav", ",", "Cymatics - Terror Bass E 036.wav", ",", "Cymatics - Terror Bass E 037.wav", ",", "Cymatics - Terror Bass E 038.wav", ",", "Cymatics - Terror Bass E 039.wav", ",", "Cymatics - Terror Bass E 040.wav", ",", "Cymatics - Terror Bass E 041.wav", ",", "Cymatics - Terror Bass E 042.wav", ",", "Cymatics - Terror Bass E 043.wav", ",", "Cymatics - Terror Bass E 044.wav", ",", "Cymatics - Terror Bass E 045.wav", ",", "Cymatics - Terror Bass E 046.wav", ",", "Cymatics - Terror Bass F 001.wav", ",", "Cymatics - Terror Bass F 002.wav", ",", "Cymatics - Terror Bass F 003.wav", ",", "Cymatics - Terror Bass F 004.wav", ",", "Cymatics - Terror Bass F 005.wav", ",", "Cymatics - Terror Bass F 006.wav", ",", "Cymatics - Terror Bass F 007.wav", ",", "Cymatics - Terror Bass F 008.wav", ",", "Cymatics - Terror Bass F 009.wav", ",", "Cymatics - Terror Bass F 010.wav", ",", "Cymatics - Terror Bass F 011.wav", ",", "Cymatics - Terror Bass F 012.wav", ",", "Cymatics - Terror Bass F 013.wav", ",", "Cymatics - Terror Bass F 014.wav", ",", "Cymatics - Terror Bass F 015.wav", ",", "Cymatics - Terror Bass F 016.wav", ",", "Cymatics - Terror Bass F 017.wav", ",", "Cymatics - Terror Bass Loop D 150BPM - 001.wav", ",", "Cymatics - Terror Bass Loop D 150BPM - 002.wav", ",", "Cymatics - Terror Bass Loop E 150BPM - 001.wav", ",", "Cymatics - Terror Bass Loop E 150BPM - 002.wav", ",", "Cymatics - Terror Bass Loop E 150BPM - 003.wav", ",", "Cymatics - Terror Bass Loop E 150BPM - 004.wav", ",", "Cymatics - Terror Bass Loop F 140BPM - 001.wav", ",", "Cymatics - Terror Bass Loop F 140BPM - 002.wav", ",", "Cymatics - Terror Bass Loop F 140BPM - 003.wav", ",", "Cymatics - Terror Bass Loop F 140BPM - 004.wav", ",", "Cymatics - Terror Bass Loop F 140BPM - 005.wav", ",", "Cymatics - Terror Bass Loop F 140BPM - 006.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 001.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 002.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 003.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 004.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 005.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 006.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 007.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 008.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 009.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 010.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 011.wav", ",", "Cymatics - Terror Bass Loop F 150BPM - 012.wav", ",", "Cymatics - Terror Bass Loop F# 150BPM - 001.wav", ",", "Cymatics - Terror Clap 001.wav", ",", "Cymatics - Terror Clap 002.wav", ",", "Cymatics - Terror Clap 003.wav", ",", "Cymatics - Terror Clap 004.wav", ",", "Cymatics - Terror Clap 005.wav", ",", "Cymatics - Terror Clap 006.wav", ",", "Cymatics - Terror Clap 007.wav", ",", "Cymatics - Terror Clap 008.wav", ",", "Cymatics - Terror Clap 009.wav", ",", "Cymatics - Terror Clap 010.wav", ",", "Cymatics - Terror Clap 011.wav", ",", "Cymatics - Terror Clap 012.wav", ",", "Cymatics - Terror Clap 013.wav", ",", "Cymatics - Terror Clap 014.wav", ",", "Cymatics - Terror Clap 015.wav", ",", "Cymatics - Terror Clap 016.wav", ",", "Cymatics - Terror Clap 017.wav", ",", "Cymatics - Terror Clap 018.wav", ",", "Cymatics - Terror Clap 019.wav", ",", "Cymatics - Terror Clap 020.wav", ",", "Cymatics - Terror Clap 021.wav", ",", "Cymatics - Terror Clap 022.wav", ",", "Cymatics - Terror Clap 023.wav", ",", "Cymatics - Terror Clap 024.wav", ",", "Cymatics - Terror Clap 025.wav", ",", "Cymatics - Terror Closed Hi Hat 001.wav", ",", "Cymatics - Terror Closed Hi Hat 002.wav", ",", "Cymatics - Terror Closed Hi Hat 003.wav", ",", "Cymatics - Terror Closed Hi Hat 004.wav", ",", "Cymatics - Terror Closed Hi Hat 005.wav", ",", "Cymatics - Terror Closed Hi Hat 006.wav", ",", "Cymatics - Terror Closed Hi Hat 007.wav", ",", "Cymatics - Terror Closed Hi Hat 008.wav", ",", "Cymatics - Terror Closed Hi Hat 009.wav", ",", "Cymatics - Terror Closed Hi Hat 010.wav", ",", "Cymatics - Terror Closed Hi Hat 011.wav", ",", "Cymatics - Terror Closed Hi Hat 012.wav", ",", "Cymatics - Terror Closed Hi Hat 013.wav", ",", "Cymatics - Terror Closed Hi Hat 014.wav", ",", "Cymatics - Terror Closed Hi Hat 015.wav", ",", "Cymatics - Terror Crash 001.wav", ",", "Cymatics - Terror Crash 002.wav", ",", "Cymatics - Terror Crash 003.wav", ",", "Cymatics - Terror Crash 004.wav", ",", "Cymatics - Terror Crash 005.wav", ",", "Cymatics - Terror Crash 006.wav", ",", "Cymatics - Terror Crash 007.wav", ",", "Cymatics - Terror Crash 008.wav", ",", "Cymatics - Terror Crash 009.wav", ",", "Cymatics - Terror Crash 010.wav", ",", "Cymatics - Terror Crash 011.wav", ",", "Cymatics - Terror Crash 012.wav", ",", "Cymatics - Terror Crash 013.wav", ",", "Cymatics - Terror Crash 014.wav", ",", "Cymatics - Terror Drum Build 140 - 001.wav", ",", "Cymatics - Terror Drum Build 140 - 002.wav", ",", "Cymatics - Terror Drum Build 140 - 003.wav", ",", "Cymatics - Terror Drum Build 140 - 004.wav", ",", "Cymatics - Terror Drum Build 140 - 005.wav", ",", "Cymatics - Terror Drum Build 140 - 006.wav", ",", "Cymatics - Terror Drum Build 140 - 007.wav", ",", "Cymatics - Terror Drum Build 140 - 008.wav", ",", "Cymatics - Terror Drum Build 140 - 009.wav", ",", "Cymatics - Terror Drum Build 140 - 010.wav", ",", "Cymatics - Terror Drum Build 140 - 011.wav", ",", "Cymatics - Terror Drum Build 145 - 012.wav", ",", "Cymatics - Terror Drum Build 150 - 013.wav", ",", "Cymatics - Terror Drum Build 150 - 014.wav", ",", "Cymatics - Terror Drum Build 150 - 015.wav", ",", "Cymatics - Terror Drum Build 150 - 016.wav", ",", "Cymatics - Terror Drum Build 150 - 017.wav", ",", "Cymatics - Terror Drum Build 150 - 018.wav", ",", "Cymatics - Terror Drum Build 150 - 019.wav", ",", "Cymatics - Terror Drum Build 150 - 020.wav", ",", "Cymatics - Terror Drum Build 150 - 021.wav", ",", "Cymatics - Terror Drum Build 150 - 022.wav", ",", "Cymatics - Terror Drum Build 150 - 023.wav", ",", "Cymatics - Terror Drum Build 150 - 024.wav", ",", "Cymatics - Terror Drum Build 150 - 025.wav", ",", "Cymatics - Terror Fill 001.wav", ",", "Cymatics - Terror Fill 002.wav", ",", "Cymatics - Terror Fill 003.wav", ",", "Cymatics - Terror Fill 004.wav", ",", "Cymatics - Terror Fill 005.wav", ",", "Cymatics - Terror Fill 006.wav", ",", "Cymatics - Terror Fill 007.wav", ",", "Cymatics - Terror Fill 008.wav", ",", "Cymatics - Terror Fill 009.wav", ",", "Cymatics - Terror Fill 010.wav", ",", "Cymatics - Terror Fill 011.wav", ",", "Cymatics - Terror Fill 012.wav", ",", "Cymatics - Terror Fill 013.wav", ",", "Cymatics - Terror Fill 014.wav", ",", "Cymatics - Terror Fill 015.wav", ",", "Cymatics - Terror Fill 016.wav", ",", "Cymatics - Terror Fill 017.wav", ",", "Cymatics - Terror Fill 018.wav", ",", "Cymatics - Terror Fill 019.wav", ",", "Cymatics - Terror Fill 020.wav", ",", "Cymatics - Terror Fill 021.wav", ",", "Cymatics - Terror Fill 022.wav", ",", "Cymatics - Terror Fill 023.wav", ",", "Cymatics - Terror Fill 024.wav", ",", "Cymatics - Terror Fill 025.wav", ",", "Cymatics - Terror Fill 026.wav", ",", "Cymatics - Terror Fill 027.wav", ",", "Cymatics - Terror Fill 028.wav", ",", "Cymatics - Terror Fill 029.wav", ",", "Cymatics - Terror Fill 030.wav", ",", "Cymatics - Terror Fill 031.wav", ",", "Cymatics - Terror Fill 032.wav", ",", "Cymatics - Terror Fill 033.wav", ",", "Cymatics - Terror Fill 034.wav", ",", "Cymatics - Terror Fill 035.wav", ",", "Cymatics - Terror Fill 036.wav", ",", "Cymatics - Terror Fill 037.wav", ",", "Cymatics - Terror Fill 038.wav", ",", "Cymatics - Terror Fill 039.wav", ",", "Cymatics - Terror Fill 040.wav", ",", "Cymatics - Terror Fill 041.wav", ",", "Cymatics - Terror Fill 042.wav", ",", "Cymatics - Terror Fill 043.wav", ",", "Cymatics - Terror Fill 044.wav", ",", "Cymatics - Terror Fill 045.wav", ",", "Cymatics - Terror Fill 046.wav", ",", "Cymatics - Terror Fill 047.wav", ",", "Cymatics - Terror Fill 048.wav", ",", "Cymatics - Terror Fill 049.wav", ",", "Cymatics - Terror Fill 050.wav", ",", "Cymatics - Terror Fill 051.wav", ",", "Cymatics - Terror Fill 052.wav", ",", "Cymatics - Terror Fill 053.wav", ",", "Cymatics - Terror Fill 054.wav", ",", "Cymatics - Terror Fill 055.wav", ",", "Cymatics - Terror Fill 056.wav", ",", "Cymatics - Terror Fill 057.wav", ",", "Cymatics - Terror Fill 058.wav", ",", "Cymatics - Terror Fill 059.wav", ",", "Cymatics - Terror Fill 060.wav", ",", "Cymatics - Terror Fill 061.wav", ",", "Cymatics - Terror Fill 062.wav", ",", "Cymatics - Terror Fill 063.wav", ",", "Cymatics - Terror Fill 064.wav", ",", "Cymatics - Terror Fill 065.wav", ",", "Cymatics - Terror Fill 066.wav", ",", "Cymatics - Terror Fill 067.wav", ",", "Cymatics - Terror Fill 068.wav", ",", "Cymatics - Terror Fill 069.wav", ",", "Cymatics - Terror Fill 070.wav", ",", "Cymatics - Terror Fill 071.wav", ",", "Cymatics - Terror Fill 072.wav", ",", "Cymatics - Terror Fill 073.wav", ",", "Cymatics - Terror Fill 074.wav", ",", "Cymatics - Terror Fill 075.wav", ",", "Cymatics - Terror Fill 076.wav", ",", "Cymatics - Terror Fill 077.wav", ",", "Cymatics - Terror Fill 078.wav", ",", "Cymatics - Terror Fill 079.wav", ",", "Cymatics - Terror Fill 080.wav", ",", "Cymatics - Terror Fill 081.wav", ",", "Cymatics - Terror Fill 082.wav", ",", "Cymatics - Terror Fill 083.wav", ",", "Cymatics - Terror Fill 084.wav", ",", "Cymatics - Terror Fill 085.wav", ",", "Cymatics - Terror Fill 086.wav", ",", "Cymatics - Terror Fill 087.wav", ",", "Cymatics - Terror Fill 088.wav", ",", "Cymatics - Terror Fill 089.wav", ",", "Cymatics - Terror Fill 090.wav", ",", "Cymatics - Terror Fill 091.wav", ",", "Cymatics - Terror Fill 092.wav", ",", "Cymatics - Terror Fill 093.wav", ",", "Cymatics - Terror Fill 094.wav", ",", "Cymatics - Terror Fill 095.wav", ",", "Cymatics - Terror Fill 096.wav", ",", "Cymatics - Terror Fill 097.wav", ",", "Cymatics - Terror Fill 098.wav", ",", "Cymatics - Terror Fill 099.wav", ",", "Cymatics - Terror Fill 100.wav", ",", "Cymatics - Terror Full Kick 001.wav", ",", "Cymatics - Terror Full Kick 002.wav", ",", "Cymatics - Terror Full Kick 003.wav", ",", "Cymatics - Terror Full Kick 004.wav", ",", "Cymatics - Terror Full Kick 005.wav", ",", "Cymatics - Terror Full Kick 006.wav", ",", "Cymatics - Terror Full Kick 007.wav", ",", "Cymatics - Terror Full Kick 008.wav", ",", "Cymatics - Terror Full Kick 009.wav", ",", "Cymatics - Terror Full Kick 010.wav", ",", "Cymatics - Terror Full Kick 011.wav", ",", "Cymatics - Terror Full Kick 012.wav", ",", "Cymatics - Terror Full Kick 013.wav", ",", "Cymatics - Terror Full Kick 014.wav", ",", "Cymatics - Terror Full Kick 015.wav", ",", "Cymatics - Terror Full Kick 016.wav", ",", "Cymatics - Terror Full Kick 017.wav", ",", "Cymatics - Terror Full Kick 018.wav", ",", "Cymatics - Terror Full Kick 019.wav", ",", "Cymatics - Terror Full Kick 020.wav", ",", "Cymatics - Terror Full Kick 021.wav", ",", "Cymatics - Terror Full Kick 022.wav", ",", "Cymatics - Terror Full Kick 023.wav", ",", "Cymatics - Terror Full Kick 024.wav", ",", "Cymatics - Terror Full Kick 025.wav", ",", "Cymatics - Terror Full Kick 026.wav", ",", "Cymatics - Terror Full Kick 027.wav", ",", "Cymatics - Terror Full Kick 028.wav", ",", "Cymatics - Terror Full Kick 029.wav", ",", "Cymatics - Terror Full Kick 030.wav", ",", "Cymatics - Terror Full Kick 031.wav", ",", "Cymatics - Terror Full Kick 032.wav", ",", "Cymatics - Terror Full Kick 033.wav", ",", "Cymatics - Terror Full Kick 034.wav", ",", "Cymatics - Terror Full Kick 035.wav", ",", "Cymatics - Terror Full Kick 036.wav", ",", "Cymatics - Terror Full Kick 037.wav", ",", "Cymatics - Terror Full Kick 038.wav", ",", "Cymatics - Terror Full Kick 039.wav", ",", "Cymatics - Terror Full Kick 040.wav", ",", "Cymatics - Terror Full Kick 041.wav", ",", "Cymatics - Terror Full Kick 042.wav", ",", "Cymatics - Terror Full Kick 043.wav", ",", "Cymatics - Terror Full Kick 044.wav", ",", "Cymatics - Terror Full Kick 045.wav", ",", "Cymatics - Terror Full Kick 046.wav", ",", "Cymatics - Terror Full Kick 047.wav", ",", "Cymatics - Terror Full Kick 048.wav", ",", "Cymatics - Terror Full Kick 049.wav", ",", "Cymatics - Terror Full Kick 050.wav", ",", "Cymatics - Terror Heavy Snare 001.wav", ",", "Cymatics - Terror Heavy Snare 002.wav", ",", "Cymatics - Terror Heavy Snare 003.wav", ",", "Cymatics - Terror Heavy Snare 004.wav", ",", "Cymatics - Terror Heavy Snare 005.wav", ",", "Cymatics - Terror Heavy Snare 006.wav", ",", "Cymatics - Terror Heavy Snare 007.wav", ",", "Cymatics - Terror Heavy Snare 008.wav", ",", "Cymatics - Terror Heavy Snare 009.wav", ",", "Cymatics - Terror Heavy Snare 010.wav", ",", "Cymatics - Terror Heavy Snare 011.wav", ",", "Cymatics - Terror Heavy Snare 012.wav", ",", "Cymatics - Terror Heavy Snare 013.wav", ",", "Cymatics - Terror Heavy Snare 014.wav", ",", "Cymatics - Terror Heavy Snare 015.wav", ",", "Cymatics - Terror Heavy Snare 016.wav", ",", "Cymatics - Terror Heavy Snare 017.wav", ",", "Cymatics - Terror Heavy Snare 018.wav", ",", "Cymatics - Terror Heavy Snare 019.wav", ",", "Cymatics - Terror Heavy Snare 020.wav", ",", "Cymatics - Terror Heavy Snare 021.wav", ",", "Cymatics - Terror Heavy Snare 022.wav", ",", "Cymatics - Terror Heavy Snare 023.wav", ",", "Cymatics - Terror Heavy Snare 024.wav", ",", "Cymatics - Terror Heavy Snare 025.wav", ",", "Cymatics - Terror Heavy Snare 026.wav", ",", "Cymatics - Terror Heavy Snare 027.wav", ",", "Cymatics - Terror Heavy Snare 028.wav", ",", "Cymatics - Terror Heavy Snare 029.wav", ",", "Cymatics - Terror Heavy Snare 030.wav", ",", "Cymatics - Terror Heavy Snare 031.wav", ",", "Cymatics - Terror Heavy Snare 032.wav", ",", "Cymatics - Terror Heavy Snare 033.wav", ",", "Cymatics - Terror Heavy Snare 034.wav", ",", "Cymatics - Terror Heavy Snare 035.wav", ",", "Cymatics - Terror Heavy Snare 036.wav", ",", "Cymatics - Terror Heavy Snare 037.wav", ",", "Cymatics - Terror Heavy Snare 038.wav", ",", "Cymatics - Terror Heavy Snare 039.wav", ",", "Cymatics - Terror Heavy Snare 040.wav", ",", "Cymatics - Terror Heavy Snare 041.wav", ",", "Cymatics - Terror Heavy Snare 042.wav", ",", "Cymatics - Terror Heavy Snare 043.wav", ",", "Cymatics - Terror Heavy Snare 044.wav", ",", "Cymatics - Terror Heavy Snare 045.wav", ",", "Cymatics - Terror Heavy Snare 046.wav", ",", "Cymatics - Terror Heavy Snare 047.wav", ",", "Cymatics - Terror Heavy Snare 048.wav", ",", "Cymatics - Terror Heavy Snare 049.wav", ",", "Cymatics - Terror Heavy Snare 050.wav", ",", "Cymatics - Terror Heavy Snare 051.wav", ",", "Cymatics - Terror Heavy Snare 052.wav", ",", "Cymatics - Terror Heavy Snare 053.wav", ",", "Cymatics - Terror Heavy Snare 054.wav", ",", "Cymatics - Terror Heavy Snare 055.wav", ",", "Cymatics - Terror Heavy Snare 056.wav", ",", "Cymatics - Terror Heavy Snare 057.wav", ",", "Cymatics - Terror Heavy Snare 058.wav", ",", "Cymatics - Terror Heavy Snare 059.wav", ",", "Cymatics - Terror Heavy Snare 060.wav", ",", "Cymatics - Terror Heavy Snare 061.wav", ",", "Cymatics - Terror Heavy Snare 062.wav", ",", "Cymatics - Terror Heavy Snare 063.wav", ",", "Cymatics - Terror Heavy Snare 064.wav", ",", "Cymatics - Terror Heavy Snare 065.wav", ",", "Cymatics - Terror Heavy Snare 066.wav", ",", "Cymatics - Terror Heavy Snare 067.wav", ",", "Cymatics - Terror Heavy Snare 068.wav", ",", "Cymatics - Terror Heavy Snare 069.wav", ",", "Cymatics - Terror Heavy Snare 070.wav", ",", "Cymatics - Terror Heavy Snare 071.wav", ",", "Cymatics - Terror Heavy Snare 072.wav", ",", "Cymatics - Terror Heavy Snare 073.wav", ",", "Cymatics - Terror Heavy Snare 074.wav", ",", "Cymatics - Terror Heavy Snare 075.wav", ",", "Cymatics - Terror Hi Hat Loop 001.wav", ",", "Cymatics - Terror Hi Hat Loop 002.wav", ",", "Cymatics - Terror Hi Hat Loop 003.wav", ",", "Cymatics - Terror Hi Hat Loop 004.wav", ",", "Cymatics - Terror Hi Hat Loop 005.wav", ",", "Cymatics - Terror Hi Hat Loop 006.wav", ",", "Cymatics - Terror Hi Hat Loop 007.wav", ",", "Cymatics - Terror Hi Hat Loop 008.wav", ",", "Cymatics - Terror Hi Hat Loop 009.wav", ",", "Cymatics - Terror Hi Hat Loop 010.wav", ",", "Cymatics - Terror Hi Hat Loop 011.wav", ",", "Cymatics - Terror Hi Hat Loop 012.wav", ",", "Cymatics - Terror Hi Hat Loop 013.wav", ",", "Cymatics - Terror Hi Hat Loop 014.wav", ",", "Cymatics - Terror Hi Hat Loop 015.wav", ",", "Cymatics - Terror Hi Hat Loop 016.wav", ",", "Cymatics - Terror Hi Hat Loop 017.wav", ",", "Cymatics - Terror Hi Hat Loop 018.wav", ",", "Cymatics - Terror Hi Hat Loop 019.wav", ",", "Cymatics - Terror Hi Hat Loop 020.wav", ",", "Cymatics - Terror Hi Hat Loop 021.wav", ",", "Cymatics - Terror Hi Hat Loop 022.wav", ",", "Cymatics - Terror Hi Hat Loop 023.wav", ",", "Cymatics - Terror Hi Hat Loop 024.wav", ",", "Cymatics - Terror Hi Hat Loop 025.wav", ",", "Cymatics - Terror Hi Hat Loop 026.wav", ",", "Cymatics - Terror Hi Hat Loop 027.wav", ",", "Cymatics - Terror Hi Hat Loop 028.wav", ",", "Cymatics - Terror Hi Hat Loop 029.wav", ",", "Cymatics - Terror Hi Hat Loop 030.wav", ",", "Cymatics - Terror Hi Hat Loop 031.wav", ",", "Cymatics - Terror Hi Hat Loop 032.wav", ",", "Cymatics - Terror Hi Hat Loop 033.wav", ",", "Cymatics - Terror Hi Hat Loop 034.wav", ",", "Cymatics - Terror Hi Hat Loop 035.wav", ",", "Cymatics - Terror Hi Hat Loop 036.wav", ",", "Cymatics - Terror Hi Hat Loop 037.wav", ",", "Cymatics - Terror Hi Hat Loop 038.wav", ",", "Cymatics - Terror Hi Hat Loop 039.wav", ",", "Cymatics - Terror Hi Hat Loop 040.wav", ",", "Cymatics - Terror Impact 001.wav", ",", "Cymatics - Terror Impact 002.wav", ",", "Cymatics - Terror Impact 003.wav", ",", "Cymatics - Terror Impact 004.wav", ",", "Cymatics - Terror Impact 005.wav", ",", "Cymatics - Terror Impact 006.wav", ",", "Cymatics - Terror Impact 007.wav", ",", "Cymatics - Terror Impact 008.wav", ",", "Cymatics - Terror Impact 009.wav", ",", "Cymatics - Terror Impact 010.wav", ",", "Cymatics - Terror Impact 011.wav", ",", "Cymatics - Terror Impact 012.wav", ",", "Cymatics - Terror Impact 013.wav", ",", "Cymatics - Terror Impact 014.wav", ",", "Cymatics - Terror Impact 015.wav", ",", "Cymatics - Terror Impact 016.wav", ",", "Cymatics - Terror Impact 017.wav", ",", "Cymatics - Terror Impact 018.wav", ",", "Cymatics - Terror Impact 019.wav", ",", "Cymatics - Terror Impact 020.wav", ",", "Cymatics - Terror Impact 021.wav", ",", "Cymatics - Terror Impact 022.wav", ",", "Cymatics - Terror Impact 023.wav", ",", "Cymatics - Terror Impact 024.wav", ",", "Cymatics - Terror Impact 025.wav", ",", "Cymatics - Terror Open Hat 001.wav", ",", "Cymatics - Terror Open Hat 002.wav", ",", "Cymatics - Terror Open Hat 003.wav", ",", "Cymatics - Terror Open Hat 004.wav", ",", "Cymatics - Terror Open Hat 005.wav", ",", "Cymatics - Terror Open Hat 006.wav", ",", "Cymatics - Terror Open Hat 007.wav", ",", "Cymatics - Terror Open Hat 008.wav", ",", "Cymatics - Terror Open Hat 009.wav", ",", "Cymatics - Terror Open Hat 010.wav", ",", "Cymatics - Terror Rev Crash 001.wav", ",", "Cymatics - Terror Rev Crash 002.wav", ",", "Cymatics - Terror Rev Crash 003.wav", ",", "Cymatics - Terror Rev Crash 004.wav", ",", "Cymatics - Terror Rev Crash 005.wav", ",", "Cymatics - Terror Ride 001.wav", ",", "Cymatics - Terror Ride 002.wav", ",", "Cymatics - Terror Ride 003.wav", ",", "Cymatics - Terror Ride 004.wav", ",", "Cymatics - Terror Ride 005.wav", ",", "Cymatics - Terror Ride 006.wav", ",", "Cymatics - Terror Riser D 001.wav", ",", "Cymatics - Terror Riser D 002.wav", ",", "Cymatics - Terror Riser D 003.wav", ",", "Cymatics - Terror Riser D 004.wav", ",", "Cymatics - Terror Riser D 005.wav", ",", "Cymatics - Terror Riser E 001.wav", ",", "Cymatics - Terror Riser E 002.wav", ",", "Cymatics - Terror Riser E 003.wav", ",", "Cymatics - Terror Riser E 004.wav", ",", "Cymatics - Terror Riser E 005.wav", ",", "Cymatics - Terror Riser E 006.wav", ",", "Cymatics - Terror Riser E 007.wav", ",", "Cymatics - Terror Riser E 008.wav", ",", "Cymatics - Terror Riser E 009.wav", ",", "Cymatics - Terror Riser F 001.wav", ",", "Cymatics - Terror Riser F 002.wav", ",", "Cymatics - Terror Riser F 003.wav", ",", "Cymatics - Terror Riser F 004.wav", ",", "Cymatics - Terror Riser F 005.wav", ",", "Cymatics - Terror Riser F 006.wav", ",", "Cymatics - Terror Riser F# 001.wav", ",", "Cymatics - Terror Riser F# 002.wav", ",", "Cymatics - Terror Riser F# 003.wav", ",", "Cymatics - Terror Riser F# 004.wav", ",", "Cymatics - Terror Riser F# 005.wav", ",", "Cymatics - Terror Short Kick 001.wav", ",", "Cymatics - Terror Short Kick 002.wav", ",", "Cymatics - Terror Short Kick 003.wav", ",", "Cymatics - Terror Short Kick 004.wav", ",", "Cymatics - Terror Short Kick 005.wav", ",", "Cymatics - Terror Short Kick 006.wav", ",", "Cymatics - Terror Short Kick 007.wav", ",", "Cymatics - Terror Short Kick 008.wav", ",", "Cymatics - Terror Short Kick 009.wav", ",", "Cymatics - Terror Short Kick 010.wav", ",", "Cymatics - Terror Short Kick 011.wav", ",", "Cymatics - Terror Short Kick 012.wav", ",", "Cymatics - Terror Short Kick 013.wav", ",", "Cymatics - Terror Short Kick 014.wav", ",", "Cymatics - Terror Short Kick 015.wav", ",", "Cymatics - Terror Short Kick 016.wav", ",", "Cymatics - Terror Short Kick 017.wav", ",", "Cymatics - Terror Short Kick 018.wav", ",", "Cymatics - Terror Short Kick 019.wav", ",", "Cymatics - Terror Short Kick 020.wav", ",", "Cymatics - Terror Short Kick 021.wav", ",", "Cymatics - Terror Short Kick 022.wav", ",", "Cymatics - Terror Short Kick 023.wav", ",", "Cymatics - Terror Short Kick 024.wav", ",", "Cymatics - Terror Short Kick 025.wav", ",", "Cymatics - Terror Short Kick 026.wav", ",", "Cymatics - Terror Short Kick 027.wav", ",", "Cymatics - Terror Short Kick 028.wav", ",", "Cymatics - Terror Short Kick 029.wav", ",", "Cymatics - Terror Short Kick 030.wav", ",", "Cymatics - Terror Stab D 001.wav", ",", "Cymatics - Terror Stab Dm 002.wav", ",", "Cymatics - Terror Stab Dm 003.wav", ",", "Cymatics - Terror Stab Dm 004.wav", ",", "Cymatics - Terror Stab Em 005.wav", ",", "Cymatics - Terror Stab Em 006.wav", ",", "Cymatics - Terror Stab F 007.wav", ",", "Cymatics - Terror Stab F 008.wav", ",", "Cymatics - Terror Stab F#m 013.wav", ",", "Cymatics - Terror Stab F#m 014.wav", ",", "Cymatics - Terror Stab F#m7 015.wav", ",", "Cymatics - Terror Stab Fm 009.wav", ",", "Cymatics - Terror Stab Fm 010.wav", ",", "Cymatics - Terror Stab Fm 011.wav", ",", "Cymatics - Terror Stab Fm7 012.wav", ",", "Cymatics - Terror Synth Loop D  - 001.wav", ",", "Cymatics - Terror Synth Loop D  - 002.wav", ",", "Cymatics - Terror Synth Loop D  - 003.wav", ",", "Cymatics - Terror Synth Loop E  - 004.wav", ",", "Cymatics - Terror Synth Loop E  - 005.wav", ",", "Cymatics - Terror Synth Loop E  - 006.wav", ",", "Cymatics - Terror Synth Loop E  - 007.wav", ",", "Cymatics - Terror Synth Loop E  - 008.wav", ",", "Cymatics - Terror Synth Loop F  - 009.wav", ",", "Cymatics - Terror Synth Loop F  - 010.wav", ",", "Cymatics - Terror Synth Loop F  - 011.wav", ",", "Cymatics - Terror Synth Loop F  - 012.wav", ",", "Cymatics - Terror Synth Loop F  - 013.wav", ",", "Cymatics - Terror Synth Loop F  - 014.wav", ",", "Cymatics - Terror Synth Loop F  - 015.wav", ",", "Cymatics - Terror Synth Loop F  - 016.wav", ",", "Cymatics - Terror Synth Loop F  - 017.wav", ",", "Cymatics - Terror Synth Loop F  - 018.wav", ",", "Cymatics - Terror Synth Loop F  - 019.wav", ",", "Cymatics - Terror Synth Loop F  - 020.wav", ",", "Cymatics - Terror Synth Loop F  - 021.wav", ",", "Cymatics - Terror Synth Loop F  - 022.wav", ",", "Cymatics - Terror Synth Loop F  - 023.wav", ",", "Cymatics - Terror Synth Loop F  - 024.wav", ",", "Cymatics - Terror Synth Loop F  - 025.wav", ",", "Cymatics - Terror Synth Loop F#  - 026.wav", ",", "Cymatics - Terror Synth Loop F#  - 027.wav", ",", "Cymatics - Terror Synth Loop F#  - 028.wav", ",", "Cymatics - Terror Synth Loop F#  - 029.wav", ",", "Cymatics - Terror Synth Loop F#  - 030.wav", ",", "Cymatics - Terror Tom 001.wav", ",", "Cymatics - Terror Tom 002.wav", ",", "Cymatics - Terror Tom 003.wav", ",", "Cymatics - Terror Tom 004.wav", ",", "Cymatics - Terror Tom 005.wav", ",", "Cymatics - Terror Tom 006.wav", ",", "Cymatics - Terror Tom 007.wav", ",", "Cymatics - Terror Tom 008.wav", ",", "Cymatics - Terror Tom 009.wav", ",", "Cymatics - Terror Tom 010.wav", ",", "Cymatics - Terror Tom 011.wav", ",", "Cymatics - Terror Tom 012.wav", ",", "Cymatics - Terror Tom 013.wav", ",", "Cymatics - Terror Tom 014.wav", ",", "Cymatics - Terror Tom 015.wav", ",", "Cymatics - Terror Tom 016.wav", ",", "Cymatics - Terror Tom 017.wav", ",", "Cymatics - Terror Tom 018.wav", ",", "Cymatics - Terror Tom 019.wav", ",", "Cymatics - Terror Tom 020.wav", ",", "Cymatics - Terror Tom 021.wav", ",", "Cymatics - Terror Tom 022.wav", ",", "Cymatics - Terror Tom 023.wav", ",", "Cymatics - Terror Tom 024.wav", ",", "Cymatics - Terror Tom 025.wav", ",", "Cymatics - Terror Various Perc 001.wav", ",", "Cymatics - Terror Various Perc 002.wav", ",", "Cymatics - Terror Various Perc 003.wav", ",", "Cymatics - Terror Various Perc 004.wav", ",", "Cymatics - Terror Various Perc 005.wav", ",", "Cymatics - Terror Various Perc 006.wav", ",", "Cymatics - Terror Various Perc 007.wav", ",", "Cymatics - Terror Various Perc 008.wav", ",", "Cymatics - Terror Various Perc 009.wav", ",", "Cymatics - Terror Various Perc 010.wav", ",", "Cymatics - Terror Various Perc 011.wav", ",", "Cymatics - Terror Various Perc 012.wav", ",", "Cymatics - Terror Various Perc 013.wav", ",", "Cymatics - Terror Various Perc 014.wav", ",", "Cymatics - Terror Various Perc 015.wav", ",", "Cymatics - Terror Various Perc 016.wav", ",", "Cymatics - Terror Various Perc 017.wav", ",", "Cymatics - Terror Various Perc 018.wav", ",", "Cymatics - Terror Various Perc 019.wav", ",", "Cymatics - Terror Various Perc 020.wav", ",", "Cymatics - Terror Various Perc 021.wav", ",", "Cymatics - Terror Various Perc 022.wav", ",", "Cymatics - Terror Various Perc 023.wav", ",", "Cymatics - Terror Various Perc 024.wav", ",", "Cymatics - Terror Various Perc 025.wav", ",", "Cymatics - Terror Various Perc 026.wav", ",", "Cymatics - Terror Various Perc 027.wav", ",", "Cymatics - Terror Various Perc 028.wav", ",", "Cymatics - Terror Various Perc 029.wav", ",", "Cymatics - Terror Various Perc 030.wav", ",", "Cymatics - Terror Various Perc 031.wav", ",", "Cymatics - Terror Various Perc 032.wav", ",", "Cymatics - Terror Various Perc 033.wav", ",", "Cymatics - Terror Various Perc 034.wav", ",", "Cymatics - Terror Various Perc 035.wav", ",", "Cymatics - Terror Various Perc 036.wav", ",", "Cymatics - Terror Various Perc 037.wav", ",", "Cymatics - Terror Various Perc 038.wav", ",", "Cymatics - Terror Various Perc 039.wav", ",", "Cymatics - Terror Various Perc 040.wav", ",", "Cymatics - Terror Various Perc 041.wav", ",", "Cymatics - Terror Various Perc 042.wav", ",", "Cymatics - Terror Various Perc 043.wav", ",", "Cymatics - Terror Various Perc 044.wav", ",", "Cymatics - Terror Various Perc 045.wav", ",", "Cymatics - Terror Various Perc 046.wav", ",", "Cymatics - Terror Various Perc 047.wav", ",", "Cymatics - Terror Various Perc 048.wav", ",", "Cymatics - Terror Various Perc 049.wav", ",", "Cymatics - Terror Various Perc 050.wav", ",", "Cymatics - Terror Various Perc 051.wav", ",", "Cymatics - Terror Various Perc 052.wav", ",", "Cymatics - Terror Various Perc 053.wav", ",", "Cymatics - Terror Various Perc 054.wav", ",", "Cymatics - Terror Various Perc 055.wav", ",", "Cymatics - Terror Various Perc 056.wav", ",", "Cymatics - Terror Various Perc 057.wav", ",", "Cymatics - Terror Various Perc 058.wav", ",", "Cymatics - Terror Various Perc 059.wav", ",", "Cymatics - Terror Various Perc 060.wav", ",", "Cymatics - Terror Various Perc 061.wav", ",", "Cymatics - Terror Various Perc 062.wav", ",", "Cymatics - Terror Various Perc 063.wav", ",", "Cymatics - Terror Various Perc 064.wav", ",", "Cymatics - Terror Various Perc 065.wav", ",", "Cymatics - Terror Various Perc 066.wav", ",", "Cymatics - Terror Various Perc 067.wav", ",", "Cymatics - Terror Various Perc 068.wav", ",", "Cymatics - Terror Various Perc 069.wav", ",", "Cymatics - Terror Various Perc 070.wav", ",", "Cymatics - Terror Various Perc 071.wav", ",", "Cymatics - Terror Various Perc 072.wav", ",", "Cymatics - Terror Various Perc 073.wav", ",", "Cymatics - Terror Various Perc 074.wav", ",", "Cymatics - Terror Various Perc 075.wav", ",", "Cymatics - Terror Weird Snare 001.wav", ",", "Cymatics - Terror Weird Snare 002.wav", ",", "Cymatics - Terror Weird Snare 003.wav", ",", "Cymatics - Terror Weird Snare 004.wav", ",", "Cymatics - Terror Weird Snare 005.wav", ",", "Cymatics - Terror Weird Snare 006.wav", ",", "Cymatics - Terror Weird Snare 007.wav", ",", "Cymatics - Terror Weird Snare 008.wav", ",", "Cymatics - Terror Weird Snare 009.wav", ",", "Cymatics - Terror Weird Snare 010.wav", ",", "Cymatics - Terror Weird Snare 011.wav", ",", "Cymatics - Terror Weird Snare 012.wav", ",", "Cymatics - Terror Weird Snare 013.wav", ",", "Cymatics - Terror Weird Snare 014.wav", ",", "Cymatics - Terror Weird Snare 015.wav", ",", "Cymatics - Terror Weird Snare 016.wav", ",", "Cymatics - Terror Weird Snare 017.wav", ",", "Cymatics - Terror Weird Snare 018.wav", ",", "Cymatics - Terror Weird Snare 019.wav", ",", "Cymatics - Terror Weird Snare 020.wav", ",", "Cymatics - Terror Weird Snare 021.wav", ",", "Cymatics - Terror Weird Snare 022.wav", ",", "Cymatics - Terror Weird Snare 023.wav", ",", "Cymatics - Terror Weird Snare 024.wav", ",", "Cymatics - Terror Weird Snare 025.wav", ",", "Cymatics - Terror White Noise Down 001.wav", ",", "Cymatics - Terror White Noise Down 002.wav", ",", "Cymatics - Terror White Noise Down 003.wav", ",", "Cymatics - Terror White Noise Down 004.wav", ",", "Cymatics - Terror White Noise Down 005.wav", ",", "Cymatics - Terror White Noise Down 006.wav", ",", "Cymatics - Terror White Noise Down 007.wav", ",", "Cymatics - Terror White Noise Down 008.wav", ",", "Cymatics - Terror White Noise Down 009.wav", ",", "Cymatics - Terror White Noise Down 010.wav", ",", "Cymatics - Terror White Noise Down 011.wav", ",", "Cymatics - Terror White Noise Down 012.wav", ",", "Cymatics - Terror White Noise Down 013.wav", ",", "Cymatics - Terror White Noise Up 001.wav", ",", "Cymatics - Terror White Noise Up 002.wav", ",", "Cymatics - Terror White Noise Up 003.wav", ",", "Cymatics - Terror White Noise Up 004.wav", ",", "Cymatics - Terror White Noise Up 005.wav", ",", "Cymatics - Terror White Noise Up 006.wav", ",", "Cymatics - Terror White Noise Up 007.wav", ",", "Cymatics - Terror White Noise Up 008.wav", ",", "Cymatics - Terror White Noise Up 009.wav", ",", "Cymatics - Terror White Noise Up 010.wav", ",", "Cymatics - Terror White Noise Up and Down 001.wav", ",", "Cymatics - Terror White Noise Up and Down 002.wav", ",", "Cymatics Terror Bonus Snare 001.wav", ",", "Cymatics Terror Bonus Snare 002.wav", ",", "Cymatics Terror Bonus Snare 003.wav", ",", "Cymatics Terror Bonus Snare 004.wav", ",", "Cymatics Terror Bonus Snare 005.wav", ",", "Cymatics Terror Bonus Snare 006.wav", ",", "Cymatics Terror Bonus Snare 007.wav", ",", "Cymatics Terror Bonus Snare 008.wav", ",", "Cymatics Terror Bonus Snare 009.wav", ",", "Cymatics Terror Bonus Snare 010.wav", ",", "Cymatics Terror Bonus Snare 011.wav", ",", "Cymatics Terror Bonus Snare 012.wav", ",", "Cymatics Terror Bonus Snare 013.wav", ",", "Cymatics Terror Bonus Snare 014.wav", ",", "Cymatics Terror Bonus Snare 015.wav", ",", "Cymatics Terror Bonus Snare 016.wav", ",", "Cymatics Terror Bonus Snare 017.wav", ",", "Cymatics Terror Bonus Snare 018.wav", ",", "Cymatics Terror Bonus Snare 019.wav", ",", "Cymatics Terror Bonus Snare 020.wav", ",", "Cymatics Terror Bonus Snare 021.wav", ",", "Cymatics Terror Bonus Snare 022.wav", ",", "Cymatics Terror Bonus Snare 023.wav", ",", "Cymatics Terror Bonus Snare 024.wav", ",", "Cymatics Terror Bonus Snare 025.wav", ",", "Melody 001 - 140 bpm (Am).wav", ",", "Melody 001 - 85 bpm (Am).wav", ",", "Melody 002 - 140 bpm (Am).wav", ",", "Melody 002 - 85 bpm (Am).wav", ",", "Melody 003 - 140 bpm (Am).wav", ",", "Melody 003 - 85 bpm (Am).wav", ",", "Melody 004 - 140 bpm (Am).wav", ",", "Melody 004 - 85 bpm (Am).wav", ",", "Melody 005 - 140 bpm (Am).wav", ",", "Melody 005 - 85 bpm (Am).wav", ",", "Melody 006 - 140 bpm (Am).wav", ",", "Melody 006 - 85 bpm (Am).wav", ",", "Melody 007 - 140 bpm (Am).wav", ",", "Melody 007 - 85 bpm (Am).wav", ",", "Melody 008 - 140 bpm (Am).wav", ",", "Melody 008 - 85 bpm (Am).wav", ",", "Melody 009 - 140 bpm (Am).wav", ",", "Melody 009 - 85 bpm (Am).wav", ",", "Melody 010 - 140 bpm (Am).wav", ",", "Melody 010 - 85 bpm (Am).wav", ",", "Melody 011 - 140 bpm (Am).wav", ",", "Melody 011 - 85 bpm (Gm).wav", ",", "Melody 012 - 140 bpm (Am).wav", ",", "Melody 012 - 85 bpm (Gm).wav", ",", "Melody 013 - 140 bpm (Gm).wav", ",", "Melody 013 - 85 bpm (Gm).wav", ",", "Melody 014 - 140 bpm (Gm).wav", ",", "Melody 014 - 85 bpm (Gm).wav", ",", "Melody 015 - 140 bpm (Gm).wav", ",", "Melody 015 - 85 bpm (Gm).wav", ",", "Melody 016 - 140 bpm (Gm).wav", ",", "Melody 016 - 85 bpm (Gm).wav", ",", "Melody 017 - 140 bpm (Gm).wav", ",", "Melody 017 - 85 bpm (Gm).wav", ",", "Melody 018 - 140 bpm (Gm).wav", ",", "Melody 018 - 85 bpm (Gm).wav", ",", "Melody 019 - 140 bpm (Gm).wav", ",", "Melody 019 - 85 bpm (Gm).wav", ",", "Melody 020 - 140 bpm (Gm).wav", ",", "Melody 020 - 85 bpm (Bm).wav", ",", "Melody 021 - 140 bpm (Cm).wav", ",", "Melody 021 - 85 bpm (Bm).wav", ",", "Melody 022 - 140 bpm (Cm).wav", ",", "Melody 022 - 85 bpm (Bm).wav", ",", "Melody 023 - 140 bpm (Cm).wav", ",", "Melody 023 - 85 bpm (Bm).wav", ",", "Melody 024 - 140 bpm (Cm).wav", ",", "Melody 024 - 85 bpm (Bm).wav", ",", "Melody 025 - 140 bpm (Bm).wav", ",", "Melody 025 - 85 bpm (Bm).wav", ",", "Melody 026 - 140 bpm (Bm).wav", ",", "Melody 026 - 85 bpm (Cm).wav", ",", "Melody 027 - 140 bpm (Bm).wav", ",", "Melody 027 - 85 bpm (Cm).wav", ",", "Melody 028 - 140 bpm (Bm).wav", ",", "Melody 028 - 85 bpm (Cm).wav", ",", "Melody 029 - 140 bpm (Bm).wav", ",", "Melody 029 - 85 bpm (Cm).wav", ",", "Melody 030 - 140 bpm (Bm).wav", ",", "Melody 030 - 85 bpm (Cm).wav", ",", "Melody 031 - 140 bpm (Bm).wav", ",", "Melody 031 - 85 bpm (Em).wav", ",", "Melody 032 - 140 bpm (Bm).wav", ",", "Melody 032 - 85 bpm (Em).wav", ",", "Melody 033 - 140 bpm (Em).wav", ",", "Melody 033 - 85 bpm (Em).wav", ",", "Melody 034 - 140 bpm (Em).wav", ",", "Melody 034 - 85 bpm (Em).wav", ",", "Melody 035 - 140 bpm (Em).wav", ",", "Melody 035 - 85 bpm (Em).wav", ",", "Melody 036 - 140 bpm (Em).wav", ",", "Melody 036 - 85 bpm (Em).wav", ",", "Melody 037 - 140 bpm (Em).wav", ",", "Melody 037 - 85 bpm (A).wav", ",", "Melody 038 - 140 bpm (A).wav", ",", "Melody 038 - 85 bpm (A).wav", ",", "Melody 039 - 140 bpm (A).wav", ",", "Melody 039 - 85 bpm (A).wav", ",", "Melody 040 - 140 bpm (A).wav", ",", "Melody 040 - 85 bpm (A).wav", ",", "Melody 041 - 140 bpm (A).wav", ",", "Melody 041 - 85 bpm (A).wav", ",", "Melody 042 - 140 bpm (A).wav", ",", "Melody 042 - 85 bpm (A).wav", ",", "Melody 043 - 140 bpm (G).wav", ",", "Melody 043 - 85 bpm (G).wav", ",", "Melody 044 - 140 bpm (G).wav", ",", "Melody 044 - 85 bpm (G).wav", ",", "Melody 045 - 140 bpm (G).wav", ",", "Melody 045 - 85 bpm (G).wav", ",", "Melody 046 - 140 bpm (G).wav", ",", "Melody 046 - 85 bpm (G).wav", ",", "Melody 047 - 140 bpm (G).wav", ",", "Melody 047 - 85 bpm (B).wav", ",", "Melody 048 - 85 bpm (B).wav", ",", "Melody 049 - 85 bpm (B).wav", ",", "Melody 050 - 85 bpm (B).wav", ",", "Melody 051 - 85 bpm (B).wav", ",", "Melody 052 - 85 bpm (F).wav", ",", "Melody 053 - 85 bpm (F).wav", ",", "Melody 054 - 85 bpm (F).wav", ",", "Melody 055 - 85 bpm (F).wav", ",", "Melody 056 - 85 bpm (F).wav", ",", "Off-Beat Chord 001 - 140 bpm (Am).wav", ",", "Off-Beat Chord 001 - 85 bpm (Am).wav", ",", "Off-Beat Chord 002 - 140 bpm (Am).wav", ",", "Off-Beat Chord 002 - 85 bpm (Am).wav", ",", "Off-Beat Chord 003 - 140 bpm (Am).wav", ",", "Off-Beat Chord 003 - 85 bpm (Am).wav", ",", "Off-Beat Chord 004 - 140 bpm (Am).wav", ",", "Off-Beat Chord 004 - 85 bpm (Am).wav", ",", "Off-Beat Chord 005 - 140 bpm (Am).wav", ",", "Off-Beat Chord 005 - 85 bpm (Gm).wav", ",", "Off-Beat Chord 006 - 140 bpm (Gm).wav", ",", "Off-Beat Chord 006 - 85 bpm (Gm).wav", ",", "Off-Beat Chord 007 - 140 bpm (Gm).wav", ",", "Off-Beat Chord 007 - 85 bpm (Gm).wav", ",", "Off-Beat Chord 008 - 140 bpm (Gm).wav", ",", "Off-Beat Chord 008 - 85 bpm (Gm).wav", ",", "Off-Beat Chord 009 - 140 bpm (Gm).wav", ",", "Off-Beat Chord 009 - 85 bpm (Bm).wav", ",", "Off-Beat Chord 010 - 140 bpm (Cm).wav", ",", "Off-Beat Chord 010 - 85 bpm (Bm).wav", ",", "Off-Beat Chord 011 - 140 bpm (Cm).wav", ",", "Off-Beat Chord 011 - 85 bpm (Bm).wav", ",", "Off-Beat Chord 012 - 140 bpm (Cm).wav", ",", "Off-Beat Chord 012 - 85 bpm (Bm).wav", ",", "Off-Beat Chord 013 - 140 bpm (Cm).wav", ",", "Off-Beat Chord 013 - 85 bpm (Cm).wav", ",", "Off-Beat Chord 014 - 140 bpm (Bm).wav", ",", "Off-Beat Chord 014 - 85 bpm (Cm).wav", ",", "Off-Beat Chord 015 - 140 bpm (Bm).wav", ",", "Off-Beat Chord 015 - 85 bpm (Cm).wav", ",", "Off-Beat Chord 016 - 140 bpm (Bm).wav", ",", "Off-Beat Chord 016 - 85 bpm (Em).wav", ",", "Off-Beat Chord 017 - 140 bpm (Bm).wav", ",", "Off-Beat Chord 017 - 85 bpm (Em).wav", ",", "Off-Beat Chord 018 - 140 bpm (A).wav", ",", "Off-Beat Chord 018 - 85 bpm (Em).wav", ",", "Off-Beat Chord 019 - 140 bpm (A).wav", ",", "Off-Beat Chord 019 - 85 bpm (A).wav", ",", "Off-Beat Chord 020 - 140 bpm (G).wav", ",", "Off-Beat Chord 020 - 85 bpm (A).wav", ",", "Off-Beat Chord 021 - 140 bpm (G).wav", ",", "Off-Beat Chord 021 - 85 bpm (A).wav", ",", "Off-Beat Chord 022 - 140 bpm (Bm).wav", ",", "Off-Beat Chord 022 - 85 bpm (G).wav", ",", "Off-Beat Chord 023 - 140 bpm (Em).wav", ",", "Off-Beat Chord 023 - 85 bpm (G).wav", ",", "Off-Beat Chord 024 - 140 bpm (Em).wav", ",", "Off-Beat Chord 024 - 85 bpm (C).wav", ",", "Off-Beat Chord 025 - 85 bpm (B).wav", ",", "Off-Beat Chord 026 - 85 bpm (F).wav", ",", "Rhytm 001 - 85 bpm (xx).wav", ",", "Rhytm 002 - 85 bpm (xx).wav", ",", "Rhytm 003 - 85 bpm (xx).wav", ",", "Rhytm 004 - 140 bpm (xx).wav", ",", "Rhytm 005 - 140 bpm (xx).wav", ",", "Rhytm 006 - 140 bpm (xx).wav", ",", "Rhytm 007 - 140 bpm (xx).wav", ",", "Rhytm 008 - 140 bpm (xx).wav", ",", "SeamlessR Bonus Sample 001.wav", ",", "SeamlessR Bonus Sample 002.wav", ",", "SeamlessR Bonus Sample 003.wav", ",", "SeamlessR Bonus Sample 004.wav", ",", "SeamlessR Bonus Sample 005.wav", ",", "SeamlessR Bonus Sample 006.wav", ",", "SeamlessR Bonus Sample 007.wav", ",", "SeamlessR Bonus Sample 008.wav", ",", "SeamlessR Bonus Sample 009.wav", ",", "SeamlessR Bonus Sample 010.wav", ",", "SeamlessR Bonus Sample 011.wav", ",", "SeamlessR Bonus Sample 012.wav", ",", "SeamlessR Bonus Sample 013.wav", ",", "SeamlessR Bonus Sample 014.wav", ",", "SeamlessR Bonus Sample 015.wav", ",", "SeamlessR Bonus Sample 016.wav", ",", "SeamlessR Bonus Sample 017.wav", ",", "SeamlessR Bonus Sample 018.wav", ",", "SeamlessR Bonus Sample 019.wav", ",", "SeamlessR Bonus Sample 020.wav", ",", "SeamlessR Bonus Sample 021.wav", ",", "SeamlessR Bonus Sample 022.wav", ",", "SeamlessR Bonus Sample 023.wav", ",", "SeamlessR Bonus Sample 024.wav", ",", "SeamlessR Bonus Sample 025.wav" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 430.333343505859375, 657.4285888671875, 200.0, 22.0 ],
					"prefix" : "APPLE SSD SM0512L:/Users/weiqi/Documents/Cymatics Terror Drums/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 291.0, 545.0, 87.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.0, 158.4285888671875, 68.0, 22.0 ],
					"text" : "resetMatrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.0, 195.642822265625, 81.0, 22.0 ],
					"text" : "Sound Clap 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 344.0, 193.7857666015625, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 158.0, 191.642822265625, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 216.0, 158.4285888671875, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 399.333343505859375, 463.4285888671875, 50.0, 35.0 ],
					"text" : "0 Claves"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 430.333343505859375, 414.4285888671875, 63.0, 23.0 ],
					"text" : "listfunnel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 430.333343505859375, 373.78570556640625, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.0, 230.28564453125, 66.0, 22.0 ],
					"text" : "PrintMatrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 291.0, 158.4285888671875, 97.0, 22.0 ],
					"text" : "udpreceive 6161"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 132.0, 225.9285888671875, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 188.0, 158.4285888671875, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 188.0, 191.642822265625, 63.0, 22.0 ],
					"text" : "metro 16n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 188.0, 225.9285888671875, 75.0, 22.0 ],
					"text" : "counter 0 15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 373.78570556640625, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 188.0, 254.0, 91.0, 22.0 ],
					"text" : "PrintColumn $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 333.0, 402.4285888671875, 61.0, 22.0 ],
					"text" : "tempo $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 344.0, 373.78570556640625, 50.0, 22.0 ],
					"varname" : "drumpat[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 291.0, 373.78570556640625, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"patching_rect" : [ 291.0, 431.4285888671875, 103.0, 22.0 ],
					"text" : "transport"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 291.0, 322.0, 228.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "commandParser",
						"parameter_enable" : 0
					}
,
					"text" : "js commandParser"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 1,
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"order" : 0,
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"order" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 0,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"order" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"order" : 1,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"order" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-90", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "commandParser.js",
				"bootpath" : "~/Documents/GitHub/tempoSYNTH/MAX",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
