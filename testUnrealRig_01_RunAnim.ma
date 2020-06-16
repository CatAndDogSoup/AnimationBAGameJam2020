//Maya ASCII 2019 scene
//Name: testUnrealRig_01_RunAnim.ma
//Last modified: Sun, Jun 14, 2020 08:06:53 PM
//Codeset: UTF-8
file -rdi 1 -ns "testUnrealRig_01" -rfn "testUnrealRig_01RN" -op "v=0;" -typ
		 "mayaAscii" "/media/aurora/gDrive/gDrive/PERSONAL/TESTING_GROUNDS//scenes/testUnrealRig_01.ma";
file -r -ns "testUnrealRig_01" -dr 1 -rfn "testUnrealRig_01RN" -op "v=0;" -typ "mayaAscii"
		 "/media/aurora/gDrive/gDrive/PERSONAL/TESTING_GROUNDS//scenes/testUnrealRig_01.ma";
requires maya "2019";
requires -dataType "HIKCharacter" -dataType "HIKCharacterState" -dataType "HIKEffectorState"
		 -dataType "HIKPropertySetState" "mayaHIK" "1.0_HIK_2016.5";
requires "mtoa" "4.0.3";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Linux 5.4.0-7634-generic #38~1591219791~20.04~6b1c5de-Ubuntu SMP Thu Jun 4 02:56:10 UTC 2 x86_64";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "21F49C00-0004-1552-5EE6-6E2200000237";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 565.66473441149208 191.80571390166699 377.88900581856706 ;
	setAttr ".r" -type "double3" -9.3383527296029119 59.39999999999992 -1.5620313903020519e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "21F49C00-0004-1552-5EE6-6E2200000238";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 695.59387129111872;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "21F49C00-0004-1552-5EE6-6E2200000239";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "21F49C00-0004-1552-5EE6-6E220000023A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "21F49C00-0004-1552-5EE6-6E220000023B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "21F49C00-0004-1552-5EE6-6E220000023C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 75.699397489598482;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "21F49C00-0004-1552-5EE6-6E220000023D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1004.3467554890582 82.588728914292773 0.90995979309104058 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "21F49C00-0004-1552-5EE6-6E220000023E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1004.6571278416583;
	setAttr ".ow" 550.15113592753892;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -0.31037235260009766 81.306922912597656 0.90995979309082031 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "21F49C00-0004-1552-5EE6-6E220000023F";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "21F49C00-0004-1552-5EE6-6E2300000254";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "21F49C00-0004-1552-5EE6-6E2300000255";
createNode displayLayerManager -n "layerManager";
	rename -uid "21F49C00-0004-1552-5EE6-6E2300000256";
createNode displayLayer -n "defaultLayer";
	rename -uid "21F49C00-0004-1552-5EE6-6E2300000257";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "21F49C00-0004-1552-5EE6-6E2300000258";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "21F49C00-0004-1552-5EE6-6E2300000259";
	setAttr ".g" yes;
createNode reference -n "testUnrealRig_01RN";
	rename -uid "21F49C00-0004-1552-5EE6-6E3A0000028D";
	setAttr -s 363 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"testUnrealRig_01RN"
		"testUnrealRig_01RN" 0
		"testUnrealRig_01RN" 844
		2 "|testUnrealRig_01:Character1_Ctrl_Reference" "scale" " -type \"double3\" 1 1 1"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translate" " -type \"double3\" -0.00010525807738304138 83.0767822265625 -1.59481402486562729"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotate" " -type \"double3\" -0.41112730412930337 1.37107846966617641 12.49532841941117134"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translate" " -type \"double3\" 8.91000024601817131 18.74410936236381531 -21.17378459870815277"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotate" " -type \"double3\" 0 0 25.66905812317486379"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translate" " -type \"double3\" -8.91000270843505859 13.93495659530162811 9.85580621659755707"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotate" " -type \"double3\" 0 0 -16.55996167706656763"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translate" " -type \"double3\" 17.31229939311742783 97.34644776582717896 22.39557322114706039"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotate" " -type \"double3\" -90.19078039754388953 -45.68758842863292813 90.10682709400447266"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translate" " -type \"double3\" -17.9442470520734787 103.82881787419319153 -7.3468586802482605"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotate" " -type \"double3\" 87.98656805217221688 93.79289782237208328 87.96069353793235734"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translate" " -type \"double3\" 8.54790215566754341 43.25532756745815277 2.4245627149939537"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotate" " -type \"double3\" 0.39075594522761453 -0.51944550561254288 45.34806071822971063"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translate" " -type \"double3\" -9.01266317069530487 48.43095244467258453 18.28188361600041389"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotate" " -type \"double3\" 0.11592811935023101 -0.14226174525947582 12.077671763761618"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translate" " -type \"double3\" 17.34092442691326141 112.91710969805717468 7.75065473094582558"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotate" " -type \"double3\" -90.19076572415961834 -45.68759465146293053 90.10682651165608092"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translate" " -type \"double3\" -17.98952794820070267 122.98237380385398865 -5.93672410398721695"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotate" " -type \"double3\" 92.01253607524927247 -86.20729025265528378 -92.03833235087085995"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translate" " -type \"double3\" -0.3176276502199471 96.0287628173828125 1.27546329749748111"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotate" " -type \"double3\" 5.7576326315460873e-06 6.9239266265369458e-06 12.50026953668797702"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translate" " -type \"double3\" -0.31763174943625927 134.67887395620346069 9.84417876601219177"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotate" " -type \"double3\" 5.7576325909761305e-06 6.9239265128709713e-06 12.50026953668797702"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translate" " -type \"double3\" 8.91000626981258392 10.14271287992596626 -14.16743135452270508"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotate" " -type \"double3\" -1.3742436699897271e-05 -3.1180228266446533e-05 25.66905502070611789"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translate" " -type \"double3\" -8.91082358360290527 11.95195220783352852 20.98598441481590271"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotate" " -type \"double3\" -0.0010316202265616809 -0.00072415972450723116 -16.55996502319841213"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translate" " -type \"double3\" 17.38962998241186142 134.67901128530502319 9.8442070260643959"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotate" " -type \"double3\" 91.61483502543265445 85.5706698040097109 91.6405771122002335"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translate" " -type \"double3\" -18.02492159605026245 134.67928594350814819 9.84427317976951599"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotate" " -type \"double3\" 90.16823583351455795 36.96321681066027054 90.13464426412906505"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translate" " -type \"double3\" -0.31763460848014802 152.65409600734710693 13.82861368730664253"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotate" " -type \"double3\" 5.7573914907510433e-06 6.9241337283845045e-06 12.49826146058758347"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translate" " -type \"double3\" 8.90712434053421021 83.2710900604724884 -1.48626900371164083"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotate" " -type \"double3\" 1.0679379277311023 0.45996897573059986 -3.88743256841981344"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translate" " -type \"double3\" -8.90733485668897629 82.882476806640625 -1.70335904601961374"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotate" " -type \"double3\" 0.34559071469299013 0.1335794249462823 -31.80419420787238849"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translate" " -type \"double3\" 15.97262662649154663 93.04643318057060242 31.92830292135477066"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotate" " -type \"double3\" 90.19075097269114849 -45.68776041653254083 -90.10697423396511851"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translate" " -type \"double3\" 17.49901460111141205 89.12281450629234314 34.28410962969064713"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotate" " -type \"double3\" 2.9315542457114474 -46.27592228502575011 88.01378232131749257"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translate" " -type \"double3\" 17.79546879976987839 87.30414676666259766 33.27418876439332962"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotate" " -type \"double3\" 0.046362974242123149 -44.31584917580826755 90.10092629220478955"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translate" " -type \"double3\" 17.67202692478895187 86.61092108488082886 31.61996746063232422"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotate" " -type \"double3\" 0.041384896124401181 -44.31229154704794126 90.10438627256425548"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translate" " -type \"double3\" 16.97873477637767792 86.90159592032432556 29.48293416202068329"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotate" " -type \"double3\" 0.041964642582496492 -44.31234646769083696 90.10415776558500056"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translate" " -type \"double3\" -16.5905662328004837 94.90088242292404175 -4.27266031503677368"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotate" " -type \"double3\" 94.25640799836577344 88.20598129139135324 96.28604973091371733"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translate" " -type \"double3\" -18.114841029047966 90.99565312266349792 -6.00931169092655182"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotate" " -type \"double3\" 1.9783228551816554 -5.79022819290263957 89.93359139177103145"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translate" " -type \"double3\" -18.4140990749001503 90.5482347309589386 -7.6255144476890564"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotate" " -type \"double3\" 1.97834107254551061 -5.79020993604605216 89.93363886880761982"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translate" " -type \"double3\" -18.29392632842063904 91.22012799978256226 -9.06739364564418793"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotate" " -type \"double3\" 1.9783001267912359 -5.79024379011791979 89.93357355738932313"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translate" " -type \"double3\" -17.60390063375234604 92.80155330896377563 -10.12282875180244446"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotate" " -type \"double3\" 1.97820767230039718 -5.7902381346788605 89.93425044206406938"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translate" " -type \"double3\" -0.15013466688105837 89.1965203583240509 -0.23862222069874406"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotate" " -type \"double3\" -0.41112739344952909 1.3710786417197165 12.4953283552212504"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotate" " -type \"double3\" 0.35309434642397403 1.51196426232886716 -18.90513718189271941"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotate" " -type \"double3\" -0.68916651939835716 -0.00027019978130057067 48.57437349384116487"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotate" " -type \"double3\" -0.53867046823097353 -0.31118766390466474 -20.29966117177069052"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotate" " -type \"double3\" 0 -2.8630341985646025e-05 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotate" " -type \"double3\" -0.7457094039932225 0.78283341030023079 -41.70089214090450724"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotate" " -type \"double3\" -0.22750063137510781 -3.9007153651616171e-05 44.05789094295204933"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotate" " -type \"double3\" -0.13852066050735548 -0.11797467577572925 -27.75930208993939985"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotate" " -type \"double3\" 0 -2.6791491242617197e-05 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine" 
		"rotate" " -type \"double3\" 0.41113252907087167 -1.37107199871163132 -0.0048971480734072799"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1" 
		"rotate" " -type \"double3\" 0 0 1.7631804536373208e-06"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2" 
		"rotate" " -type \"double3\" 0 0 -1.7631804601599427e-06"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder" 
		"rotate" " -type \"double3\" 1.7631804599890656e-06 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm" 
		"rotate" " -type \"double3\" 89.88267716262845397 94.5484817151018575 89.88945853584424128"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotate" " -type \"double3\" -0.0059084599772175539 -0.0050714585337494926 48.73996578911241073"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotate" " -type \"double3\" -1.3831515973409716e-05 4.0329679499880324e-06 8.8133371051228285e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1" 
		"rotate" " -type \"double3\" 1.4361995065834538e-05 -6.8247002342180837e-06 2.2824145769303373e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3" 
		"rotate" " -type \"double3\" -1.409790379825935e-06 -3.4951495767524537e-06 -3.0870576970870024e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4" 
		"rotate" " -type \"double3\" 9.0296244391042614e-06 -7.0147717131156102e-06 -3.4351058293878863e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1" 
		"rotate" " -type \"double3\" 1.4432222745982436e-05 2.6646659021636208e-06 -1.000596506451393e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2" 
		"rotate" " -type \"double3\" -3.2365023776763015e-06 3.4269385432856999e-06 1.0410109057219995e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3" 
		"rotate" " -type \"double3\" -9.0692478331514983e-06 0 7.8596814607116639e-06"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4" 
		"rotate" " -type \"double3\" -9.7388305103651091e-06 -1.2207588828444474e-05 -6.6432886364408293e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1" 
		"rotate" " -type \"double3\" 1.693134345216639e-05 2.6756307964041666e-06 -1.5170750520500085e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotate" " -type \"double3\" -4.2507695492267088e-06 -2.2212186259298106e-06 6.407494843272733e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotate" " -type \"double3\" -1.1993723027776414e-05 -2.9819548202191998e-06 1.1666780071560252e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotate" " -type \"double3\" 5.5671869931183377e-06 1.0649627064982777e-06 -1.1703243378863964e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotate" " -type \"double3\" 1.6930399985346682e-05 2.6756307964206867e-06 -1.517173261812984e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2" 
		"rotate" " -type \"double3\" -1.1044338727563125e-05 0 7.9124122161461729e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3" 
		"rotate" " -type \"double3\" 1.0704191456274077e-05 0 -1.0508705575151951e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4" 
		"rotate" " -type \"double3\" 1.0704191038826473e-05 0 1.0508705105576813e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1" 
		"rotate" " -type \"double3\" 1.6930359754709301e-05 2.6758853911513772e-06 -1.5171732618082579e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2" 
		"rotate" " -type \"double3\" -1.5446732953655287e-08 -1.3092105274126051e-06 8.1401046464140521e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3" 
		"rotate" " -type \"double3\" -1.6015362934389646e-05 -1.0869342140042224e-06 8.1681321416955947e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4" 
		"rotate" " -type \"double3\" -1.3880006778994322e-05 1.8704836404396837e-06 -7.0060008913151889e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder" 
		"rotate" " -type \"double3\" 1.7631804587304181e-06 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm" 
		"rotate" " -type \"double3\" -89.98413938287600899 126.28999214904013115 -90.0314203567481286"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotate" " -type \"double3\" 0.002322246611090551 0.0020596056988724664 49.24610711847268618"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotate" " -type \"double3\" 6.4395929651904255e-05 7.185524218160273e-05 -0.00018196188019501129"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotate" " -type \"double3\" -2.2539599524055304e-05 -2.0861524821103987e-05 -4.6291958571911594e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotate" " -type \"double3\" 3.2316804848304655e-05 4.755581135741461e-06 -4.8504661760793201e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotate" " -type \"double3\" -3.8732591124772877e-05 -1.4026944669279341e-05 2.1095189648770416e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotate" " -type \"double3\" -5.4686623804722848e-07 1.4615814153139608e-05 4.7789759951032073e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotate" " -type \"double3\" 5.433205183469882e-06 -1.6781693877797417e-05 -2.4115201491430805e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotate" " -type \"double3\" -2.4660260747857299e-06 1.6793321351552518e-06 5.0174393100595557e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotate" " -type \"double3\" 7.4839065754589041e-06 1.8500124733209658e-05 -6.193495104246236e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotate" " -type \"double3\" -1.2001912213362209e-05 -1.2254161610461002e-06 6.3739832523184947e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotate" " -type \"double3\" 5.4332070037365672e-06 -1.6781693876981305e-05 -2.4115201081941837e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotate" " -type \"double3\" -3.2191494345798113e-05 -1.9437077373897779e-05 6.1708000637149932e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotate" " -type \"double3\" 1.9080600382314828e-06 2.2927958982156325e-05 1.4683470055661027e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotate" " -type \"double3\" -2.3240088451884669e-06 1.2784931522335224e-06 -2.9498507082088383e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotate" " -type \"double3\" 5.4332057288283376e-06 -1.6781693876856056e-05 -2.4115201367803581e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotate" " -type \"double3\" -2.9940196199112543e-06 1.4957164092782037e-05 3.3121656987706165e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotate" " -type \"double3\" 2.0344449641117844e-05 2.9068493596853169e-05 -4.5612010815122547e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotate" " -type \"double3\" 8.6189897671400694e-06 -9.5013665328414158e-06 4.4017384278923588e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotate" " -type \"double3\" 5.4332072766093077e-06 -1.6781808814737076e-05 -2.4115215784370683e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotate" " -type \"double3\" -3.9267530564893589e-05 -5.7122077011213578e-06 0.00068231715642125279"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotate" " -type \"double3\" -1.2724228020795873e-05 2.0841384208384813e-05 -1.5857435525480373e-07"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4" 
		"rotate" " -type \"double3\" 1.4147937827499845e-06 -2.0150959732256751e-06 6.0812531240513026e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck" 
		"rotate" " -type \"double3\" 0 0 -0.0019668536115526555"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head" 
		"rotateX" " -av"
		2 "testUnrealRig_01:HIKSolverNode1" "nodeState" " 0"
		2 "testUnrealRig_01:HIKSolverNode1" "InputActive" " 1"
		2 "testUnrealRig_01:HIKSolverNode1" "InputStance" " 0"
		2 "testUnrealRig_01:HIKSolverNode1" "InputStanceMask" " 0"
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference.translateX" 
		"testUnrealRig_01RN.placeHolderList[1]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference.translateY" 
		"testUnrealRig_01RN.placeHolderList[2]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference.translateZ" 
		"testUnrealRig_01RN.placeHolderList[3]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference.rotateX" 
		"testUnrealRig_01RN.placeHolderList[4]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference.rotateY" 
		"testUnrealRig_01RN.placeHolderList[5]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[6]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[7]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[8]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[9]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[10]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[11]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[12]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[13]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[14]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[15]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[16]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[17]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[18]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[19]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[20]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[21]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[22]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[23]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[24]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[25]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[26]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[27]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[28]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[29]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[30]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[31]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[32]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[33]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[34]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[35]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[36]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[37]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[38]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[39]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[40]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[41]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[42]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[43]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[44]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[45]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[46]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[47]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[48]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[49]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[50]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[51]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[52]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[53]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[54]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[55]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[56]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[57]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[58]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[59]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[60]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[61]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[62]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[63]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[64]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[65]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[66]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[67]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[68]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[69]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[70]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[71]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[72]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[73]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[74]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[75]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[76]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[77]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[78]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[79]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[80]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[81]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[82]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[83]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[84]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[85]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[86]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[87]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[88]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[89]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[90]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[91]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[92]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[93]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[94]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[95]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[96]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[97]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[98]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[99]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[100]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[101]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[102]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[103]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[104]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[105]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[106]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[107]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[108]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[109]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[110]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[111]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[112]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[113]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[114]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[115]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[116]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[117]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[118]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[119]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[120]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[121]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[122]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[123]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[124]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[125]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[126]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[127]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[128]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[129]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[130]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[131]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[132]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[133]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[134]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[135]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[136]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[137]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[138]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[139]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[140]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[141]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[142]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[143]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[144]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[145]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[146]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[147]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[148]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[149]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[150]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[151]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[152]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[153]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[154]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[155]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[156]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[157]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[158]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[159]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[160]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[161]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[162]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[163]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[164]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[165]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[166]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[167]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[168]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[169]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[170]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[171]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[172]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[173]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[174]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[175]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.rotateY" 
		"testUnrealRig_01RN.placeHolderList[176]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.rotateX" 
		"testUnrealRig_01RN.placeHolderList[177]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.translateZ" 
		"testUnrealRig_01RN.placeHolderList[178]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.translateY" 
		"testUnrealRig_01RN.placeHolderList[179]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.translateX" 
		"testUnrealRig_01RN.placeHolderList[180]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[181]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[182]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[183]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[184]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[185]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[186]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[187]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot.rotateY" 
		"testUnrealRig_01RN.placeHolderList[188]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot.rotateX" 
		"testUnrealRig_01RN.placeHolderList[189]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[190]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase.rotateY" 
		"testUnrealRig_01RN.placeHolderList[191]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase.rotateX" 
		"testUnrealRig_01RN.placeHolderList[192]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[193]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[194]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[195]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[196]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[197]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[198]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[199]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot.rotateY" 
		"testUnrealRig_01RN.placeHolderList[200]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot.rotateX" 
		"testUnrealRig_01RN.placeHolderList[201]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[202]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase.rotateY" 
		"testUnrealRig_01RN.placeHolderList[203]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase.rotateX" 
		"testUnrealRig_01RN.placeHolderList[204]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[205]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine.rotateY" 
		"testUnrealRig_01RN.placeHolderList[206]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine.rotateX" 
		"testUnrealRig_01RN.placeHolderList[207]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[208]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[209]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[210]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[211]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[212]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[213]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[214]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder.rotateY" 
		"testUnrealRig_01RN.placeHolderList[215]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder.rotateX" 
		"testUnrealRig_01RN.placeHolderList[216]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[217]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[218]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[219]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[220]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[221]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[222]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[223]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand.rotateY" 
		"testUnrealRig_01RN.placeHolderList[224]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand.rotateX" 
		"testUnrealRig_01RN.placeHolderList[225]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[226]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[227]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[228]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[229]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[230]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[231]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[232]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[233]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[234]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[235]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[236]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[237]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[238]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[239]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[240]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[241]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[242]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[243]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[244]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[245]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[246]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[247]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[248]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[249]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[250]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[251]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[252]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[253]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[254]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[255]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[256]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[257]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[258]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[259]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[260]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[261]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[262]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[263]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[264]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[265]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[266]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[267]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[268]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[269]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[270]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[271]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[272]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[273]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[274]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[275]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[276]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[277]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[278]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[279]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[280]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[281]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[282]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[283]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[284]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[285]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[286]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder.rotateY" 
		"testUnrealRig_01RN.placeHolderList[287]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder.rotateX" 
		"testUnrealRig_01RN.placeHolderList[288]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[289]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[290]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[291]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[292]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[293]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[294]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[295]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand.rotateY" 
		"testUnrealRig_01RN.placeHolderList[296]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand.rotateX" 
		"testUnrealRig_01RN.placeHolderList[297]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[298]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[299]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[300]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[301]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[302]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[303]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[304]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[305]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[306]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[307]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[308]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[309]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[310]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[311]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[312]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[313]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[314]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[315]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[316]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[317]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[318]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[319]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[320]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[321]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[322]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[323]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[324]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[325]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[326]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[327]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[328]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[329]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[330]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[331]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[332]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[333]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[334]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[335]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[336]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[337]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[338]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[339]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[340]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[341]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[342]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[343]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[344]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[345]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[346]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[347]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[348]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[349]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[350]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[351]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[352]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[353]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[354]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[355]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[356]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[357]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[358]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck.rotateY" 
		"testUnrealRig_01RN.placeHolderList[359]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck.rotateX" 
		"testUnrealRig_01RN.placeHolderList[360]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[361]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head.rotateY" 
		"testUnrealRig_01RN.placeHolderList[362]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head.rotateX" 
		"testUnrealRig_01RN.placeHolderList[363]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "21F49C00-0004-1552-5EE6-6E7E00000379";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2146\n            -height 792\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n"
		+ "\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2146\\n    -height 792\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2146\\n    -height 792\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "21F49C00-0004-1552-5EE6-6E7E0000037A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 18 -ast 1 -aet 18 ";
	setAttr ".st" 6;
createNode animCurveTA -n "Character1_Ctrl_Hips_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000037B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 12.495326140029951 9 12.495329380538367 18 12.495326140159385;
createNode animCurveTA -n "Character1_Ctrl_Hips_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000037C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.3710812277741584 9 1.371077444745946 18 1.3710809963574166;
createNode animCurveTA -n "Character1_Ctrl_Hips_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000037D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.41112873731389721 9 -0.4111267714323073 18 -0.41112867933881037;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000037E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.23861610889434814 9 -0.23862504959106445 18 -0.23861730098724365;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000037F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 89.196525573730469 9 89.196517944335938 18 89.196525573730469;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000380";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.15033188462257385 9 -0.15004338324069977 18 -0.15032947063446045;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000381";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.41112873600758543 9 -0.41112676129857939 18 -0.41112867047594132;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000382";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.3710812206888907 9 1.3710774133707044 18 1.3710809619584505;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000383";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 12.4953260772714 9 12.495329284242503 18 12.495325955169552;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000384";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.594807505607605 9 -1.594817042350769 18 -1.59480881690979;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000385";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 83.0767822265625 9 83.0767822265625 18 83.0767822265625;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000386";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.00030279159545898438 9 -1.3828277587890625e-05 18 -0.00030088424682617188;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000387";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.0048992292381772459 9 -0.0048961847914280382 18 -0.0048975625492409143;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000388";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.3710743443655304 9 -1.3710709130089693 18 -1.3710746633039064;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000389";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.41113230795858935 9 0.41113263141427092 18 0.41113222457883902;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000038A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 2.5792811207494524e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000038B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000038C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000038D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 -2.5792811302911163e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000038E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000038F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000390";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.0180587332570887e-06 9 6.4105543885598754e-06 18 4.0325334333933777e-06;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000391";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.0751296387564745e-06 9 6.8131016901178333e-06 18 6.5367441006225192e-06;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000392";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 12.500265383107159 9 12.500271205379834 18 12.50026650745933;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000393";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.2754827737808228 9 1.2754542827606201 18 1.2754815816879272;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000394";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 96.028762817382812 9 96.028762817382812 18 96.028762817382812;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000395";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.31782656908035278 9 -0.31753557920455933 18 -0.31782412528991699;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000396";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.0180587332570887e-06 9 6.4105543885598754e-06 18 4.0325339873085119e-06;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000397";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.0751296387564745e-06 9 6.8131016901178333e-06 18 6.5367456525421024e-06;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000398";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 12.500265383107159 9 12.500271205379834 18 12.500266507459324;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000399";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.8441944122314453 9 9.8441715240478516 18 9.8441944122314453;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000039A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 134.67886352539062 9 134.67887878417969 18 134.67886352539062;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000039B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.31782960891723633 9 -0.31754016876220703 18 -0.31782722473144531;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000039C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.113505760600319 9 89.785756677528568 18 90.113538553470548;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000039D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 39.724841967882995 9 119.92399496952888 18 39.724811541708171;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000039E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.17761048816854 9 89.746165166235627 18 90.177632991011563;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000039F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 48.742193728620272 9 48.738934571397344 18 48.742209011181799;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.8044126649381605e-05 9 -0.0074364283365626876 18 7.5763621816086048e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.9768287608507312e-05 9 -0.0086248258449794554 18 -2.7122336672467722e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.47266550846659e-05 9 -7.8093986454085259e-06 18 4.8039644381745105e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.274617031107329e-05 9 0 18 6.2462122423114394e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.0988801035017567e-06 9 -2.44450135861516e-05 18 1.4702354424624887e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9412565194479472e-19 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 2.5792811300411476e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.549733891343891 9 89.854280914282697 18 90.549686066631949;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -75.966297436313027 9 -156.16245245939132 18 -75.966285878325593;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90.562909532562358 9 -89.970831768230425 18 -90.562862745436007;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -20.909872055053711 9 42.439807891845703 18 -20.909900665283203;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 96.286979675292969 9 97.836830139160156 18 96.286972045898438;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.284223556518555 9 17.325294494628906 18 17.284215927124023;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.549778762938885 9 89.854305784823168 18 90.549691599394592;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -75.966252438207022 9 -156.16246005151277 18 -75.966237852645691;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90.562965019114088 9 -89.970832085661172 18 -90.562884744861506;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -14.436314582824707 9 18.020051956176758 18 -14.436323165893555;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 122.18730163574219 9 108.62633514404297 18 122.18730163574219;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.347837448120117 9 17.337724685668945 18 17.34782600402832;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.149975061295407 9 89.591323421387102 18 90.149990634283029;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 27.224596518682876 9 107.42386517325198 18 27.224564377910891;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.098175733571878 9 89.643104765258414 18 90.098204364135853;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.8442239761352539 9 9.8441991806030273 18 9.8442230224609375;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 134.67900085449219 9 134.67901611328125 18 134.67900085449219;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.389425277709961 9 17.389724731445312 18 17.389427185058594;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90.238015503367095 9 -89.93579631745591 18 -90.239108789067544;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 60.235628582194408 9 156.86372614283729 18 60.235780214027692;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90.274440933776333 9 -89.849771236459276 18 -90.275385961896447;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 49.243261695722673 9 49.247424142716987 18 49.243436434554241;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.00033818712533828944 9 0.0031694412346500163 18 2.194130051392875e-05;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.00037049564556848504 9 0.0035686015984584471 18 3.3156298574566952e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.00011581817557730086 9 -0.00021257696633235156 18 -0.0001256594364735773;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.2176511573175014e-05 9 9.022082606321787e-05 18 4.7516099862887406e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.8290590677708765e-05 9 7.1850400834246178e-05 18 5.1544397502818631e-05;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.765026077791789e-19 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 2.5792811281999258e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.145570190609135 9 89.735231313300659 18 90.145582690801973;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 23.492995420981057 9 120.11700501927045 18 23.492986633267218;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.028500255822834 9 89.740596042102467 18 90.028514796704982;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 42.431869506835938 9 -30.387298583984375 18 42.431922912597656;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 97.961532592773438 9 106.54453277587891 18 97.961540222167969;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -17.956438064575195 9 -17.938604354858398 18 -17.956632614135742;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90.145507651842181 9 -89.73531655590719 18 -90.145509777736962;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -23.492879765797685 9 -120.11679166805166 18 -23.492861385992757;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.028464716365662 9 89.740776159496818 18 90.028462225834687;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.947786331176758 9 -16.991840362548828 18 17.947843551635742;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 108.60388946533203 9 129.63755798339844 18 108.60389709472656;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -17.968605041503906 9 -17.999212265014648 18 -17.968790054321289;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90.448055372382953 9 -89.863902403331394 18 -90.449798745734739;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 72.73571509192027 9 169.36399314325396 18 72.735866100269661;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90.398168324190451 9 -89.939931171768279 18 -90.399997386414043;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.8442888259887695 9 9.8442659378051758 18 9.8442878723144531;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 134.67927551269531 9 134.67929077148438 18 134.67927551269531;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -18.025119781494141 9 -18.024829864501953 18 -18.025117874145508;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -57.909605435667181 9 -0.8516404472885426 18 -57.909518726224611;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.74536619111033875 9 1.8667896552928718 18 0.74538381517259122;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.25654764980436762 9 0.63527149896394919 18 -0.25655100694839583;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 38.147353126187397 9 53.400594349726624 18 38.147186399700139;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4612228246203349e-05 9 -0.0003885003058571635 18 -3.5930122392684234e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.73066394234105037 9 -0.66995914077916774 18 -0.73066709503622596;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -29.947590128920254 9 -15.834048340175752 18 -29.947526243107767;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.40677587510058444 9 -0.26694397757969618 18 -0.4067801767376889;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.3783920057851794 9 -0.61285649942016962 18 -0.37839556569657662;
createNode animCurveTA -n "Character1_Ctrl_LeftToeBase_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.1941577642839552e-21 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftToeBase_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.6082277490192535e-05 9 -2.9809731837827354e-05 18 -2.664358391770998e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftToeBase_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftAnkleEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftAnkleEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftAnkleEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -37.203737988108145 9 49.21470799507123 18 -37.203756857719931;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftAnkleEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 35.606285095214844 9 -47.454845428466797 18 35.606285095214844;
createNode animCurveTL -n "Character1_Ctrl_LeftAnkleEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 11.383747100830078 9 22.150905609130859 18 11.383762359619141;
createNode animCurveTL -n "Character1_Ctrl_LeftAnkleEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.9099969863891602 9 8.9100017547607422 18 8.9099960327148438;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.37833942318709246 9 0.36897690328092903 18 0.37834383118533138;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.40683053875566361 9 -0.55738003404710312 18 -0.40683377092188677;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.2561482865352991 9 65.048387252870029 18 -7.2562324053372604;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 30.465658187866211 9 -10.554458618164062 18 30.465591430664062;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 51.757793426513672 9 39.319900512695312 18 51.757778167724609;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.6209993362426758 9 8.514068603515625 18 8.6210041046142578;
createNode animCurveTA -n "Character1_Ctrl_LeftFootEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.5357517762360098e-05 9 -2.8410591101319991e-05 18 1.5214303283943029e-05;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftFootEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.3510444563989132e-06 9 -3.0139139504710098e-05 18 -1.0897521029098708e-05;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftFootEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -37.203750118836744 9 49.214707995067506 18 -37.203760800452756;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftFootEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 49.711116790771484 9 -43.734073638916016 18 49.71112060546875;
createNode animCurveTL -n "Character1_Ctrl_LeftFootEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 14.228960990905762 9 8.2513637542724609 18 14.228982925415039;
createNode animCurveTL -n "Character1_Ctrl_LeftFootEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.910003662109375 9 8.9100074768066406 18 8.9100027084350586;
createNode animCurveTA -n "Character1_Ctrl_LeftHipEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.1234484463872618 9 1.0666291242725368 18 1.1234442674532217;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHipEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.3650308572699163 9 0.50192127739850978 18 0.36504644893661886;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHipEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -45.395986431047703 9 11.657524346308309 18 -45.395898803444425;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHipEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.486262321472168 9 -1.4862720966339111 18 -1.486263632774353;
createNode animCurveTL -n "Character1_Ctrl_LeftHipEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 83.271095275878906 9 83.271087646484375 18 83.271095275878906;
createNode animCurveTL -n "Character1_Ctrl_LeftHipEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.906926155090332 9 8.9072160720825195 18 8.9069280624389648;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.0946125447348529 9 -60.495798696845881 18 -1.0948172881540301;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.5056494704189609 9 0.44827283390241879 18 1.5056561016761532;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.092126880615650233 9 -1.0482247433851273 18 -0.092132897045274442;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000003FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 46.782762792377447 9 42.796664544075156 18 46.783024256899516;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000400";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.4674734455077341e-05 9 -3.1755301965442726e-05 18 -4.9754446510434561e-05;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000401";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.21567988242018357 9 -0.23297194946281563 18 -0.21568217297510964;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000402";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -14.095994045765307 9 -34.083461813242835 18 -14.09605181892171;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000403";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.09182318878134145 9 -0.1300790783274173 18 -0.091827851166982999;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000404";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.17181500059327856 9 -0.12311013738187107 18 -0.17180555120043325;
createNode animCurveTA -n "Character1_Ctrl_RightToeBase_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000405";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.8702249749503605e-21 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_RightToeBase_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000406";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.3437165531715457e-05 9 -2.8344064857377435e-05 18 -2.343716049371684e-05;
createNode animCurveTA -n "Character1_Ctrl_RightToeBase_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000407";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000408";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000409";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000040A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 44.097842668235742 9 -39.276106509465968 18 44.09784034480883;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000040B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -45.171970367431641 9 35.3258056640625 18 -45.171989440917969;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000040C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.439926147460938 9 12.312656402587891 18 17.439914703369141;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000040D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.9100027084350586 9 -8.9100027084350586 18 -8.9100027084350586;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000040E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.12452472515869821 9 0.11079697175018566 18 0.12452704135973129;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000040F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.15381463304763049 9 -0.14022363097312004 18 -0.15380462490951968;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000410";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 58.193798947683973 9 -5.192653502056169 18 58.19385507125633;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000411";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -10.58295726776123 9 31.642181396484375 18 -10.582948684692383;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000412";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 38.891204833984375 9 52.846492767333984 18 38.891155242919922;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000413";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -9.0192632675170898 9 -9.009608268737793 18 -9.0192623138427734;
createNode animCurveTA -n "Character1_Ctrl_RightFootEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000414";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.0032377520382055138 9 -0.0020382726451728494 18 0.0032378411302286998;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightFootEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000415";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.0001887722919759569 9 -0.0020974518033305693 18 0.00018859716219670362;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightFootEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000416";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 44.097842559583555 9 -39.276110528654691 18 44.097840236321204;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightFootEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000417";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -40.226348876953125 9 49.318550109863281 18 -40.226356506347656;
createNode animCurveTL -n "Character1_Ctrl_RightFootEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000418";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.9275989532470703 9 15.666081428527832 18 3.9275779724121094;
createNode animCurveTL -n "Character1_Ctrl_RightFootEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000419";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.9107818603515625 9 -8.9108428955078125 18 -8.9107818603515625;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000041A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.34501362457417256 9 0.34749636138713613 18 0.34501246786934836;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000041B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.14263284857398875 9 0.13068346558016639 18 0.14264128286144007;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000041C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 11.411921606528319 9 -47.98850098520343 18 11.411717377024337;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000041D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.703352689743042 9 -1.703361988067627 18 -1.7033538818359375;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000041E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 82.882476806640625 9 82.882476806640625 18 82.882476806640625;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000041F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.90753173828125 9 -8.9072437286376953 18 -8.9075298309326172;
createNode animCurveTA -n "Character1_Ctrl_Head_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000420";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_Head_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000421";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_Head_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000422";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000423";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.001250444283502361 9 -0.0022984487862502201 18 -0.0013010068477983668;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000424";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.3611787761500338e-15 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000425";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.3610399489465785e-15 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000426";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.0179043015307249e-06 9 6.4102827121953006e-06 18 4.0323878197984163e-06;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000427";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.075213241754302e-06 9 6.8133634750825709e-06 18 6.5368516351273548e-06;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000428";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 12.499014887061843 9 12.497974505639277 18 12.498967214585349;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000429";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 13.828841209411621 9 13.828508377075195 18 13.828836441040039;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000042A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 152.65399169921875 9 152.65414428710938 18 152.654052734375;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000042B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.31783375144004822 9 -0.3175424337387085 18 -0.31783068180084229;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000042C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.4170801057626784e-06 9 5.3833235443482454e-06 18 -4.1789740884055595e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000042D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.3135797178997237e-07 9 -1.027579003242753e-05 18 9.6458412504869821e-07;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000042E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.1962836830937958e-06 9 1.9530124334417397e-05 18 4.3555671889972172e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000042F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.0625850519134441e-19 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000430";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -9.7062825972397362e-20 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000431";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.3309691786916385e-25 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000432";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.4265706493099341e-20 9 -4.515924402595856e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000433";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.4265706493099341e-20 9 -5.112904523706435e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000434";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.3141581051921221e-26 9 -2.0623219270596537e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb4_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000435";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.0888874903416268e-14 9 -5.0250690754360002e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb4_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000436";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.4265706493099341e-20 9 -1.0261608906043419e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb4_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000437";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 1.3209050608061092e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000438";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.2533955180283222e-07 9 -1.4695311772637688e-05 18 1.3841491547206779e-07;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000439";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.969765782305911e-06 9 1.5977339576406184e-06 18 4.1414529898707902e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000043A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.5956669384919109e-06 9 1.9448000005449479e-05 18 3.9707652222948746e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000043B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.6546682903450628e-17 9 1.5228502392263818e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000043C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.975693351829396e-16 9 5.0131215263619565e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000043D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 -4.734540621057904e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000043E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.4450125862446896e-16 9 1.1497591165497089e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000043F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.9924593367255408e-32 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000440";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4024900429836268e-14 9 -1.3267013966575809e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex4_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000441";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 -9.7181822338791548e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex4_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000442";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.9508399496147545e-16 9 -1.785795851512107e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex4_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000443";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 -1.4246517775162672e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000444";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.0861506176703729e-22 9 -2.219264076141727e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000445";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.9697787878859004e-06 9 1.6137680117754792e-06 18 4.1414673525535972e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000446";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.5978328707855503e-06 9 2.3102854064119804e-05 18 3.9731619865250752e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000447";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.8641647886628505e-05 9 6.6589790399778772e-05 18 5.8641200169603057e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000448";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.309461332899954e-06 9 -1.7175177158464882e-06 18 -4.1377562852205201e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000449";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.6428801099610535e-09 9 -6.2165824646464613e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000044A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 1.706683256182528e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000044B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 -4.3621739084349439e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000044C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 -1.7545103400632924e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle4_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000044D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 -1.7120173171366716e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle4_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000044E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 1.5578883020774807e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle4_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000044F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 8.143999258504541e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000450";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.0862238390791708e-22 9 -2.2194077429949938e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.9697787878945859e-06 9 1.6137680117956246e-06 18 4.1414673525637583e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000452";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.5978328707855503e-06 9 2.3101473906943549e-05 18 3.9731619865250752e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000453";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.8216085044848855e-05 9 8.8801556484008253e-05 18 5.8483763520371055e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000454";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.5249304785879018e-18 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000455";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.8629054506448569e-06 9 -1.8407120318619392e-05 18 5.3417587598911416e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000456";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 -1.5372735012793713e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000457";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000458";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 1.5658702930320933e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing4_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000459";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 1.5372734325872368e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing4_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000045A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.0888874903416268e-14 9 0 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing4_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000045B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 1.5658702319654722e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000045C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.3874433910068002e-18 9 -2.219407742988016e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000045D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.9698328906249713e-06 9 1.6141154056807437e-06 18 4.1415270994912615e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000045E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.5977581659171921e-06 9 2.3101449632950221e-05 18 3.9730996985421939e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000045F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.8054239001098247e-05 9 9.2207283061320077e-05 18 6.8459567782417561e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000460";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.1377517903410742e-06 9 0 18 -4.1370882652722921e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000461";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.6110930572984423e-06 9 -1.2311594358703404e-06 18 3.0246645009725111e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000462";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.9412565194479472e-19 9 1.1948810447280505e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000463";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.0664266232748592e-21 9 -1.5900294787718937e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000464";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4033418597142049e-14 9 -2.342818807051689e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky4_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000465";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.1384632221221202e-42 9 -1.0248778446723932e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky4_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000466";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.0888874903416268e-14 9 2.7362503775689019e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky4_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000467";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.3141581051921216e-26 9 -2.0304467059557409e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000468";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90.549731232938484 9 -89.854308529986668 18 -90.549683836437723;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000469";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -75.966128252078278 9 -156.16227929677163 18 -75.966116688492477;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000046A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.562730233186031 9 89.970682615340507 18 90.562682592648244;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000046B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -18.99525260925293 9 55.498634338378906 18 -18.995281219482422;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000046C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 83.369178771972656 9 97.525619506835938 18 83.369171142578125;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000046D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 15.92054557800293 9 15.996732711791992 18 15.920536041259766;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000046E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.071582816548593 9 5.432045728916556 18 2.0715824991749354;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000046F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 12.024297175722682 9 -68.074340637376949 18 12.02431008698977;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000470";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.565121131936081 9 85.091862670614972 18 90.565109862940474;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000471";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -21.524007797241211 9 60.11529541015625 18 -21.524038314819336;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000472";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 78.242866516113281 9 94.158676147460938 18 78.242866516113281;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000473";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.441600799560547 9 17.525588989257812 18 17.441595077514648;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000474";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.034144249460566219 9 0.082157930134839838 18 0.034143782461073267;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000475";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 14.029469457471492 9 -66.165966160762622 18 14.02948275401778;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000476";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.141639183599736 9 90.058161465773424 18 90.141627131155232;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000477";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -24.116121292114258 9 59.837703704833984 18 -24.116153717041016;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000478";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 78.075798034667969 9 91.575553894042969 18 78.075790405273438;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000479";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.741081237792969 9 17.820642471313477 18 17.741071701049805;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000047A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.030472868677285794 9 0.07335195697358543 18 0.030471972240302216;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000047B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 14.033032105081016 9 -66.162412113741226 18 14.033042912584747;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000047C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.140752044797793 9 90.066193130748019 18 90.140740242222677;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000047D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -25.961624145507812 9 58.272018432617188 18 -25.96165657043457;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000047E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 79.346099853515625 9 89.973495483398438 18 79.346099853515625;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000047F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.622114181518555 9 17.69512939453125 18 17.622102737426758;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000480";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.030403379725129763 9 0.074631916738710599 18 0.030404997580565557;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000481";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 14.032977912864164 9 -66.162466999747778 18 14.03299030152219;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000482";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 90.14075013460922 9 90.065368801734209 18 90.140748252407334;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000483";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -27.100566864013672 9 55.673011779785156 18 -27.100595474243164;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000484";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 81.788719177246094 9 89.26812744140625 18 81.788719177246094;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000485";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 16.934349060058594 9 16.999279022216797 18 16.934341430664062;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000486";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.5535752171935237e-06 9 -8.4166498973349279e-06 18 8.3245942439187058e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000487";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.2167481616987563e-06 9 -3.4783468316001256e-05 18 9.0488991712895637e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000488";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.7302395825875845e-05 9 -4.098075165745201e-05 18 1.0552678845709883e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000489";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.5620897893672565e-06 9 -7.6156172252695603e-06 18 -1.38895234121621e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000048A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.9696518323026488e-06 9 7.868403252379017e-06 18 -3.757074577835129e-07;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000048B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.3564486838285703e-06 9 4.3869883987290726e-05 18 1.0750661782351452e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000048C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.5295140767374059e-06 9 2.8762730913539982e-05 18 7.4769189351649259e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000048D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4606862523090338e-05 9 -1.3758525548372537e-05 18 -2.3033441173708667e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000048E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.1766737392427543e-05 9 -4.6585357709458437e-05 18 -2.4931501256008528e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb4_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000048F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.3373617029631536e-06 9 7.6099665867796351e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb4_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000490";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.0117084392469851e-05 9 1.6698083356649608e-05 18 6.7023228341593877e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb4_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000491";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.8969699830943232e-06 9 1.0037532096602853e-06 18 -3.7776276784525378e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000492";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4157809998771691e-05 9 -4.1830138238324539e-05 18 1.227686248575705e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000493";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.3010747883776209e-15 9 -2.4549220756850007e-05 18 -6.031387812473066e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000494";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.40180473096546e-05 9 1.4596496850643824e-06 18 8.685704300717179e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000495";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.4538775000772499e-05 9 4.7379218918399306e-05 18 4.6022813438699192e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000496";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.7267622727302071e-06 9 5.1072958325193747e-06 18 3.0353896085383947e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000497";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.2219416701563436e-06 9 -1.6532879992141881e-06 18 -2.956032381557912e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000498";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.0239022832318924e-05 9 -4.3209936986811632e-06 18 -1.1810233642383295e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F6900000499";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.1924582959365301e-14 9 2.7063039594947321e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000049A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.5728875621085644e-07 9 1.0782512537510855e-05 18 4.294003285469716e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex4_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000049B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.555808380403977e-05 9 1.6525397146975739e-05 18 -8.5307623211491309e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex4_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000049C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.529386337724691e-06 9 -3.8890676033342935e-06 18 1.3813832654783568e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex4_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000049D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.461309718715064e-06 9 -2.0084889221923687e-05 18 -2.9767933001076008e-07;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000049E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4157811054926772e-05 9 -4.1830138128149595e-05 18 1.2276863140003089e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F690000049F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.3010719649662445e-15 9 -2.4549220755656148e-05 18 -6.031387812075445e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4018046241073382e-05 9 1.4596528424549554e-06 18 8.685703374091822e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.2429308397232621e-05 9 7.5259852473911657e-05 18 4.5636429034041334e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.8513809091534756e-06 9 -2.7113885451865139e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.1316125339280332e-06 9 -4.6567782498720845e-05 18 -1.4002117140862175e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.3296218521432973e-07 9 2.1418276555696354e-05 18 -1.5806771748106575e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.9273843536143022e-06 9 3.2185367810224346e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.8103755055352494e-06 9 1.027559736222311e-06 18 3.6654268929772463e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle4_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2251222482921092e-05 9 2.8471824463444566e-06 18 5.457879329295798e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle4_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.3415290150505076e-06 9 0 18 -5.4575268009352909e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle4_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.3171344146337865e-06 9 -8.1476360685921587e-06 18 -9.7196576690925976e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4157810318175231e-05 9 -4.1830138205313768e-05 18 1.2276862704929173e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.9035049561945167e-15 9 -2.4549220755656951e-05 18 -6.0313878116779147e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4018046989381489e-05 9 1.459650631086594e-06 18 8.6857040222726024e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.223306100570012e-05 9 3.3724245421058426e-05 18 3.4130074079035597e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.7787649206765551e-06 9 2.455493695044001e-05 18 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -6.9201097625773102e-06 9 -1.17680075387725e-06 18 -1.1909620453766499e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -9.9273465405546546e-06 9 -2.0774423261840579e-06 18 -8.2465213955699079e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.830768502055548e-06 9 3.9824240640730931e-05 18 6.039385754530323e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.618275608705539e-06 9 2.5309135907548678e-05 18 8.8865222087931359e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing4_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2325870888099208e-05 9 1.2144231882722741e-05 18 -2.8115350626850848e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing4_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.9075302928299183e-06 9 -1.570777020643786e-05 18 1.2207699333326427e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing4_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.0570595383931934e-05 9 7.715675167367835e-06 18 2.2283648352969853e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4157810932637415e-05 9 -4.1830159579100149e-05 18 1.2276857804130668e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.6327711269561598e-10 9 -2.4549220749294646e-05 18 -6.0316159588121518e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4018046375039764e-05 9 1.4596531796214963e-06 18 8.6855525105963419e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00068464203197957031 9 0.00068124107116283156 18 0.00069675899991681212;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.2507051163346264e-06 9 -6.3886746117940729e-06 18 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4635536065956539e-05 9 -5.0668625161544456e-05 18 -9.9237378268548004e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 -6.4952055912367615e-07 18 -1.0529680483270588e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.975693351829396e-16 9 3.0487967756081765e-05 18 5.0834565484004205e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 9 -1.8613727847564252e-05 18 -7.4992282496732569e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky4_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.939360761128174e-19 9 8.8960045700406714e-06 18 3.4621943569808806e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky4_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.9513867055101183e-16 9 -2.9477975376078082e-06 18 -2.9353407051685471e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky4_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.0664266232748336e-21 9 2.0696411907656887e-06 18 -1.4542286571777521e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -90.143702218621328 9 -89.718066391723028 18 -90.143707927202087;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 21.491526630791871 9 118.11553323750935 18 21.491520249818517;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -88.02132549402728 9 -87.719680347563994 18 -88.02133179300192;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 55.561809539794922 9 -31.967472076416016 18 55.561855316162109;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 97.897727966308594 9 93.513771057128906 18 97.897735595703125;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -16.628505706787109 9 -16.573005676269531 18 -16.628696441650391;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.5664496430691042 9 2.3234458440633574 18 4.5664491951957009;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 64.432989834336368 9 -32.098610669831942 18 64.432996382048501;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 94.254548041301732 9 88.89781098942025 18 94.254555650709264;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 59.883590698242188 9 -36.508312225341797 18 59.883640289306641;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 93.825569152832031 9 89.685806274414062 18 93.825584411621094;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -18.155529022216797 9 -18.09600830078125 18 -18.155715942382812;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.5664122979380055 9 2.323465240883769 18 4.5664737171351675;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 64.432987047267602 9 -32.098583176857971 18 64.432998720795638;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 94.254515755993523 9 88.897874750724711 18 94.254569422155726;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 59.727756500244141 9 -38.800457000732422 18 59.727813720703125;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 91.499404907226562 9 90.107978820800781 18 91.499412536621094;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -18.451187133789062 9 -18.396932601928711 18 -18.451377868652344;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.5663764828231237 9 2.3234290244712246 18 4.5664017912242674;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 64.432994790291929 9 -32.098633293125317 18 64.433001619109902;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 94.2544787059756 9 88.897799617892474 18 94.254512871576964;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 58.184711456298828 9 -40.195510864257812 18 58.184757232666016;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 89.916015625 9 91.823745727539062 18 89.916023254394531;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -18.325735092163086 9 -18.279203414916992 18 -18.325925827026367;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.5711197507930734 9 2.3221877736198402 18 4.5711464477528185;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 64.432872953179512 9 -32.098630819219885 18 64.432875923846737;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 94.258081814679684 9 88.898846882577345 18 94.258107827796991;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 55.627544403076172 9 -40.555858612060547 18 55.627593994140625;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 89.25750732421875 9 94.441940307617188 18 89.257514953613281;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-6F69000004DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -17.629741668701172 9 -17.591939926147461 18 -17.629928588867188;
createNode animCurveTL -n "Character1_Ctrl_Reference_translateX";
	rename -uid "21F49C00-0004-1552-5EE6-7051000004F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "Character1_Ctrl_Reference_translateY";
	rename -uid "21F49C00-0004-1552-5EE6-7051000004F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "Character1_Ctrl_Reference_translateZ";
	rename -uid "21F49C00-0004-1552-5EE6-7051000004F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "Character1_Ctrl_Reference_rotateX";
	rename -uid "21F49C00-0004-1552-5EE6-7051000004F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "Character1_Ctrl_Reference_rotateY";
	rename -uid "21F49C00-0004-1552-5EE6-7051000004F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "Character1_Ctrl_Reference_rotateZ";
	rename -uid "21F49C00-0004-1552-5EE6-7051000004F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
select -ne :time1;
	setAttr ".o" 6;
	setAttr ".unw" 6;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Character1_Ctrl_Reference_translateX.o" "testUnrealRig_01RN.phl[1]";
connectAttr "Character1_Ctrl_Reference_translateY.o" "testUnrealRig_01RN.phl[2]"
		;
connectAttr "Character1_Ctrl_Reference_translateZ.o" "testUnrealRig_01RN.phl[3]"
		;
connectAttr "Character1_Ctrl_Reference_rotateX.o" "testUnrealRig_01RN.phl[4]";
connectAttr "Character1_Ctrl_Reference_rotateY.o" "testUnrealRig_01RN.phl[5]";
connectAttr "Character1_Ctrl_Reference_rotateZ.o" "testUnrealRig_01RN.phl[6]";
connectAttr "Character1_Ctrl_HipsEffector_rotateZ.o" "testUnrealRig_01RN.phl[7]"
		;
connectAttr "Character1_Ctrl_HipsEffector_rotateY.o" "testUnrealRig_01RN.phl[8]"
		;
connectAttr "Character1_Ctrl_HipsEffector_rotateX.o" "testUnrealRig_01RN.phl[9]"
		;
connectAttr "Character1_Ctrl_HipsEffector_translateZ.o" "testUnrealRig_01RN.phl[10]"
		;
connectAttr "Character1_Ctrl_HipsEffector_translateY.o" "testUnrealRig_01RN.phl[11]"
		;
connectAttr "Character1_Ctrl_HipsEffector_translateX.o" "testUnrealRig_01RN.phl[12]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_rotateZ.o" "testUnrealRig_01RN.phl[13]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_rotateY.o" "testUnrealRig_01RN.phl[14]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_rotateX.o" "testUnrealRig_01RN.phl[15]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_translateZ.o" "testUnrealRig_01RN.phl[16]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_translateY.o" "testUnrealRig_01RN.phl[17]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_translateX.o" "testUnrealRig_01RN.phl[18]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotateZ.o" "testUnrealRig_01RN.phl[19]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotateY.o" "testUnrealRig_01RN.phl[20]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotateX.o" "testUnrealRig_01RN.phl[21]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateZ.o" "testUnrealRig_01RN.phl[22]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateY.o" "testUnrealRig_01RN.phl[23]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateX.o" "testUnrealRig_01RN.phl[24]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotateZ.o" "testUnrealRig_01RN.phl[25]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotateY.o" "testUnrealRig_01RN.phl[26]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotateX.o" "testUnrealRig_01RN.phl[27]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateZ.o" "testUnrealRig_01RN.phl[28]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateY.o" "testUnrealRig_01RN.phl[29]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateX.o" "testUnrealRig_01RN.phl[30]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotateZ.o" "testUnrealRig_01RN.phl[31]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotateY.o" "testUnrealRig_01RN.phl[32]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotateX.o" "testUnrealRig_01RN.phl[33]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateZ.o" "testUnrealRig_01RN.phl[34]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateY.o" "testUnrealRig_01RN.phl[35]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateX.o" "testUnrealRig_01RN.phl[36]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotateZ.o" "testUnrealRig_01RN.phl[37]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotateY.o" "testUnrealRig_01RN.phl[38]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotateX.o" "testUnrealRig_01RN.phl[39]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateZ.o" "testUnrealRig_01RN.phl[40]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateY.o" "testUnrealRig_01RN.phl[41]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateX.o" "testUnrealRig_01RN.phl[42]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotateZ.o" "testUnrealRig_01RN.phl[43]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotateY.o" "testUnrealRig_01RN.phl[44]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotateX.o" "testUnrealRig_01RN.phl[45]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateZ.o" "testUnrealRig_01RN.phl[46]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateY.o" "testUnrealRig_01RN.phl[47]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateX.o" "testUnrealRig_01RN.phl[48]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotateZ.o" "testUnrealRig_01RN.phl[49]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotateY.o" "testUnrealRig_01RN.phl[50]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotateX.o" "testUnrealRig_01RN.phl[51]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateZ.o" "testUnrealRig_01RN.phl[52]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateY.o" "testUnrealRig_01RN.phl[53]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateX.o" "testUnrealRig_01RN.phl[54]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotateZ.o" "testUnrealRig_01RN.phl[55]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotateY.o" "testUnrealRig_01RN.phl[56]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotateX.o" "testUnrealRig_01RN.phl[57]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateZ.o" "testUnrealRig_01RN.phl[58]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateY.o" "testUnrealRig_01RN.phl[59]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateX.o" "testUnrealRig_01RN.phl[60]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotateZ.o" "testUnrealRig_01RN.phl[61]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotateY.o" "testUnrealRig_01RN.phl[62]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotateX.o" "testUnrealRig_01RN.phl[63]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateZ.o" "testUnrealRig_01RN.phl[64]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateY.o" "testUnrealRig_01RN.phl[65]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateX.o" "testUnrealRig_01RN.phl[66]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotateZ.o" "testUnrealRig_01RN.phl[67]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotateY.o" "testUnrealRig_01RN.phl[68]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotateX.o" "testUnrealRig_01RN.phl[69]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateZ.o" "testUnrealRig_01RN.phl[70]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateY.o" "testUnrealRig_01RN.phl[71]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateX.o" "testUnrealRig_01RN.phl[72]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_rotateZ.o" "testUnrealRig_01RN.phl[73]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_rotateY.o" "testUnrealRig_01RN.phl[74]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_rotateX.o" "testUnrealRig_01RN.phl[75]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_translateZ.o" "testUnrealRig_01RN.phl[76]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_translateY.o" "testUnrealRig_01RN.phl[77]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_translateX.o" "testUnrealRig_01RN.phl[78]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_rotateZ.o" "testUnrealRig_01RN.phl[79]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_rotateY.o" "testUnrealRig_01RN.phl[80]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_rotateX.o" "testUnrealRig_01RN.phl[81]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_translateZ.o" "testUnrealRig_01RN.phl[82]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_translateY.o" "testUnrealRig_01RN.phl[83]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_translateX.o" "testUnrealRig_01RN.phl[84]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotateZ.o" "testUnrealRig_01RN.phl[85]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotateY.o" "testUnrealRig_01RN.phl[86]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotateX.o" "testUnrealRig_01RN.phl[87]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateZ.o" "testUnrealRig_01RN.phl[88]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateY.o" "testUnrealRig_01RN.phl[89]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateX.o" "testUnrealRig_01RN.phl[90]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotateZ.o" "testUnrealRig_01RN.phl[91]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotateY.o" "testUnrealRig_01RN.phl[92]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotateX.o" "testUnrealRig_01RN.phl[93]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateZ.o" "testUnrealRig_01RN.phl[94]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateY.o" "testUnrealRig_01RN.phl[95]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateX.o" "testUnrealRig_01RN.phl[96]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotateZ.o" "testUnrealRig_01RN.phl[97]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotateY.o" "testUnrealRig_01RN.phl[98]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotateX.o" "testUnrealRig_01RN.phl[99]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateZ.o" "testUnrealRig_01RN.phl[100]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateY.o" "testUnrealRig_01RN.phl[101]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateX.o" "testUnrealRig_01RN.phl[102]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_rotateZ.o" "testUnrealRig_01RN.phl[103]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_rotateY.o" "testUnrealRig_01RN.phl[104]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_rotateX.o" "testUnrealRig_01RN.phl[105]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_translateZ.o" "testUnrealRig_01RN.phl[106]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_translateY.o" "testUnrealRig_01RN.phl[107]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_translateX.o" "testUnrealRig_01RN.phl[108]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotateZ.o" "testUnrealRig_01RN.phl[109]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotateY.o" "testUnrealRig_01RN.phl[110]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotateX.o" "testUnrealRig_01RN.phl[111]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateZ.o" "testUnrealRig_01RN.phl[112]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateY.o" "testUnrealRig_01RN.phl[113]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateX.o" "testUnrealRig_01RN.phl[114]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotateZ.o" "testUnrealRig_01RN.phl[115]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotateY.o" "testUnrealRig_01RN.phl[116]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotateX.o" "testUnrealRig_01RN.phl[117]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateZ.o" "testUnrealRig_01RN.phl[118]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateY.o" "testUnrealRig_01RN.phl[119]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateX.o" "testUnrealRig_01RN.phl[120]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotateZ.o" "testUnrealRig_01RN.phl[121]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotateY.o" "testUnrealRig_01RN.phl[122]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotateX.o" "testUnrealRig_01RN.phl[123]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateZ.o" "testUnrealRig_01RN.phl[124]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateY.o" "testUnrealRig_01RN.phl[125]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateX.o" "testUnrealRig_01RN.phl[126]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotateZ.o" "testUnrealRig_01RN.phl[127]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotateY.o" "testUnrealRig_01RN.phl[128]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotateX.o" "testUnrealRig_01RN.phl[129]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateZ.o" "testUnrealRig_01RN.phl[130]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateY.o" "testUnrealRig_01RN.phl[131]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateX.o" "testUnrealRig_01RN.phl[132]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotateZ.o" "testUnrealRig_01RN.phl[133]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotateY.o" "testUnrealRig_01RN.phl[134]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotateX.o" "testUnrealRig_01RN.phl[135]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateZ.o" "testUnrealRig_01RN.phl[136]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateY.o" "testUnrealRig_01RN.phl[137]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateX.o" "testUnrealRig_01RN.phl[138]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotateZ.o" "testUnrealRig_01RN.phl[139]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotateY.o" "testUnrealRig_01RN.phl[140]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotateX.o" "testUnrealRig_01RN.phl[141]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateZ.o" "testUnrealRig_01RN.phl[142]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateY.o" "testUnrealRig_01RN.phl[143]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateX.o" "testUnrealRig_01RN.phl[144]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotateZ.o" "testUnrealRig_01RN.phl[145]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotateY.o" "testUnrealRig_01RN.phl[146]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotateX.o" "testUnrealRig_01RN.phl[147]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateZ.o" "testUnrealRig_01RN.phl[148]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateY.o" "testUnrealRig_01RN.phl[149]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateX.o" "testUnrealRig_01RN.phl[150]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotateZ.o" "testUnrealRig_01RN.phl[151]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotateY.o" "testUnrealRig_01RN.phl[152]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotateX.o" "testUnrealRig_01RN.phl[153]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateZ.o" "testUnrealRig_01RN.phl[154]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateY.o" "testUnrealRig_01RN.phl[155]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateX.o" "testUnrealRig_01RN.phl[156]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotateZ.o" "testUnrealRig_01RN.phl[157]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotateY.o" "testUnrealRig_01RN.phl[158]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotateX.o" "testUnrealRig_01RN.phl[159]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateZ.o" "testUnrealRig_01RN.phl[160]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateY.o" "testUnrealRig_01RN.phl[161]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateX.o" "testUnrealRig_01RN.phl[162]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotateZ.o" "testUnrealRig_01RN.phl[163]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotateY.o" "testUnrealRig_01RN.phl[164]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotateX.o" "testUnrealRig_01RN.phl[165]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateZ.o" "testUnrealRig_01RN.phl[166]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateY.o" "testUnrealRig_01RN.phl[167]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateX.o" "testUnrealRig_01RN.phl[168]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotateZ.o" "testUnrealRig_01RN.phl[169]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotateY.o" "testUnrealRig_01RN.phl[170]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotateX.o" "testUnrealRig_01RN.phl[171]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateZ.o" "testUnrealRig_01RN.phl[172]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateY.o" "testUnrealRig_01RN.phl[173]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateX.o" "testUnrealRig_01RN.phl[174]"
		;
connectAttr "Character1_Ctrl_Hips_rotateZ.o" "testUnrealRig_01RN.phl[175]";
connectAttr "Character1_Ctrl_Hips_rotateY.o" "testUnrealRig_01RN.phl[176]";
connectAttr "Character1_Ctrl_Hips_rotateX.o" "testUnrealRig_01RN.phl[177]";
connectAttr "Character1_Ctrl_Hips_translateZ.o" "testUnrealRig_01RN.phl[178]";
connectAttr "Character1_Ctrl_Hips_translateY.o" "testUnrealRig_01RN.phl[179]";
connectAttr "Character1_Ctrl_Hips_translateX.o" "testUnrealRig_01RN.phl[180]";
connectAttr "Character1_Ctrl_LeftUpLeg_rotateZ.o" "testUnrealRig_01RN.phl[181]";
connectAttr "Character1_Ctrl_LeftUpLeg_rotateY.o" "testUnrealRig_01RN.phl[182]";
connectAttr "Character1_Ctrl_LeftUpLeg_rotateX.o" "testUnrealRig_01RN.phl[183]";
connectAttr "Character1_Ctrl_LeftLeg_rotateZ.o" "testUnrealRig_01RN.phl[184]";
connectAttr "Character1_Ctrl_LeftLeg_rotateY.o" "testUnrealRig_01RN.phl[185]";
connectAttr "Character1_Ctrl_LeftLeg_rotateX.o" "testUnrealRig_01RN.phl[186]";
connectAttr "Character1_Ctrl_LeftFoot_rotateZ.o" "testUnrealRig_01RN.phl[187]";
connectAttr "Character1_Ctrl_LeftFoot_rotateY.o" "testUnrealRig_01RN.phl[188]";
connectAttr "Character1_Ctrl_LeftFoot_rotateX.o" "testUnrealRig_01RN.phl[189]";
connectAttr "Character1_Ctrl_LeftToeBase_rotateZ.o" "testUnrealRig_01RN.phl[190]"
		;
connectAttr "Character1_Ctrl_LeftToeBase_rotateY.o" "testUnrealRig_01RN.phl[191]"
		;
connectAttr "Character1_Ctrl_LeftToeBase_rotateX.o" "testUnrealRig_01RN.phl[192]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotateZ.o" "testUnrealRig_01RN.phl[193]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotateY.o" "testUnrealRig_01RN.phl[194]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotateX.o" "testUnrealRig_01RN.phl[195]"
		;
connectAttr "Character1_Ctrl_RightLeg_rotateZ.o" "testUnrealRig_01RN.phl[196]";
connectAttr "Character1_Ctrl_RightLeg_rotateY.o" "testUnrealRig_01RN.phl[197]";
connectAttr "Character1_Ctrl_RightLeg_rotateX.o" "testUnrealRig_01RN.phl[198]";
connectAttr "Character1_Ctrl_RightFoot_rotateZ.o" "testUnrealRig_01RN.phl[199]";
connectAttr "Character1_Ctrl_RightFoot_rotateY.o" "testUnrealRig_01RN.phl[200]";
connectAttr "Character1_Ctrl_RightFoot_rotateX.o" "testUnrealRig_01RN.phl[201]";
connectAttr "Character1_Ctrl_RightToeBase_rotateZ.o" "testUnrealRig_01RN.phl[202]"
		;
connectAttr "Character1_Ctrl_RightToeBase_rotateY.o" "testUnrealRig_01RN.phl[203]"
		;
connectAttr "Character1_Ctrl_RightToeBase_rotateX.o" "testUnrealRig_01RN.phl[204]"
		;
connectAttr "Character1_Ctrl_Spine_rotateZ.o" "testUnrealRig_01RN.phl[205]";
connectAttr "Character1_Ctrl_Spine_rotateY.o" "testUnrealRig_01RN.phl[206]";
connectAttr "Character1_Ctrl_Spine_rotateX.o" "testUnrealRig_01RN.phl[207]";
connectAttr "Character1_Ctrl_Spine1_rotateZ.o" "testUnrealRig_01RN.phl[208]";
connectAttr "Character1_Ctrl_Spine1_rotateY.o" "testUnrealRig_01RN.phl[209]";
connectAttr "Character1_Ctrl_Spine1_rotateX.o" "testUnrealRig_01RN.phl[210]";
connectAttr "Character1_Ctrl_Spine2_rotateZ.o" "testUnrealRig_01RN.phl[211]";
connectAttr "Character1_Ctrl_Spine2_rotateY.o" "testUnrealRig_01RN.phl[212]";
connectAttr "Character1_Ctrl_Spine2_rotateX.o" "testUnrealRig_01RN.phl[213]";
connectAttr "Character1_Ctrl_LeftShoulder_rotateZ.o" "testUnrealRig_01RN.phl[214]"
		;
connectAttr "Character1_Ctrl_LeftShoulder_rotateY.o" "testUnrealRig_01RN.phl[215]"
		;
connectAttr "Character1_Ctrl_LeftShoulder_rotateX.o" "testUnrealRig_01RN.phl[216]"
		;
connectAttr "Character1_Ctrl_LeftArm_rotateZ.o" "testUnrealRig_01RN.phl[217]";
connectAttr "Character1_Ctrl_LeftArm_rotateY.o" "testUnrealRig_01RN.phl[218]";
connectAttr "Character1_Ctrl_LeftArm_rotateX.o" "testUnrealRig_01RN.phl[219]";
connectAttr "Character1_Ctrl_LeftForeArm_rotateZ.o" "testUnrealRig_01RN.phl[220]"
		;
connectAttr "Character1_Ctrl_LeftForeArm_rotateY.o" "testUnrealRig_01RN.phl[221]"
		;
connectAttr "Character1_Ctrl_LeftForeArm_rotateX.o" "testUnrealRig_01RN.phl[222]"
		;
connectAttr "Character1_Ctrl_LeftHand_rotateZ.o" "testUnrealRig_01RN.phl[223]";
connectAttr "Character1_Ctrl_LeftHand_rotateY.o" "testUnrealRig_01RN.phl[224]";
connectAttr "Character1_Ctrl_LeftHand_rotateX.o" "testUnrealRig_01RN.phl[225]";
connectAttr "Character1_Ctrl_LeftHandThumb1_rotateZ.o" "testUnrealRig_01RN.phl[226]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb1_rotateY.o" "testUnrealRig_01RN.phl[227]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb1_rotateX.o" "testUnrealRig_01RN.phl[228]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotateZ.o" "testUnrealRig_01RN.phl[229]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotateY.o" "testUnrealRig_01RN.phl[230]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotateX.o" "testUnrealRig_01RN.phl[231]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotateZ.o" "testUnrealRig_01RN.phl[232]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotateY.o" "testUnrealRig_01RN.phl[233]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotateX.o" "testUnrealRig_01RN.phl[234]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4_rotateZ.o" "testUnrealRig_01RN.phl[235]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4_rotateY.o" "testUnrealRig_01RN.phl[236]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4_rotateX.o" "testUnrealRig_01RN.phl[237]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotateZ.o" "testUnrealRig_01RN.phl[238]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotateY.o" "testUnrealRig_01RN.phl[239]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotateX.o" "testUnrealRig_01RN.phl[240]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotateZ.o" "testUnrealRig_01RN.phl[241]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotateY.o" "testUnrealRig_01RN.phl[242]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotateX.o" "testUnrealRig_01RN.phl[243]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotateZ.o" "testUnrealRig_01RN.phl[244]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotateY.o" "testUnrealRig_01RN.phl[245]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotateX.o" "testUnrealRig_01RN.phl[246]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4_rotateZ.o" "testUnrealRig_01RN.phl[247]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4_rotateY.o" "testUnrealRig_01RN.phl[248]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4_rotateX.o" "testUnrealRig_01RN.phl[249]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotateZ.o" "testUnrealRig_01RN.phl[250]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotateY.o" "testUnrealRig_01RN.phl[251]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotateX.o" "testUnrealRig_01RN.phl[252]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotateZ.o" "testUnrealRig_01RN.phl[253]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotateY.o" "testUnrealRig_01RN.phl[254]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotateX.o" "testUnrealRig_01RN.phl[255]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotateZ.o" "testUnrealRig_01RN.phl[256]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotateY.o" "testUnrealRig_01RN.phl[257]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotateX.o" "testUnrealRig_01RN.phl[258]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4_rotateZ.o" "testUnrealRig_01RN.phl[259]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4_rotateY.o" "testUnrealRig_01RN.phl[260]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4_rotateX.o" "testUnrealRig_01RN.phl[261]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotateZ.o" "testUnrealRig_01RN.phl[262]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotateY.o" "testUnrealRig_01RN.phl[263]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotateX.o" "testUnrealRig_01RN.phl[264]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotateZ.o" "testUnrealRig_01RN.phl[265]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotateY.o" "testUnrealRig_01RN.phl[266]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotateX.o" "testUnrealRig_01RN.phl[267]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotateZ.o" "testUnrealRig_01RN.phl[268]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotateY.o" "testUnrealRig_01RN.phl[269]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotateX.o" "testUnrealRig_01RN.phl[270]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4_rotateZ.o" "testUnrealRig_01RN.phl[271]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4_rotateY.o" "testUnrealRig_01RN.phl[272]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4_rotateX.o" "testUnrealRig_01RN.phl[273]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotateZ.o" "testUnrealRig_01RN.phl[274]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotateY.o" "testUnrealRig_01RN.phl[275]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotateX.o" "testUnrealRig_01RN.phl[276]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotateZ.o" "testUnrealRig_01RN.phl[277]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotateY.o" "testUnrealRig_01RN.phl[278]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotateX.o" "testUnrealRig_01RN.phl[279]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotateZ.o" "testUnrealRig_01RN.phl[280]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotateY.o" "testUnrealRig_01RN.phl[281]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotateX.o" "testUnrealRig_01RN.phl[282]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4_rotateZ.o" "testUnrealRig_01RN.phl[283]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4_rotateY.o" "testUnrealRig_01RN.phl[284]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4_rotateX.o" "testUnrealRig_01RN.phl[285]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotateZ.o" "testUnrealRig_01RN.phl[286]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotateY.o" "testUnrealRig_01RN.phl[287]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotateX.o" "testUnrealRig_01RN.phl[288]"
		;
connectAttr "Character1_Ctrl_RightArm_rotateZ.o" "testUnrealRig_01RN.phl[289]";
connectAttr "Character1_Ctrl_RightArm_rotateY.o" "testUnrealRig_01RN.phl[290]";
connectAttr "Character1_Ctrl_RightArm_rotateX.o" "testUnrealRig_01RN.phl[291]";
connectAttr "Character1_Ctrl_RightForeArm_rotateZ.o" "testUnrealRig_01RN.phl[292]"
		;
connectAttr "Character1_Ctrl_RightForeArm_rotateY.o" "testUnrealRig_01RN.phl[293]"
		;
connectAttr "Character1_Ctrl_RightForeArm_rotateX.o" "testUnrealRig_01RN.phl[294]"
		;
connectAttr "Character1_Ctrl_RightHand_rotateZ.o" "testUnrealRig_01RN.phl[295]";
connectAttr "Character1_Ctrl_RightHand_rotateY.o" "testUnrealRig_01RN.phl[296]";
connectAttr "Character1_Ctrl_RightHand_rotateX.o" "testUnrealRig_01RN.phl[297]";
connectAttr "Character1_Ctrl_RightHandThumb1_rotateZ.o" "testUnrealRig_01RN.phl[298]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1_rotateY.o" "testUnrealRig_01RN.phl[299]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1_rotateX.o" "testUnrealRig_01RN.phl[300]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotateZ.o" "testUnrealRig_01RN.phl[301]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotateY.o" "testUnrealRig_01RN.phl[302]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotateX.o" "testUnrealRig_01RN.phl[303]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotateZ.o" "testUnrealRig_01RN.phl[304]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotateY.o" "testUnrealRig_01RN.phl[305]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotateX.o" "testUnrealRig_01RN.phl[306]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4_rotateZ.o" "testUnrealRig_01RN.phl[307]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4_rotateY.o" "testUnrealRig_01RN.phl[308]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4_rotateX.o" "testUnrealRig_01RN.phl[309]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotateZ.o" "testUnrealRig_01RN.phl[310]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotateY.o" "testUnrealRig_01RN.phl[311]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotateX.o" "testUnrealRig_01RN.phl[312]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotateZ.o" "testUnrealRig_01RN.phl[313]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotateY.o" "testUnrealRig_01RN.phl[314]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotateX.o" "testUnrealRig_01RN.phl[315]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotateZ.o" "testUnrealRig_01RN.phl[316]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotateY.o" "testUnrealRig_01RN.phl[317]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotateX.o" "testUnrealRig_01RN.phl[318]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4_rotateZ.o" "testUnrealRig_01RN.phl[319]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4_rotateY.o" "testUnrealRig_01RN.phl[320]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4_rotateX.o" "testUnrealRig_01RN.phl[321]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotateZ.o" "testUnrealRig_01RN.phl[322]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotateY.o" "testUnrealRig_01RN.phl[323]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotateX.o" "testUnrealRig_01RN.phl[324]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotateZ.o" "testUnrealRig_01RN.phl[325]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotateY.o" "testUnrealRig_01RN.phl[326]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotateX.o" "testUnrealRig_01RN.phl[327]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotateZ.o" "testUnrealRig_01RN.phl[328]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotateY.o" "testUnrealRig_01RN.phl[329]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotateX.o" "testUnrealRig_01RN.phl[330]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4_rotateZ.o" "testUnrealRig_01RN.phl[331]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4_rotateY.o" "testUnrealRig_01RN.phl[332]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4_rotateX.o" "testUnrealRig_01RN.phl[333]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotateZ.o" "testUnrealRig_01RN.phl[334]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotateY.o" "testUnrealRig_01RN.phl[335]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotateX.o" "testUnrealRig_01RN.phl[336]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotateZ.o" "testUnrealRig_01RN.phl[337]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotateY.o" "testUnrealRig_01RN.phl[338]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotateX.o" "testUnrealRig_01RN.phl[339]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotateZ.o" "testUnrealRig_01RN.phl[340]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotateY.o" "testUnrealRig_01RN.phl[341]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotateX.o" "testUnrealRig_01RN.phl[342]"
		;
connectAttr "Character1_Ctrl_RightHandRing4_rotateZ.o" "testUnrealRig_01RN.phl[343]"
		;
connectAttr "Character1_Ctrl_RightHandRing4_rotateY.o" "testUnrealRig_01RN.phl[344]"
		;
connectAttr "Character1_Ctrl_RightHandRing4_rotateX.o" "testUnrealRig_01RN.phl[345]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotateZ.o" "testUnrealRig_01RN.phl[346]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotateY.o" "testUnrealRig_01RN.phl[347]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotateX.o" "testUnrealRig_01RN.phl[348]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotateZ.o" "testUnrealRig_01RN.phl[349]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotateY.o" "testUnrealRig_01RN.phl[350]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotateX.o" "testUnrealRig_01RN.phl[351]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotateZ.o" "testUnrealRig_01RN.phl[352]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotateY.o" "testUnrealRig_01RN.phl[353]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotateX.o" "testUnrealRig_01RN.phl[354]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4_rotateZ.o" "testUnrealRig_01RN.phl[355]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4_rotateY.o" "testUnrealRig_01RN.phl[356]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4_rotateX.o" "testUnrealRig_01RN.phl[357]"
		;
connectAttr "Character1_Ctrl_Neck_rotateZ.o" "testUnrealRig_01RN.phl[358]";
connectAttr "Character1_Ctrl_Neck_rotateY.o" "testUnrealRig_01RN.phl[359]";
connectAttr "Character1_Ctrl_Neck_rotateX.o" "testUnrealRig_01RN.phl[360]";
connectAttr "Character1_Ctrl_Head_rotateZ.o" "testUnrealRig_01RN.phl[361]";
connectAttr "Character1_Ctrl_Head_rotateY.o" "testUnrealRig_01RN.phl[362]";
connectAttr "Character1_Ctrl_Head_rotateX.o" "testUnrealRig_01RN.phl[363]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of testUnrealRig_01_RunAnim.ma
