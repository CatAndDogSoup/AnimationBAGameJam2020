//Maya ASCII 2019 scene
//Name: testUnrealRig_01_IdleAnim.ma
//Last modified: Thu, Jun 11, 2020 03:22:49 PM
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
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Linux 5.4.0-7634-generic #38~1591219791~20.04~6b1c5de-Ubuntu SMP Thu Jun 4 02:56:10 UTC 2 x86_64";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "C812DC00-0017-6481-5EE2-390800001199";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 240.00825633156501 231.99270001283296 207.97769719981943 ;
	setAttr ".r" -type "double3" -23.138352729606119 49.399999999999189 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C812DC00-0017-6481-5EE2-39080000119A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 326.94470641316502;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.0029870738429949029 86.306460264617044 3.6715559959411621 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "C812DC00-0017-6481-5EE2-39080000119B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C812DC00-0017-6481-5EE2-39080000119C";
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
	rename -uid "C812DC00-0017-6481-5EE2-39080000119D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C812DC00-0017-6481-5EE2-39080000119E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "C812DC00-0017-6481-5EE2-39080000119F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C812DC00-0017-6481-5EE2-3908000011A0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C812DC00-0017-6481-5EE2-3908000011A1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C812DC00-0017-6481-5EE2-3909000011A2";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C812DC00-0017-6481-5EE2-3909000011A3";
createNode displayLayerManager -n "layerManager";
	rename -uid "C812DC00-0017-6481-5EE2-3909000011A4";
createNode displayLayer -n "defaultLayer";
	rename -uid "C812DC00-0017-6481-5EE2-3909000011A5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C812DC00-0017-6481-5EE2-3909000011A6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C812DC00-0017-6481-5EE2-3909000011A7";
	setAttr ".g" yes;
createNode reference -n "testUnrealRig_01RN";
	rename -uid "C812DC00-0017-6481-5EE2-3A8F000011A8";
	setAttr ".fn[0]" -type "string" "/media/aurora/gDrive/gDrive/PERSONAL/TESTING_GROUNDS//scenes/testUnrealRig_01.ma";
	setAttr -s 339 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"testUnrealRig_01RN"
		"testUnrealRig_01RN" 0
		"testUnrealRig_01RN" 821
		2 "|testUnrealRig_01:Character1_Reference|testUnrealRig_01:Character1_Hips" 
		"visibility" " -k 0 -cb 1 1"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translate" " -type \"double3\" 0.0061230771694679555 92.70504798774187805 -0.014849900557288319"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotate" " -type \"double3\" 0.0066508483108040682 -0.076332821575403872 -4.3443906667129333e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translate" " -type \"double3\" 12.25573539733886719 8.15253448486328125 -7.54534578323364258"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotate" " -type \"double3\" -5.37950348962236546 -10.97585597230181165 0.51722646414956108"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translate" " -type \"double3\" -12.83299251797932072 8.15008436297757832 -0.80611837951026932"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotate" " -type \"double3\" 6.73788061442840203 13.64247940646433754 0.80739103485750463"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translate" " -type \"double3\" 22.40046620178222625 92.63167156982422057 0.21385082626342775"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotate" " -type \"double3\" -64.55640277525742476 -78.57885002683279652 64.11434456204584365"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translate" " -type \"double3\" -26.38724096679687392 93.12829937744140807 0.21156902313232423"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotate" " -type \"double3\" 48.43162004730987746 76.17298964832482966 47.60372890650442912"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translate" " -type \"double3\" 10.68140302515089601 47.86671050906814884 1.22023127873846948"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotate" " -type \"double3\" -7.73464175800038767 -2.17256113025092468 12.50744988351784848"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translate" " -type \"double3\" -10.98190013525312203 48.26661100554692041 5.80896139542611945"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotate" " -type \"double3\" 9.57733549822854968 2.54630169941738904 9.41897028532652847"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translate" " -type \"double3\" 20.09188044339184742 118.733186644840643 -4.49949201292548651"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotate" " -type \"double3\" -62.47121646120358918 -78.7435127353716382 63.6968029176369015"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translate" " -type \"double3\" -22.08406731775653142 118.98455289235809573 -4.45742004789241442"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotate" " -type \"double3\" -44.78816892234657132 -76.30680449671297083 47.06989657407991956"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translate" " -type \"double3\" 0.023802216143278019 105.97503700141375305 -0.014850907310012647"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotate" " -type \"double3\" 0 -4.0915822910562991e-07 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translate" " -type \"double3\" 0.0238028578132089 145.56359132656737643 -0.014850870967495742"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotate" " -type \"double3\" 0 -4.0915822910562991e-07 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translate" " -type \"double3\" 14.99531704647243302 1.89058548346857558 5.11644394689497339"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotate" " -type \"double3\" -1.5835134028877666e-06 -12.20874644950069055 3.1684002790584816e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translate" " -type \"double3\" -16.22786899093553714 1.88775764202770802 11.69590726404255676"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotate" " -type \"double3\" 5.5449223012483973e-08 15.18730646478907254 -4.4035147895933674e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translate" " -type \"double3\" 17.73105298678830977 145.56372865566893893 -0.014850872830140891"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotate" " -type \"double3\" 62.43779322799112919 79.38238105977724501 62.01912549934981911"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translate" " -type \"double3\" -17.68347301322211251 145.56401857266112643 -0.014850869097871762"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotate" " -type \"double3\" 45.78974127133273697 76.82629358310580869 45.00572175863504754"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translate" " -type \"double3\" 0.023802867317724463 163.97504457363768893 -0.014850854189731736"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotate" " -type \"double3\" 0 -4.0915822910562991e-07 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translate" " -type \"double3\" 8.9159979602588102 92.65435881058373013 -0.015884160033565516"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotate" " -type \"double3\" -1.3286744187610382 -2.46691236345661169 -1.96636131652509061"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translate" " -type \"double3\" -8.90387010166874937 92.71691932563250305 -0.013815636090575205"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotate" " -type \"double3\" 0.065599508255701974 2.70427887264050737 -7.52245049967192969"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translate" " -type \"double3\" 22.11490087987573361 81.49273828638501982 7.27633489507508813"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotate" " -type \"double3\" 64.14525235726274843 -78.74363268374486324 -63.69606216430186407"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translate" " -type \"double3\" 24.12616035971800343 75.93499725401828471 7.04723559508346131"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotate" " -type \"double3\" 2.93232397062847072 -11.89043616993377661 84.5059459922242695"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translate" " -type \"double3\" 24.49443940384194818 74.74767672954475017 4.74700936337940149"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotate" " -type \"double3\" 0.89761243166177995 -10.08131427626869936 84.95915207187886153"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translate" " -type \"double3\" 24.30598482955312889 75.13478546211673859 2.5451558276336379"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotate" " -type \"double3\" 0.89400102408042348 -10.07806815684235779 84.95983863996519858"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translate" " -type \"double3\" 23.43475051080348948 76.8260946565925309 0.51617794174219522"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotate" " -type \"double3\" 0.89414390118118847 -10.07810913746236636 84.95988218378241186"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translate" " -type \"double3\" -27.0156749642056262 82.03793282129221609 7.45074637573192611"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotate" " -type \"double3\" -52.86085595187859809 74.76363083343136395 -50.17909750946274272"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translate" " -type \"double3\" -29.43012541251324521 76.49965547603223115 6.4073684567022644"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotate" " -type \"double3\" 0.3357853295839861 8.3037502349120107 80.91888340583868455"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translate" " -type \"double3\" -29.85358142042495189 75.39674591766102196 4.3759064298789152"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotate" " -type \"double3\" 0.33578331637501907 8.30375193545648038 80.9188831267896802"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translate" " -type \"double3\" -29.60768009706771409 75.77253947770334719 2.20749336068665825"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotate" " -type \"double3\" 0.33576528154522811 8.30375730924916944 80.91884744409635744"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translate" " -type \"double3\" -28.58783779161282368 77.39720149153964712 0.26398558131080563"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotate" " -type \"double3\" 0.33613441766267738 8.30379673708110033 80.91943816768934994"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translate" " -type \"double3\" 0.014476316886225195 98.9750446308082843 -0.014850376456145117"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotate" " -type \"double3\" 0.0066508479088022076 -0.076332589071083881 -4.3444715965721618e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotate" " -type \"double3\" 0.16350666802372976 -2.33049624196449345 -1.57708123914938203"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotate" " -type \"double3\" -7.23309551104560633 0.00014400782881512916 14.01561761473572432"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotate" " -type \"double3\" -5.69088601523233173 -3.03894483594160558 -11.74340452015465175"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotate" " -type \"double3\" 0 -4.1410553470385408e-06 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotate" " -type \"double3\" -0.2411985772137327 2.5789882536930504 -7.46568398176892156"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotate" " -type \"double3\" 8.92815203244686018 -9.3902097521049636e-05 16.81711215385765001"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotate" " -type \"double3\" 6.40637941436181535 3.84860174726486992 -8.3913080214971405"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine" 
		"rotate" " -type \"double3\" -0.0066508416272232718 0.076331945867188347 -4.4632388224977211e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm" 
		"rotate" " -type \"double3\" 62.61988486830805556 79.30178511285565435 62.20530291793275524"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotate" " -type \"double3\" -1.56385756465252e-05 0.29034231180609854 19.62007081120606955"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotate" " -type \"double3\" -1.6748124494140495 7.8294654393950872e-05 -1.3665442564380353e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1" 
		"rotate" " -type \"double3\" 4.6431994256896218e-06 -6.0436569162435265e-06 9.535962659922871e-07"
		
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
		"rotate" " -type \"double3\" -8.6445517108914909e-06 -1.4881154073917862e-05 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1" 
		"rotate" " -type \"double3\" -1.4960224364516761e-06 0 -7.5809671892952573e-06"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3" 
		"rotate" " -type \"double3\" -2.1754235785246295e-06 -6.4735911979313427e-06 -3.4400545350055454e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1" 
		"rotate" " -type \"double3\" 4.6075591867093966e-06 -1.7598062062530076e-06 -6.7058031693647978e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotate" " -type \"double3\" 2.5478400425891129e-06 -1.3646569024270363e-06 5.5805096364809699e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotate" " -type \"double3\" -5.0980405890580911e-06 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotate" " -type \"double3\" -4.7681610101047832e-06 0 1.4050294800984813e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotate" " -type \"double3\" 4.6071421459434696e-06 -1.7598062062658419e-06 -6.7060887779378072e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2" 
		"rotate" " -type \"double3\" 0 -3.2639071053152386e-06 5.5477460456587407e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1" 
		"rotate" " -type \"double3\" 4.6071686118949465e-06 -1.7597371454673852e-06 -6.7060887779351272e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2" 
		"rotate" " -type \"double3\" -1.2999330615195865e-06 -7.580677230164669e-06 0.00011834269141024132"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm" 
		"rotate" " -type \"double3\" 46.02731841095277332 76.75884349563584408 45.25097204495217795"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotate" " -type \"double3\" 3.7946982142363611e-05 0.53625711215420735 19.42886899970666548"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotate" " -type \"double3\" 3.12310452522295057 8.4011845349635323e-05 -9.3109067824051489e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotate" " -type \"double3\" 5.8002498417396036e-06 2.7777164398811389e-05 -8.7381376542229215e-07"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotate" " -type \"double3\" -5.6143711273768195e-06 -6.2673024829445291e-05 2.4096523509474734e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotate" " -type \"double3\" 1.0069470034104234e-05 0.00012334668427925442 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotate" " -type \"double3\" 5.1510982059026634e-06 -4.8061562692239516e-05 1.6677488449181747e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotate" " -type \"double3\" 6.2301959870123921e-06 0 6.2008899475138977e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotate" " -type \"double3\" -5.9368601635929454e-06 1.3442255924058525e-06 9.1155696834242927e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotate" " -type \"double3\" 1.9654283332636327e-06 0 3.4159947576033145e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotate" " -type \"double3\" -1.6687864846678445e-06 -1.6677714128476905e-06 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotate" " -type \"double3\" 6.230191306469222e-06 0 6.2008899946394607e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotate" " -type \"double3\" -5.9368561218259099e-06 1.344225584513827e-06 9.115569709984656e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotate" " -type \"double3\" 1.9654295316950718e-06 0 3.4159947515182216e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotate" " -type \"double3\" 3.0018988677802023e-06 0 -4.6415608190939106e-07"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotate" " -type \"double3\" 6.2301945850508332e-06 0 6.2008899604015487e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotate" " -type \"double3\" 4.5732570856241153e-07 2.1917565855648485e-06 6.2896609435052407e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotate" " -type \"double3\" 1.821372039804381e-06 -1.1276830242226377e-08 2.5664533713973976e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotate" " -type \"double3\" 2.5420145715330035e-06 0 -2.0537425776613553e-07"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotate" " -type \"double3\" 6.2301919126696341e-06 -2.089726055645539e-10 6.2008899891559212e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotate" " -type \"double3\" -3.3395945514298739e-06 2.2143048719344049e-06 0.00063316847714585834"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotate" " -type \"double3\" -1.0102618647436823e-06 0 2.6492176222071491e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4" 
		"rotate" " -type \"double3\" -9.6723078953063905e-07 0 -2.6910324843647127e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck" 
		"rotate" " -type \"double3\" 0 0 0"
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
		2 "|testUnrealRig_01:pCube8" "visibility" " 1"
		2 "testUnrealRig_01:HIKSolverNode1" "nodeState" " 0"
		2 "testUnrealRig_01:HIKSolverNode1" "InputActive" " 1"
		2 "testUnrealRig_01:HIKSolverNode1" "InputStance" " 0"
		2 "testUnrealRig_01:HIKSolverNode1" "InputStanceMask" " 0"
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[1]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[2]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[3]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[4]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[5]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[6]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[7]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[8]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[9]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[10]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[11]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[12]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[13]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[14]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[15]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[16]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[17]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[18]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[19]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[20]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[21]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[22]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[23]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[24]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[25]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[26]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[27]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[28]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[29]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[30]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[31]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[32]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[33]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[34]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[35]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[36]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[37]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[38]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[39]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[40]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[41]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[42]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[43]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[44]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[45]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[46]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[47]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[48]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[49]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[50]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[51]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[52]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[53]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[54]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[55]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[56]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[57]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[58]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[59]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[60]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[61]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[62]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[63]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[64]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[65]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[66]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[67]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[68]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[69]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[70]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[71]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[72]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[73]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[74]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[75]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[76]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[77]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[78]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[79]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[80]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[81]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[82]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[83]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[84]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[85]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[86]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[87]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[88]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[89]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[90]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[91]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[92]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[93]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[94]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[95]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[96]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[97]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[98]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[99]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[100]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[101]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[102]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[103]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[104]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[105]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[106]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[107]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[108]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[109]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[110]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[111]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[112]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[113]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[114]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[115]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[116]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[117]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[118]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[119]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[120]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[121]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[122]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[123]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[124]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[125]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[126]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[127]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[128]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[129]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[130]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[131]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[132]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[133]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[134]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[135]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[136]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[137]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[138]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[139]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[140]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[141]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[142]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[143]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[144]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[145]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[146]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[147]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[148]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[149]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[150]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[151]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.rotateY" 
		"testUnrealRig_01RN.placeHolderList[152]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.rotateX" 
		"testUnrealRig_01RN.placeHolderList[153]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.translateZ" 
		"testUnrealRig_01RN.placeHolderList[154]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.translateY" 
		"testUnrealRig_01RN.placeHolderList[155]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.translateX" 
		"testUnrealRig_01RN.placeHolderList[156]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[157]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[158]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[159]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[160]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[161]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[162]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[163]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot.rotateY" 
		"testUnrealRig_01RN.placeHolderList[164]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot.rotateX" 
		"testUnrealRig_01RN.placeHolderList[165]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[166]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase.rotateY" 
		"testUnrealRig_01RN.placeHolderList[167]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase.rotateX" 
		"testUnrealRig_01RN.placeHolderList[168]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[169]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[170]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[171]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[172]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[173]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[174]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[175]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot.rotateY" 
		"testUnrealRig_01RN.placeHolderList[176]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot.rotateX" 
		"testUnrealRig_01RN.placeHolderList[177]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[178]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase.rotateY" 
		"testUnrealRig_01RN.placeHolderList[179]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase.rotateX" 
		"testUnrealRig_01RN.placeHolderList[180]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[181]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine.rotateY" 
		"testUnrealRig_01RN.placeHolderList[182]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine.rotateX" 
		"testUnrealRig_01RN.placeHolderList[183]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[184]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[185]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[186]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[187]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[188]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[189]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[190]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder.rotateY" 
		"testUnrealRig_01RN.placeHolderList[191]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder.rotateX" 
		"testUnrealRig_01RN.placeHolderList[192]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[193]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[194]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[195]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[196]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[197]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[198]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[199]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand.rotateY" 
		"testUnrealRig_01RN.placeHolderList[200]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand.rotateX" 
		"testUnrealRig_01RN.placeHolderList[201]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[202]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[203]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[204]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[205]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[206]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[207]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[208]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[209]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[210]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[211]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[212]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[213]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[214]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[215]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[216]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[217]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[218]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[219]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[220]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[221]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[222]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[223]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[224]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[225]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[226]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[227]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[228]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[229]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[230]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[231]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[232]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[233]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[234]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[235]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[236]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[237]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[238]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[239]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[240]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[241]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[242]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[243]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[244]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[245]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[246]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[247]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[248]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[249]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[250]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[251]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[252]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[253]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[254]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[255]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[256]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[257]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[258]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[259]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[260]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[261]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[262]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder.rotateY" 
		"testUnrealRig_01RN.placeHolderList[263]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder.rotateX" 
		"testUnrealRig_01RN.placeHolderList[264]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[265]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[266]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[267]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[268]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[269]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[270]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[271]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand.rotateY" 
		"testUnrealRig_01RN.placeHolderList[272]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand.rotateX" 
		"testUnrealRig_01RN.placeHolderList[273]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[274]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[275]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[276]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[277]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[278]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[279]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[280]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[281]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[282]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[283]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[284]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[285]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[286]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[287]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[288]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[289]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[290]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[291]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[292]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[293]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[294]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[295]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[296]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[297]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[298]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[299]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[300]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[301]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[302]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[303]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[304]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[305]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[306]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[307]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[308]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[309]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[310]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[311]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[312]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[313]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[314]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[315]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[316]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[317]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[318]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[319]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[320]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[321]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[322]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[323]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[324]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[325]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[326]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[327]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[328]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[329]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[330]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[331]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[332]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[333]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[334]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck.rotateY" 
		"testUnrealRig_01RN.placeHolderList[335]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck.rotateX" 
		"testUnrealRig_01RN.placeHolderList[336]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[337]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head.rotateY" 
		"testUnrealRig_01RN.placeHolderList[338]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head.rotateX" 
		"testUnrealRig_01RN.placeHolderList[339]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C812DC00-0017-6481-5EE2-3AEA0000127C";
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
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1869\n            -height 1186\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1869\\n    -height 1186\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1869\\n    -height 1186\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C812DC00-0017-6481-5EE2-3AEA0000127D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "sharedReferenceNode";
	rename -uid "C812DC00-0017-6481-5EE2-3C0A0000128E";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode animCurveTA -n "Character1_Ctrl_Hips_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001664";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.3444981190171593e-06 60 -4.3409587082106818e-06 120 -4.3444928296440388e-06;
createNode animCurveTA -n "Character1_Ctrl_Hips_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001665";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.07633251374796847 60 -0.076342565590801825 120 -0.076332507077873396;
createNode animCurveTA -n "Character1_Ctrl_Hips_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001666";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.006650847874480845 60 0.0066508524546543728 120 0.0066508474575696095;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001667";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.014850377105176449 60 -0.01485029049217701 120 -0.014850376173853874;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001668";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 98.979263305664062 60 98.416282653808594 120 99.615470886230469;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001669";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.014489172026515007 60 0.012773658148944378 120 0.014489171095192432;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000166A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.0066508481712119196 60 0.0066508527506059494 120 0.0066508478532113138;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000166B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.076332516018372154 60 -0.07634256785258188 120 -0.076332510483486826;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000166C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.3444982495144035e-06 60 -4.3409588381513999e-06 120 -4.344493090639037e-06;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000166D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.01484990119934082 60 -0.014849815517663956 120 -0.01484990119934082;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000166E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 92.709266662597656 60 92.146286010742188 120 92.709;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000166F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.0061359405517578125 60 0.0044193267822265625 120 0.0061359405517578125;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001670";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.4632489514088849e-06 60 -4.4618972518338937e-06 120 -4.4632440723339873e-06;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001671";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.076331967309621426 60 0.07632910582459014 120 0.076331960639523119;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001672";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.0066508415991512956 60 -0.0066508453453464943 120 -0.0066508411822466876;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001673";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001674";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001675";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001676";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001677";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001678";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001679";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000167A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 -1.3460276779670795e-05 120 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000167B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000167C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.01485090795904398 60 -0.01485082134604454 120 -0.014850907027721405;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000167D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 105.97925567626953 60 105.41627502441406 120 106.61546325683594;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000167E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.023815061897039413 60 0.022100800648331642 120 0.023814987391233444;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000167F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001680";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 -1.3460276779670795e-05 120 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001681";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001682";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.01485087163746357 60 -0.014850782230496407 120 -0.014850870706140995;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001683";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 145.56781005859375 60 145.00482177734375 120 146.20401000976562;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001684";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.023815631866455078 60 0.022110939025878906 120 0.023815631866455078;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001685";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 62.30660633081169 60 48.787702085417905 120 62.306727305874553;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001686";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 79.27739702510425 60 82.531978619839236 120 79.277397575718282;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001687";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 62.719857093779225 60 49.378599332217171 120 62.719975414616897;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001688";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 19.678800800115908 60 11.84130476872288 120 19.678814763180359;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001689";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.2904683008580472 60 0.2736551069008244 120 0.29049441593747832;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000168A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.5882250770227596e-05 60 1.6636107404479527e-05 120 -5.5402808294595009e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000168B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.3197349158587118e-05 60 -7.5664246876851345e-05 120 -1.6015529618173185e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000168C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.7645716538257147e-05 60 0.00016424624146647084 120 7.182834115449699e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000168D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.6747767094630681 60 -1.6795461931489692 120 -1.6747822502229051;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000168E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9412565194479472e-19 60 1.9412565194479472e-19 120 1.9412565194479472e-19;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000168F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001690";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001691";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -64.416111931208277 16 -64.416263280515395 75 -51.790393217183329 120 -62.268055721642746
		 135 -64.416114825599394;
	setAttr ".roti" 5;
	setAttr ".pre" 3;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001692";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -78.635689749505445 16 -78.635696442215888 75 -81.990918162910035 120 -79.432571520449187
		 135 -78.6356875741278;
	setAttr ".roti" 5;
	setAttr ".pre" 3;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001693";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 63.971545655638671 16 63.971685560626462 75 51.189380430474856 120 61.787963179223652
		 135 63.971546301611006;
	setAttr ".roti" 5;
	setAttr ".pre" 3;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001694";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.21385097503662109 16 0.21384954452514648 75 0.21385931968688965 120 0.21384825557470322
		 135 0.21384620666503906;
	setAttr ".pre" 3;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001695";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 92.565505981445312 16 93.201713562011719 75 91.494338989257812 120 92.934923410415649
		 135 93.201698303222656;
	setAttr ".pre" 3;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001696";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 22.40046501159668 16 22.400476455688477 75 22.398822784423828 120 22.400218069553375
		 135 22.400476455688477;
	setAttr ".pre" 3;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001697";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -62.741724508412531 60 -50.112054965334927 120 -62.741683897596467;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001698";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -78.635714550901085 60 -81.990963573818647 120 -78.63570608096839;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001699";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 63.971931934172211 60 51.1906375032273 120 63.971905876950821;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000169A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.5131940841674805 60 -2.6846575736999512 120 -4.5131940841674805;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000169B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 118.73924255371094 60 117.93108367919922 120 119.37542724609375;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000169C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 20.092063903808594 60 20.067581176757812 120 20.092075347900391;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000169D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 62.719865109674373 60 49.378660477007415 120 62.71997935354338;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000169E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 79.277397726933799 60 82.531986216531593 120 79.277397546218651;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000169F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 62.306609641316648 60 48.787775836436261 120 62.306730781489463;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.014850873500108719 60 -0.014850784093141556 120 -0.014850872568786144;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 145.56794738769531 60 145.00495910644531 120 146.20414733886719;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.73106575012207 60 17.729362487792969 120 17.73106575012207;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 45.358341876953297 60 31.029876167688769 120 45.358412956353902;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 76.739918262579309 60 79.265483850570078 120 76.739919534277362;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 46.132188552124653 60 32.137305690695115 120 46.132261117243296;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 19.487791464661061 60 11.624609573908035 120 19.487812052693119;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.53647591388573801 60 0.50727690100723 120 0.53648941425463725;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.7948031962660352e-05 60 3.6982608578753316e-05 120 3.2864937737887906e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -9.2787204847870252e-05 60 -0.00013573970399350236 120 -9.9721722674322121e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.321160850869596e-05 60 0.0001900029289474782 120 6.1489380892607582e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.1230435696566876 60 3.1311780681905175 120 3.123034095398062;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.765026077791789e-19 60 -7.765026077791789e-19 120 -7.765026077791789e-19;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 48.253400964557549 16 48.253212461912696 75 34.36705479565974 120 45.595245589592857
		 135 48.253320277577984;
	setAttr ".roti" 5;
	setAttr ".pre" 3;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 76.219312637877181 16 76.219272603521532 75 78.777529147553267 120 76.859818619103024
		 135 76.219291563154968;
	setAttr ".roti" 5;
	setAttr ".pre" 3;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 47.420798175143069 16 47.420610636581856 75 33.24077609984942 120 44.695986815406741
		 135 47.420722270416768;
	setAttr ".roti" 5;
	setAttr ".pre" 3;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.21157026290893555 16 0.21155834197998047 75 0.21159672737121582 120 0.21157319098711014
		 135 0.21156883239746094;
	setAttr ".pre" 3;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 93.0621337890625 16 93.698341369628906 75 91.990966796875 120 93.431538343429565
		 135 93.698310852050781;
	setAttr ".pre" 3;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -26.387241363525391 16 -26.387237548828125 75 -26.388921737670898 120 -26.38749748468399
		 135 -26.387233734130859;
	setAttr ".pre" 3;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -45.130384116235213 60 -31.235967571180165 120 -45.130396790592343;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -76.219185271913133 60 -78.7772980727012 120 -76.219177434352602;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 47.420813197796775 60 33.240871723414941 120 47.420836061040681;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.4711675643920898 60 -2.6365664005279541 120 -4.4711694717407227;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 118.99064636230469 60 118.17747497558594 120 119.62681579589844;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -22.084375381469727 60 -22.043264389038086 120 -22.084381103515625;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 46.132198952034692 60 32.13727412010121 120 46.132260764486105;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 76.739918708677621 60 79.265471825711231 120 76.739919278816885;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 45.35834418006484 60 31.029833093762953 120 45.358412135516318;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.01485086977481842 60 -0.014850779436528683 120 -0.014850868843495846;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 145.5682373046875 60 145.0052490234375 120 146.20443725585938;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -17.683460235595703 60 -17.685165405273438 120 -17.683460235595703;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.5600625575186018 60 -3.8311995390962736 120 5.0105556937162383;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.3164350908366256 60 -4.1928906837478479 120 -2.3131498786243778;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.25075922788749255 60 -11.393063704055159 120 -0.015879926385366009;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 13.976453112038177 60 19.202942000614819 120 0.085346730245242225;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00014419897987096513 60 0.00011016780721133921 120 9.1712032024266789e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.287180330046982 60 -0.069580562871150678 120 -7.373467342258853;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -11.721552723425166 60 -14.637667187691063 120 -4.5091609153845127;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.0695035492648541 60 1.008545822804978 120 -3.2772863901309144;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.7099781408150792 60 -3.1621408048441157 120 -4.7770313920302829;
createNode animCurveTA -n "Character1_Ctrl_LeftToeBase_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.1096189106399493e-22 60 0 120 5.1096200012556598e-22;
createNode animCurveTA -n "Character1_Ctrl_LeftToeBase_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.1723204774304769e-06 60 0 120 -4.1723213679857879e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftToeBase_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.5936834246301022 60 -12.184402957831695 120 -7.593683975473084;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.2322644808098513 60 -0.16774705168706225 120 -2.2322645463470101;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 12.427441779164559 60 14.979086611542684 120 12.42744207673389;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.2069859504699707 60 2.9745702743530273 120 1.2069859504699707;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 47.869693756103516 60 47.471580505371094 120 47.869693756103516;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 10.670416831970215 60 12.136520385742188 120 10.670416831970215;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.4516972228574687 60 -9.3182252010740747 120 -3.8709037262515755;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.5601485856425166 60 5.0742955541614148 120 2.5571318043274438;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.34684734409897866 60 13.751942840517613 120 -0.18480786409100924;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 16.782972503522792 60 21.338896640054585 120 9.2521999835924724;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -9.3246859854669706e-05 60 -0.00018898532597840344 120 -0.0001975738669260651;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.9931821055693284 60 0.31494208749315433 120 9.0489185752827197;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.3712659867536843 60 -11.04586836074739 120 -4.5127010988855751;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.8835575949738268 60 -0.78128778944326616 120 4.04506914771554;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.4342213899890099 60 2.7187196925636772 120 5.8116489790113679;
createNode animCurveTA -n "Character1_Ctrl_RightToeBase_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_RightToeBase_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_RightToeBase_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.7378805614391313 60 6.7378823220010258 120 6.7378809912206616;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 13.642479497617165 60 13.642476545731807 120 13.642480657364262;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.8073908457610689 60 0.80739704545010815 120 0.80739032283143153;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.80611801147460938 60 -0.8061671257019043 120 -0.80611920356750488;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.15008544921875 60 8.1499404907226562 120 8.1500968933105469;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -12.832992553710938 60 -12.832987785339355 120 -12.832993507385254;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.4067086172644512 60 14.963223865097325 120 9.2785012095290469;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.627487351394115 60 -0.14069110715707894 120 2.6299828585051954;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.3483661449725375 60 11.380472520724174 120 5.3905490024181226;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.7982697486877441 60 7.2250661849975586 120 3.0134785175323486;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 48.268241882324219 60 48.050601959228516 120 48.628391265869141;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -10.967169761657715 60 -12.93293285369873 120 -10.965395927429199;
createNode animCurveTA -n "Character1_Ctrl_RightFootEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.460384513750059e-15 60 1.7684092637596697e-06 120 -1.38065745544945e-06;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightFootEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 15.187306522936218 60 15.187304659008559 120 15.187307736042202;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightFootEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000016FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.6038071926719603e-06 60 1.9584109257795129e-06 120 -5.2701798267072668e-06;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightFootEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001700";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 11.695907592773438 60 11.695863723754883 120 11.695908546447754;
createNode animCurveTL -n "Character1_Ctrl_RightFootEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001701";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.887758731842041 60 1.8876132965087891 120 1.8877696990966797;
createNode animCurveTL -n "Character1_Ctrl_RightFootEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001702";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -16.227869033813477 60 -16.227863311767578 120 -16.227870941162109;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001703";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.3633597841290549 60 13.732941762876827 120 -0.19660985091448013;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.6349735662201383 60 5.1485535315554518 120 2.6328411083646794;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001705";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.4524456271345469 60 -9.3199181683459944 120 -3.8714381434251175;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001706";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.013815636746585369 60 -0.013815549202263355 120 -0.013815635815262794;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001707";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 92.721138000488281 60 92.158157348632812 120 93.357345581054688;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001708";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.9038572311401367 60 -8.9055747985839844 120 -8.9038572311401367;
createNode animCurveTA -n "Character1_Ctrl_Head_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_Head_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000170A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_Head_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000170B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000170C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000170D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000170E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000170F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001710";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 -1.3460276779670795e-05 120 0;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001711";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001712";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.014850854873657227 60 -0.014850763604044914 120 -0.014850853942334652;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001713";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 163.97926330566406 60 163.41627502441406 120 164.61546325683594;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001714";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.023815615102648735 60 0.022114427760243416 120 0.023815540596842766;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001715";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.6079595528284571e-07 60 -7.5538173684758519e-15 120 1.8956219981568848e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001716";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -6.0892867631053258e-06 60 -6.3611093629270335e-15 120 -1.8112659945717681e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001717";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.6782557638168848e-06 60 -3.1010408144269288e-14 120 9.2300628953809299e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001718";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.0625850519134441e-19 60 -2.0625850519134441e-19 120 -2.0625850519134441e-19;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001719";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -9.7062825972397362e-20 60 -9.7062825972397362e-20 120 -9.7062825972397362e-20;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000171A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.3309691786916385e-25 60 8.3309691786916385e-25 120 8.3309691786916385e-25;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000171B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.0259039841940977e-18 60 -3.4699960272952395e-18 120 -3.5293397187961112e-19;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000171C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4993507371208676e-05 60 -1.213285324654967e-20 120 -7.6551574764774542e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000171D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.6229687278868223e-06 60 -1.1503210096643211e-05 120 -8.5999383863599684e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000171E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.0888874903416268e-14 60 -5.0888874903416268e-14 120 -5.0888874903416268e-14;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000171F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.4265706493099341e-20 60 2.4265706493099341e-20 120 2.4265706493099341e-20;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001720";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001721";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.6374225580894456e-06 60 -1.0347376823774335e-07 120 -2.040143377192856e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.3388726198330271e-12 60 1.072970380565789e-11 120 1.2621517802254788e-13;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001723";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4849059712458713e-06 60 -2.9683942802146833e-06 120 7.1116337566650872e-07;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001724";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.6546682903450628e-17 60 2.6546682903450628e-17 120 2.6546682903450628e-17;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001725";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.975693351829396e-16 60 -3.975693351829396e-16 120 -3.975693351829396e-16;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001727";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.4346418401458017e-05 60 -4.1569640348172966e-05 120 -2.730295575229467e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001728";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -6.4882254109704393e-06 60 -4.5352949108036758e-06 120 -6.9546725990291378e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001729";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.1815421346875273e-06 60 -1.3650230013673571e-06 120 -2.4274167880966725e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000172A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000172B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.9508399496147545e-16 60 7.9508399496147545e-16 120 7.9508399496147545e-16;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000172C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000172D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -6.7564322464725898e-06 60 0 120 -1.95891040681005e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000172E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.7730928121763719e-06 60 -3.1060104311167156e-18 120 -1.6803782917404323e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000172F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.6275774475650383e-06 60 1.9561476904041107e-06 120 6.1868462630408986e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001730";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.591622753840172e-05 60 4.1085812138040355e-05 120 6.8857301729026457e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001731";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.3543602249437332e-06 60 -2.7284481553162257e-06 120 -2.5204828620898542e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001732";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.5670956047233218e-06 60 -2.5522806319059394e-09 120 -4.2775152688815577e-09;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001733";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.8621571370561415e-27 60 -1.2843825082681905e-27 120 1.8477014907681905e-26;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001734";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4753549547804414e-17 60 -3.8825130388958945e-18 120 -1.242404172446687e-17;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001735";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.1169566232942281e-06 60 -2.5926186145978807e-06 120 -4.6209980249287749e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001736";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4156375078156689e-05 60 0 120 1.4385919831080755e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001737";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.0888874903416268e-14 60 -5.0888874903416268e-14 120 -5.0888874903416268e-14;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001738";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.7653649198982594e-06 60 -5.1385021587063353e-06 120 -4.368607006598933e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001739";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -6.756720011401535e-06 60 0 120 -1.9589488775403714e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000173A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.7730928121893265e-06 60 0 120 -1.6803782919281782e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000173B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.6271572581249603e-06 60 1.9561476904041107e-06 120 6.1856280851534602e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000173C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.5586117965682679e-05 60 4.1085812208386732e-05 120 6.2343284483844491e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000173D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.2679498414136993e-06 60 -2.7284481538466281e-06 120 -3.1274434776587866e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000173E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.8753756491733696e-12 60 2.1252994142071234e-12 120 3.2249124179709302e-12;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000173F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001740";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001741";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001742";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001743";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.0888874903416268e-14 60 -5.0888874903416268e-14 120 -5.0888874903416268e-14;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001744";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001745";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -6.7567200113988398e-06 60 6.7943978180678154e-19 120 -1.9589488775399201e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001746";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.773023229979131e-06 60 0 120 -1.680285273842415e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001747";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.6271839238954101e-06 60 1.9561476904041107e-06 120 6.1856533260354121e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001748";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.0001185105767825255 60 9.6106333849221994e-05 120 0.00013222824700683279;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001749";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.6093202716487117e-06 60 -3.7869166219080411e-06 120 -8.6827359554148056e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000174A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2888135795811667e-06 60 -2.7727044704393395e-06 120 -2.4271862102848605e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000174B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.9412565194479472e-19 60 -1.9412565194479472e-19 120 -1.9412565194479472e-19;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000174C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.0664266232748592e-21 60 6.0664266232748592e-21 120 6.0664266232748592e-21;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000174D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4033418597142049e-14 60 1.4033418597142049e-14 120 1.4033418597142049e-14;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000174E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.1384632221221202e-42 60 -5.1384632221221202e-42 120 -5.1384632221221202e-42;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000174F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.0888874903416268e-14 60 -5.0888874903416268e-14 120 -5.0888874903416268e-14;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001750";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.3141581051921216e-26 60 2.3141581051921216e-26 120 2.3141581051921216e-26;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001751";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 64.415661402766133 60 51.78961322785225 120 64.415605735143231;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001752";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -78.635836704246614 60 -81.991053108638823 120 -78.635831871150742;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001753";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -63.971237737562284 60 -51.188788775214888 120 -63.971202848973959;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001754";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.2821621894836426 60 6.504511833190918 120 7.2821559906005859;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001755";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 81.504219055175781 60 79.972114562988281 120 82.140403747558594;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001756";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 22.114622116088867 60 22.151823043823242 120 22.114635467529297;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.9338841612434039 60 2.8877914999168874 120 2.9338870366755398;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001758";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -12.010907910901919 60 -8.0476332589514641 120 -12.01090882953263;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001759";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.501500415902726 60 84.645206166949222 120 84.50149087978366;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000175A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.0560159683227539 60 5.8842782974243164 120 7.0560102462768555;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000175B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 75.946258544921875 60 74.443443298339844 120 76.582450866699219;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000175C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 24.125898361206055 60 24.160861968994141 120 24.12591552734375;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000175D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.89819741981396983 60 0.87909076376014317 120 0.89820003947992144;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000175E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -10.201864897664596 60 -6.236052537312669 120 -10.201865106110043;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000175F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.959104624021222 60 84.960009262115761 120 84.959104637279424;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001760";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.756378173828125 60 3.5061137676239014 120 4.7563729286193848;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001761";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 74.757728576660156 60 73.416313171386719 120 75.393913269042969;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001762";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 24.494277954101562 60 24.515823364257812 120 24.494287490844727;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001763";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.89458449651329219 60 0.87551884295956894 120 0.89458739294707024;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001764";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -10.19861871616278 60 -6.2328085363684655 120 -10.19862065490476;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001765";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.959798940535862 60 84.960451124159405 120 84.959789775204257;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001766";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.5542776584625244 60 1.3369725942611694 120 2.5542738437652588;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001767";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 75.143707275390625 60 73.953094482421875 120 75.779891967773438;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001768";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 24.305917739868164 60 24.314870834350586 120 24.305929183959961;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001769";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.8947283648315969 60 0.87563023604566725 120 0.89473043730542079;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000176A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -10.198659572496711 60 -6.2328533798715613 120 -10.198660452202109;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000176B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.959842475834279 60 84.960494198101998 120 84.959842276313324;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000176C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.52435284852981567 60 -0.56658554077148438 120 0.52434921264648438;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000176D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 76.833999633789062 60 75.779083251953125 120 77.470191955566406;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000176E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 23.434768676757812 60 23.432344436645508 120 23.434783935546875;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000176F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -9.2633142666905046e-07 60 6.0821316982159207e-06 120 3.8289064490173864e-08;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001770";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.759268316297282e-05 60 5.2211638156662996e-05 120 4.02159485592005e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001771";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.6997233087778296e-06 60 1.9114953206865036e-05 120 1.1555764418806185e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001772";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.4278441016596117e-06 60 1.6147040006853981e-10 120 2.6611150911067537e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001773";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -6.2678849805431155e-05 60 -6.1901508841816043e-05 120 -6.8748786499588208e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001774";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.5558666555602059e-06 60 -1.3363267511456399e-05 120 -8.6640174091442661e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001775";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.28735410246495e-11 60 -6.910709211883929e-11 120 -5.0227319529671858e-11;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001776";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00012331172772016307 60 0.00012797666803830737 120 0.00011065060953518271;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001777";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.0047748256639911e-05 60 1.2946511696435248e-05 120 9.4295858774145174e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001778";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.6803407489582474e-06 60 -4.4345158757994144e-11 120 1.5398632446819095e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001779";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.7927744985577572e-05 60 -6.5785670116521715e-05 120 -4.2007055472721346e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000177A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.1332058618195944e-06 60 7.5209327854301166e-06 120 5.3463121636169823e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000177B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.205575848919131e-05 60 5.5802439810144621e-05 120 6.0968612474804221e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000177C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.1516083681385359e-12 60 9.3477695651166053e-13 120 1.1068866983786499e-12;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000177D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.244202836814545e-06 60 4.3749937364140066e-06 120 6.8543171971989284e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000177E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.1077961577054061e-05 60 0.00010145170386827595 120 9.1988113859198424e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000177F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.3543745247702401e-06 60 3.1277166295623926e-12 120 2.5745739477982402e-12;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001780";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.9882472424438924e-06 60 8.693400657619587e-07 120 -6.1718318276644849e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001781";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.4058063724571523e-05 60 4.7654427291391805e-05 120 3.4383292906304767e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001782";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.4985869318263663e-13 60 6.7839347060989287e-13 120 3.5689420089758816e-13;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001783";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.942289296992262e-06 60 5.0301854180954758e-06 120 1.930944749836794e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001784";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.4594149511594864e-24 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001785";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.6803631524688274e-06 60 0 120 -1.6803634915954704e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001786";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.6813858881210617e-06 60 0 120 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001787";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.2055758961466809e-05 60 5.5802440146316989e-05 120 6.096861300080109e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001788";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.1512133096783761e-12 60 9.3517656424110744e-13 120 1.1068891155700035e-12;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001789";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.2441981527357035e-06 60 4.3749895241693822e-06 120 6.8543125949115992e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000178A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.1077961845014682e-05 60 0.00010145170382169883 120 9.1988114128566123e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000178B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.3543745168156576e-06 60 3.1281102178051041e-12 120 2.5737755457695029e-12;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000178C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.9882432041134771e-06 60 8.6934456270803903e-07 120 -6.1718277445957291e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000178D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.4058063664738613e-05 60 4.7654427095705253e-05 120 3.4383292846871799e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000178E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.5025590842506165e-13 60 6.7799521093959971e-13 120 3.5649626961232091e-13;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000178F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9422904917828519e-06 60 5.0301870987560372e-06 120 1.9309459594703917e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001790";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 -6.1941463253066165e-05 120 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001791";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.7829853462805772e-15 60 -1.1165892549639153e-12 120 5.1684013573782151e-15;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001792";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.9424252870454542e-06 60 1.0879153381731472e-05 120 4.2034655648828087e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001793";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.2055758618221384e-05 60 5.5802439918680686e-05 120 6.0968612630121203e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001794";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.150813982224388e-12 60 9.355727057633409e-13 120 1.1068874227153983e-12;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001795";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.2442014337989273e-06 60 4.3749924740622273e-06 120 6.8543158183342063e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001796";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.2609709205980682e-05 60 0.00010089644224465663 120 6.3165272348314849e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001797";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.1945547208481711e-06 60 1.8211445672721263e-06 120 1.8208405028336898e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001798";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.8675803965530591e-07 60 9.8039882361936078e-06 120 -2.5154174737992157e-07;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD600001799";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.5646764288339436e-05 60 2.8018087788922424e-05 120 8.6859760251974536e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000179A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.979376685565082e-13 60 -1.5049151825422807e-06 120 2.2974368627750998e-14;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000179B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.8618653202839287e-06 60 -3.5419484884289147e-06 120 -3.0309417261583201e-07;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000179C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 60 -2.7407121303282103e-05 120 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000179D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.1927080055488188e-15 60 -2.1761090317401816e-13 120 -1.4471288721886802e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000179E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.5220797338017946e-06 60 5.182376704820669e-06 120 1.6346437494791703e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD60000179F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.2055758906456952e-05 60 5.5802440114589865e-05 120 6.0968612945418694e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.0936254513392039e-10 60 -1.5732524895658747e-10 120 -2.2373009975471382e-10;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.244198759392746e-06 60 4.3749900698892422e-06 120 6.8543131905148787e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.0006329305584991937 60 0.00066468071687041845 120 0.00063377281131656341;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.2447938461943759e-06 60 -1.8239488728040815e-06 120 2.2447689896316453e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.3767349939434994e-06 60 1.5796437864371864e-06 120 -3.4060812373399456e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.694722363800538e-05 60 -3.3778691395839107e-05 120 2.7983877450095678e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.2191867533712012e-13 60 3.1451071958574581e-10 120 5.5621090873975364e-11;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -9.4031545306517459e-07 60 -1.0274639094468824e-05 120 -2.995329964615725e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.6947223699347692e-05 60 -2.2023084592832643e-05 120 -2.7983877479891235e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.2152110700873481e-13 60 1.0310548766417881e-10 120 5.5145570409057363e-11;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -9.403154552056943e-07 60 -4.5321572020041403e-06 120 -2.9953299939415138e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -53.138305085774412 60 -41.882987194639981 120 -53.138213126518217;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 74.669168882087604 60 77.539220834162862 120 74.669150821934821;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -50.465465180711071 60 -38.917670331186152 120 -50.465380239055065;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.4565834999084473 60 6.6776213645935059 120 7.4565792083740234;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 82.049484252929688 60 80.507949829101562 120 82.6856689453125;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -27.015102386474609 60 -27.091512680053711 120 -27.015096664428711;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.33544022350919811 60 0.35148799365214406 120 0.33543856095863273;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.4245964069764874 60 4.4490785128588506 120 8.424603952441247;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 80.923149242030448 60 80.782904798330662 120 80.923126676313032;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.4162259101867676 60 5.2342019081115723 120 6.416222095489502;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 76.510566711425781 60 75.054466247558594 120 77.146751403808594;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -29.429649353027344 60 -29.493179321289062 120 -29.429653167724609;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.33543820959663551 60 0.3514859980270566 120 0.33543654704616321;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.4245981075934928 60 4.4490802110958372 120 8.4246056530574442;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 80.923148958670552 60 80.782904655667807 120 80.923126392952824;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.3853282928466797 60 3.1279840469360352 120 4.3853268623352051;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 75.406593322753906 60 74.092460632324219 120 76.042778015136719;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -29.853271484375 60 -29.894632339477539 120 -29.853275299072266;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.335419859700895 60 0.35147749458039051 120 0.33541918007966648;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.4246034433837078 60 4.449086943516166 120 8.4246072397193199;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 80.923112783626365 60 80.782883533427935 120 80.923071606115045;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.2166638374328613 60 0.99286699295043945 120 2.2166624069213867;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 75.781280517578125 60 74.614791870117188 120 76.417465209960938;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -29.6075439453125 60 -29.625713348388672 120 -29.607551574707031;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.3357936381900144 60 0.35170223729483874 120 0.33579325452012748;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.4246427915119817 60 4.4491287244013504 120 8.4246458991189748;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 80.923706381750407 60 80.783388851884666 120 80.923685361301921;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.2722049355506897 60 -0.82466495037078857 120 0.27220457792282104;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 77.404975891113281 60 76.367485046386719 120 78.041168212890625;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-3CD6000017C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -28.587854385375977 60 -28.585639953613281 120 -28.587856292724609;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 4;
	setAttr ".unw" 4;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off ".ehql";
	setAttr -k off ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -av -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off ".clmt";
	setAttr -k off ".tcov";
	setAttr -k off ".lith";
	setAttr -k off ".sobc";
	setAttr -k off ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
connectAttr "Character1_Ctrl_HipsEffector_rotateZ.o" "testUnrealRig_01RN.phl[1]";
connectAttr "Character1_Ctrl_HipsEffector_rotateY.o" "testUnrealRig_01RN.phl[2]"
		;
connectAttr "Character1_Ctrl_HipsEffector_rotateX.o" "testUnrealRig_01RN.phl[3]"
		;
connectAttr "Character1_Ctrl_HipsEffector_translateZ.o" "testUnrealRig_01RN.phl[4]"
		;
connectAttr "Character1_Ctrl_HipsEffector_translateY.o" "testUnrealRig_01RN.phl[5]"
		;
connectAttr "Character1_Ctrl_HipsEffector_translateX.o" "testUnrealRig_01RN.phl[6]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotateZ.o" "testUnrealRig_01RN.phl[7]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotateY.o" "testUnrealRig_01RN.phl[8]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotateX.o" "testUnrealRig_01RN.phl[9]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateZ.o" "testUnrealRig_01RN.phl[10]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateY.o" "testUnrealRig_01RN.phl[11]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateX.o" "testUnrealRig_01RN.phl[12]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotateZ.o" "testUnrealRig_01RN.phl[13]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotateY.o" "testUnrealRig_01RN.phl[14]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotateX.o" "testUnrealRig_01RN.phl[15]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateZ.o" "testUnrealRig_01RN.phl[16]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateY.o" "testUnrealRig_01RN.phl[17]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateX.o" "testUnrealRig_01RN.phl[18]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotateZ.o" "testUnrealRig_01RN.phl[19]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotateY.o" "testUnrealRig_01RN.phl[20]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotateX.o" "testUnrealRig_01RN.phl[21]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateZ.o" "testUnrealRig_01RN.phl[22]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateY.o" "testUnrealRig_01RN.phl[23]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateX.o" "testUnrealRig_01RN.phl[24]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotateZ.o" "testUnrealRig_01RN.phl[25]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotateY.o" "testUnrealRig_01RN.phl[26]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotateX.o" "testUnrealRig_01RN.phl[27]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateZ.o" "testUnrealRig_01RN.phl[28]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateY.o" "testUnrealRig_01RN.phl[29]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateX.o" "testUnrealRig_01RN.phl[30]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotateZ.o" "testUnrealRig_01RN.phl[31]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotateY.o" "testUnrealRig_01RN.phl[32]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotateX.o" "testUnrealRig_01RN.phl[33]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateZ.o" "testUnrealRig_01RN.phl[34]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateY.o" "testUnrealRig_01RN.phl[35]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateX.o" "testUnrealRig_01RN.phl[36]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotateZ.o" "testUnrealRig_01RN.phl[37]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotateY.o" "testUnrealRig_01RN.phl[38]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotateX.o" "testUnrealRig_01RN.phl[39]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateZ.o" "testUnrealRig_01RN.phl[40]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateY.o" "testUnrealRig_01RN.phl[41]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateX.o" "testUnrealRig_01RN.phl[42]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotateZ.o" "testUnrealRig_01RN.phl[43]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotateY.o" "testUnrealRig_01RN.phl[44]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotateX.o" "testUnrealRig_01RN.phl[45]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateZ.o" "testUnrealRig_01RN.phl[46]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateY.o" "testUnrealRig_01RN.phl[47]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateX.o" "testUnrealRig_01RN.phl[48]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotateZ.o" "testUnrealRig_01RN.phl[49]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotateY.o" "testUnrealRig_01RN.phl[50]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotateX.o" "testUnrealRig_01RN.phl[51]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateZ.o" "testUnrealRig_01RN.phl[52]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateY.o" "testUnrealRig_01RN.phl[53]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateX.o" "testUnrealRig_01RN.phl[54]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotateZ.o" "testUnrealRig_01RN.phl[55]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotateY.o" "testUnrealRig_01RN.phl[56]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotateX.o" "testUnrealRig_01RN.phl[57]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateZ.o" "testUnrealRig_01RN.phl[58]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateY.o" "testUnrealRig_01RN.phl[59]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateX.o" "testUnrealRig_01RN.phl[60]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_rotateZ.o" "testUnrealRig_01RN.phl[61]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_rotateY.o" "testUnrealRig_01RN.phl[62]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_rotateX.o" "testUnrealRig_01RN.phl[63]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_translateZ.o" "testUnrealRig_01RN.phl[64]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_translateY.o" "testUnrealRig_01RN.phl[65]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_translateX.o" "testUnrealRig_01RN.phl[66]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotateZ.o" "testUnrealRig_01RN.phl[67]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotateY.o" "testUnrealRig_01RN.phl[68]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotateX.o" "testUnrealRig_01RN.phl[69]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateZ.o" "testUnrealRig_01RN.phl[70]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateY.o" "testUnrealRig_01RN.phl[71]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateX.o" "testUnrealRig_01RN.phl[72]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotateZ.o" "testUnrealRig_01RN.phl[73]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotateY.o" "testUnrealRig_01RN.phl[74]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotateX.o" "testUnrealRig_01RN.phl[75]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateZ.o" "testUnrealRig_01RN.phl[76]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateY.o" "testUnrealRig_01RN.phl[77]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateX.o" "testUnrealRig_01RN.phl[78]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotateZ.o" "testUnrealRig_01RN.phl[79]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotateY.o" "testUnrealRig_01RN.phl[80]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotateX.o" "testUnrealRig_01RN.phl[81]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateZ.o" "testUnrealRig_01RN.phl[82]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateY.o" "testUnrealRig_01RN.phl[83]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateX.o" "testUnrealRig_01RN.phl[84]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotateZ.o" "testUnrealRig_01RN.phl[85]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotateY.o" "testUnrealRig_01RN.phl[86]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotateX.o" "testUnrealRig_01RN.phl[87]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateZ.o" "testUnrealRig_01RN.phl[88]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateY.o" "testUnrealRig_01RN.phl[89]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateX.o" "testUnrealRig_01RN.phl[90]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotateZ.o" "testUnrealRig_01RN.phl[91]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotateY.o" "testUnrealRig_01RN.phl[92]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotateX.o" "testUnrealRig_01RN.phl[93]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateZ.o" "testUnrealRig_01RN.phl[94]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateY.o" "testUnrealRig_01RN.phl[95]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateX.o" "testUnrealRig_01RN.phl[96]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotateZ.o" "testUnrealRig_01RN.phl[97]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotateY.o" "testUnrealRig_01RN.phl[98]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotateX.o" "testUnrealRig_01RN.phl[99]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateZ.o" "testUnrealRig_01RN.phl[100]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateY.o" "testUnrealRig_01RN.phl[101]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateX.o" "testUnrealRig_01RN.phl[102]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotateZ.o" "testUnrealRig_01RN.phl[103]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotateY.o" "testUnrealRig_01RN.phl[104]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotateX.o" "testUnrealRig_01RN.phl[105]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateZ.o" "testUnrealRig_01RN.phl[106]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateY.o" "testUnrealRig_01RN.phl[107]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateX.o" "testUnrealRig_01RN.phl[108]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotateZ.o" "testUnrealRig_01RN.phl[109]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotateY.o" "testUnrealRig_01RN.phl[110]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotateX.o" "testUnrealRig_01RN.phl[111]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateZ.o" "testUnrealRig_01RN.phl[112]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateY.o" "testUnrealRig_01RN.phl[113]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateX.o" "testUnrealRig_01RN.phl[114]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotateZ.o" "testUnrealRig_01RN.phl[115]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotateY.o" "testUnrealRig_01RN.phl[116]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotateX.o" "testUnrealRig_01RN.phl[117]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateZ.o" "testUnrealRig_01RN.phl[118]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateY.o" "testUnrealRig_01RN.phl[119]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateX.o" "testUnrealRig_01RN.phl[120]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotateZ.o" "testUnrealRig_01RN.phl[121]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotateY.o" "testUnrealRig_01RN.phl[122]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotateX.o" "testUnrealRig_01RN.phl[123]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateZ.o" "testUnrealRig_01RN.phl[124]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateY.o" "testUnrealRig_01RN.phl[125]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateX.o" "testUnrealRig_01RN.phl[126]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotateZ.o" "testUnrealRig_01RN.phl[127]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotateY.o" "testUnrealRig_01RN.phl[128]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotateX.o" "testUnrealRig_01RN.phl[129]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateZ.o" "testUnrealRig_01RN.phl[130]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateY.o" "testUnrealRig_01RN.phl[131]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateX.o" "testUnrealRig_01RN.phl[132]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotateZ.o" "testUnrealRig_01RN.phl[133]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotateY.o" "testUnrealRig_01RN.phl[134]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotateX.o" "testUnrealRig_01RN.phl[135]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateZ.o" "testUnrealRig_01RN.phl[136]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateY.o" "testUnrealRig_01RN.phl[137]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateX.o" "testUnrealRig_01RN.phl[138]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotateZ.o" "testUnrealRig_01RN.phl[139]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotateY.o" "testUnrealRig_01RN.phl[140]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotateX.o" "testUnrealRig_01RN.phl[141]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateZ.o" "testUnrealRig_01RN.phl[142]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateY.o" "testUnrealRig_01RN.phl[143]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateX.o" "testUnrealRig_01RN.phl[144]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotateZ.o" "testUnrealRig_01RN.phl[145]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotateY.o" "testUnrealRig_01RN.phl[146]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotateX.o" "testUnrealRig_01RN.phl[147]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateZ.o" "testUnrealRig_01RN.phl[148]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateY.o" "testUnrealRig_01RN.phl[149]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateX.o" "testUnrealRig_01RN.phl[150]"
		;
connectAttr "Character1_Ctrl_Hips_rotateZ.o" "testUnrealRig_01RN.phl[151]";
connectAttr "Character1_Ctrl_Hips_rotateY.o" "testUnrealRig_01RN.phl[152]";
connectAttr "Character1_Ctrl_Hips_rotateX.o" "testUnrealRig_01RN.phl[153]";
connectAttr "Character1_Ctrl_Hips_translateZ.o" "testUnrealRig_01RN.phl[154]";
connectAttr "Character1_Ctrl_Hips_translateY.o" "testUnrealRig_01RN.phl[155]";
connectAttr "Character1_Ctrl_Hips_translateX.o" "testUnrealRig_01RN.phl[156]";
connectAttr "Character1_Ctrl_LeftUpLeg_rotateZ.o" "testUnrealRig_01RN.phl[157]";
connectAttr "Character1_Ctrl_LeftUpLeg_rotateY.o" "testUnrealRig_01RN.phl[158]";
connectAttr "Character1_Ctrl_LeftUpLeg_rotateX.o" "testUnrealRig_01RN.phl[159]";
connectAttr "Character1_Ctrl_LeftLeg_rotateZ.o" "testUnrealRig_01RN.phl[160]";
connectAttr "Character1_Ctrl_LeftLeg_rotateY.o" "testUnrealRig_01RN.phl[161]";
connectAttr "Character1_Ctrl_LeftLeg_rotateX.o" "testUnrealRig_01RN.phl[162]";
connectAttr "Character1_Ctrl_LeftFoot_rotateZ.o" "testUnrealRig_01RN.phl[163]";
connectAttr "Character1_Ctrl_LeftFoot_rotateY.o" "testUnrealRig_01RN.phl[164]";
connectAttr "Character1_Ctrl_LeftFoot_rotateX.o" "testUnrealRig_01RN.phl[165]";
connectAttr "Character1_Ctrl_LeftToeBase_rotateZ.o" "testUnrealRig_01RN.phl[166]"
		;
connectAttr "Character1_Ctrl_LeftToeBase_rotateY.o" "testUnrealRig_01RN.phl[167]"
		;
connectAttr "Character1_Ctrl_LeftToeBase_rotateX.o" "testUnrealRig_01RN.phl[168]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotateZ.o" "testUnrealRig_01RN.phl[169]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotateY.o" "testUnrealRig_01RN.phl[170]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotateX.o" "testUnrealRig_01RN.phl[171]"
		;
connectAttr "Character1_Ctrl_RightLeg_rotateZ.o" "testUnrealRig_01RN.phl[172]";
connectAttr "Character1_Ctrl_RightLeg_rotateY.o" "testUnrealRig_01RN.phl[173]";
connectAttr "Character1_Ctrl_RightLeg_rotateX.o" "testUnrealRig_01RN.phl[174]";
connectAttr "Character1_Ctrl_RightFoot_rotateZ.o" "testUnrealRig_01RN.phl[175]";
connectAttr "Character1_Ctrl_RightFoot_rotateY.o" "testUnrealRig_01RN.phl[176]";
connectAttr "Character1_Ctrl_RightFoot_rotateX.o" "testUnrealRig_01RN.phl[177]";
connectAttr "Character1_Ctrl_RightToeBase_rotateZ.o" "testUnrealRig_01RN.phl[178]"
		;
connectAttr "Character1_Ctrl_RightToeBase_rotateY.o" "testUnrealRig_01RN.phl[179]"
		;
connectAttr "Character1_Ctrl_RightToeBase_rotateX.o" "testUnrealRig_01RN.phl[180]"
		;
connectAttr "Character1_Ctrl_Spine_rotateZ.o" "testUnrealRig_01RN.phl[181]";
connectAttr "Character1_Ctrl_Spine_rotateY.o" "testUnrealRig_01RN.phl[182]";
connectAttr "Character1_Ctrl_Spine_rotateX.o" "testUnrealRig_01RN.phl[183]";
connectAttr "Character1_Ctrl_Spine1_rotateZ.o" "testUnrealRig_01RN.phl[184]";
connectAttr "Character1_Ctrl_Spine1_rotateY.o" "testUnrealRig_01RN.phl[185]";
connectAttr "Character1_Ctrl_Spine1_rotateX.o" "testUnrealRig_01RN.phl[186]";
connectAttr "Character1_Ctrl_Spine2_rotateZ.o" "testUnrealRig_01RN.phl[187]";
connectAttr "Character1_Ctrl_Spine2_rotateY.o" "testUnrealRig_01RN.phl[188]";
connectAttr "Character1_Ctrl_Spine2_rotateX.o" "testUnrealRig_01RN.phl[189]";
connectAttr "Character1_Ctrl_LeftShoulder_rotateZ.o" "testUnrealRig_01RN.phl[190]"
		;
connectAttr "Character1_Ctrl_LeftShoulder_rotateY.o" "testUnrealRig_01RN.phl[191]"
		;
connectAttr "Character1_Ctrl_LeftShoulder_rotateX.o" "testUnrealRig_01RN.phl[192]"
		;
connectAttr "Character1_Ctrl_LeftArm_rotateZ.o" "testUnrealRig_01RN.phl[193]";
connectAttr "Character1_Ctrl_LeftArm_rotateY.o" "testUnrealRig_01RN.phl[194]";
connectAttr "Character1_Ctrl_LeftArm_rotateX.o" "testUnrealRig_01RN.phl[195]";
connectAttr "Character1_Ctrl_LeftForeArm_rotateZ.o" "testUnrealRig_01RN.phl[196]"
		;
connectAttr "Character1_Ctrl_LeftForeArm_rotateY.o" "testUnrealRig_01RN.phl[197]"
		;
connectAttr "Character1_Ctrl_LeftForeArm_rotateX.o" "testUnrealRig_01RN.phl[198]"
		;
connectAttr "Character1_Ctrl_LeftHand_rotateZ.o" "testUnrealRig_01RN.phl[199]";
connectAttr "Character1_Ctrl_LeftHand_rotateY.o" "testUnrealRig_01RN.phl[200]";
connectAttr "Character1_Ctrl_LeftHand_rotateX.o" "testUnrealRig_01RN.phl[201]";
connectAttr "Character1_Ctrl_LeftHandThumb1_rotateZ.o" "testUnrealRig_01RN.phl[202]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb1_rotateY.o" "testUnrealRig_01RN.phl[203]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb1_rotateX.o" "testUnrealRig_01RN.phl[204]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotateZ.o" "testUnrealRig_01RN.phl[205]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotateY.o" "testUnrealRig_01RN.phl[206]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotateX.o" "testUnrealRig_01RN.phl[207]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotateZ.o" "testUnrealRig_01RN.phl[208]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotateY.o" "testUnrealRig_01RN.phl[209]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotateX.o" "testUnrealRig_01RN.phl[210]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4_rotateZ.o" "testUnrealRig_01RN.phl[211]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4_rotateY.o" "testUnrealRig_01RN.phl[212]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4_rotateX.o" "testUnrealRig_01RN.phl[213]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotateZ.o" "testUnrealRig_01RN.phl[214]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotateY.o" "testUnrealRig_01RN.phl[215]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotateX.o" "testUnrealRig_01RN.phl[216]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotateZ.o" "testUnrealRig_01RN.phl[217]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotateY.o" "testUnrealRig_01RN.phl[218]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotateX.o" "testUnrealRig_01RN.phl[219]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotateZ.o" "testUnrealRig_01RN.phl[220]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotateY.o" "testUnrealRig_01RN.phl[221]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotateX.o" "testUnrealRig_01RN.phl[222]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4_rotateZ.o" "testUnrealRig_01RN.phl[223]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4_rotateY.o" "testUnrealRig_01RN.phl[224]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4_rotateX.o" "testUnrealRig_01RN.phl[225]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotateZ.o" "testUnrealRig_01RN.phl[226]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotateY.o" "testUnrealRig_01RN.phl[227]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotateX.o" "testUnrealRig_01RN.phl[228]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotateZ.o" "testUnrealRig_01RN.phl[229]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotateY.o" "testUnrealRig_01RN.phl[230]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotateX.o" "testUnrealRig_01RN.phl[231]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotateZ.o" "testUnrealRig_01RN.phl[232]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotateY.o" "testUnrealRig_01RN.phl[233]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotateX.o" "testUnrealRig_01RN.phl[234]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4_rotateZ.o" "testUnrealRig_01RN.phl[235]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4_rotateY.o" "testUnrealRig_01RN.phl[236]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4_rotateX.o" "testUnrealRig_01RN.phl[237]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotateZ.o" "testUnrealRig_01RN.phl[238]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotateY.o" "testUnrealRig_01RN.phl[239]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotateX.o" "testUnrealRig_01RN.phl[240]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotateZ.o" "testUnrealRig_01RN.phl[241]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotateY.o" "testUnrealRig_01RN.phl[242]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotateX.o" "testUnrealRig_01RN.phl[243]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotateZ.o" "testUnrealRig_01RN.phl[244]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotateY.o" "testUnrealRig_01RN.phl[245]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotateX.o" "testUnrealRig_01RN.phl[246]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4_rotateZ.o" "testUnrealRig_01RN.phl[247]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4_rotateY.o" "testUnrealRig_01RN.phl[248]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4_rotateX.o" "testUnrealRig_01RN.phl[249]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotateZ.o" "testUnrealRig_01RN.phl[250]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotateY.o" "testUnrealRig_01RN.phl[251]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotateX.o" "testUnrealRig_01RN.phl[252]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotateZ.o" "testUnrealRig_01RN.phl[253]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotateY.o" "testUnrealRig_01RN.phl[254]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotateX.o" "testUnrealRig_01RN.phl[255]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotateZ.o" "testUnrealRig_01RN.phl[256]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotateY.o" "testUnrealRig_01RN.phl[257]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotateX.o" "testUnrealRig_01RN.phl[258]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4_rotateZ.o" "testUnrealRig_01RN.phl[259]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4_rotateY.o" "testUnrealRig_01RN.phl[260]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4_rotateX.o" "testUnrealRig_01RN.phl[261]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotateZ.o" "testUnrealRig_01RN.phl[262]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotateY.o" "testUnrealRig_01RN.phl[263]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotateX.o" "testUnrealRig_01RN.phl[264]"
		;
connectAttr "Character1_Ctrl_RightArm_rotateZ.o" "testUnrealRig_01RN.phl[265]";
connectAttr "Character1_Ctrl_RightArm_rotateY.o" "testUnrealRig_01RN.phl[266]";
connectAttr "Character1_Ctrl_RightArm_rotateX.o" "testUnrealRig_01RN.phl[267]";
connectAttr "Character1_Ctrl_RightForeArm_rotateZ.o" "testUnrealRig_01RN.phl[268]"
		;
connectAttr "Character1_Ctrl_RightForeArm_rotateY.o" "testUnrealRig_01RN.phl[269]"
		;
connectAttr "Character1_Ctrl_RightForeArm_rotateX.o" "testUnrealRig_01RN.phl[270]"
		;
connectAttr "Character1_Ctrl_RightHand_rotateZ.o" "testUnrealRig_01RN.phl[271]";
connectAttr "Character1_Ctrl_RightHand_rotateY.o" "testUnrealRig_01RN.phl[272]";
connectAttr "Character1_Ctrl_RightHand_rotateX.o" "testUnrealRig_01RN.phl[273]";
connectAttr "Character1_Ctrl_RightHandThumb1_rotateZ.o" "testUnrealRig_01RN.phl[274]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1_rotateY.o" "testUnrealRig_01RN.phl[275]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1_rotateX.o" "testUnrealRig_01RN.phl[276]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotateZ.o" "testUnrealRig_01RN.phl[277]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotateY.o" "testUnrealRig_01RN.phl[278]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotateX.o" "testUnrealRig_01RN.phl[279]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotateZ.o" "testUnrealRig_01RN.phl[280]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotateY.o" "testUnrealRig_01RN.phl[281]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotateX.o" "testUnrealRig_01RN.phl[282]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4_rotateZ.o" "testUnrealRig_01RN.phl[283]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4_rotateY.o" "testUnrealRig_01RN.phl[284]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4_rotateX.o" "testUnrealRig_01RN.phl[285]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotateZ.o" "testUnrealRig_01RN.phl[286]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotateY.o" "testUnrealRig_01RN.phl[287]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotateX.o" "testUnrealRig_01RN.phl[288]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotateZ.o" "testUnrealRig_01RN.phl[289]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotateY.o" "testUnrealRig_01RN.phl[290]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotateX.o" "testUnrealRig_01RN.phl[291]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotateZ.o" "testUnrealRig_01RN.phl[292]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotateY.o" "testUnrealRig_01RN.phl[293]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotateX.o" "testUnrealRig_01RN.phl[294]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4_rotateZ.o" "testUnrealRig_01RN.phl[295]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4_rotateY.o" "testUnrealRig_01RN.phl[296]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4_rotateX.o" "testUnrealRig_01RN.phl[297]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotateZ.o" "testUnrealRig_01RN.phl[298]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotateY.o" "testUnrealRig_01RN.phl[299]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotateX.o" "testUnrealRig_01RN.phl[300]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotateZ.o" "testUnrealRig_01RN.phl[301]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotateY.o" "testUnrealRig_01RN.phl[302]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotateX.o" "testUnrealRig_01RN.phl[303]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotateZ.o" "testUnrealRig_01RN.phl[304]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotateY.o" "testUnrealRig_01RN.phl[305]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotateX.o" "testUnrealRig_01RN.phl[306]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4_rotateZ.o" "testUnrealRig_01RN.phl[307]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4_rotateY.o" "testUnrealRig_01RN.phl[308]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4_rotateX.o" "testUnrealRig_01RN.phl[309]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotateZ.o" "testUnrealRig_01RN.phl[310]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotateY.o" "testUnrealRig_01RN.phl[311]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotateX.o" "testUnrealRig_01RN.phl[312]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotateZ.o" "testUnrealRig_01RN.phl[313]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotateY.o" "testUnrealRig_01RN.phl[314]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotateX.o" "testUnrealRig_01RN.phl[315]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotateZ.o" "testUnrealRig_01RN.phl[316]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotateY.o" "testUnrealRig_01RN.phl[317]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotateX.o" "testUnrealRig_01RN.phl[318]"
		;
connectAttr "Character1_Ctrl_RightHandRing4_rotateZ.o" "testUnrealRig_01RN.phl[319]"
		;
connectAttr "Character1_Ctrl_RightHandRing4_rotateY.o" "testUnrealRig_01RN.phl[320]"
		;
connectAttr "Character1_Ctrl_RightHandRing4_rotateX.o" "testUnrealRig_01RN.phl[321]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotateZ.o" "testUnrealRig_01RN.phl[322]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotateY.o" "testUnrealRig_01RN.phl[323]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotateX.o" "testUnrealRig_01RN.phl[324]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotateZ.o" "testUnrealRig_01RN.phl[325]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotateY.o" "testUnrealRig_01RN.phl[326]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotateX.o" "testUnrealRig_01RN.phl[327]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotateZ.o" "testUnrealRig_01RN.phl[328]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotateY.o" "testUnrealRig_01RN.phl[329]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotateX.o" "testUnrealRig_01RN.phl[330]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4_rotateZ.o" "testUnrealRig_01RN.phl[331]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4_rotateY.o" "testUnrealRig_01RN.phl[332]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4_rotateX.o" "testUnrealRig_01RN.phl[333]"
		;
connectAttr "Character1_Ctrl_Neck_rotateZ.o" "testUnrealRig_01RN.phl[334]";
connectAttr "Character1_Ctrl_Neck_rotateY.o" "testUnrealRig_01RN.phl[335]";
connectAttr "Character1_Ctrl_Neck_rotateX.o" "testUnrealRig_01RN.phl[336]";
connectAttr "Character1_Ctrl_Head_rotateZ.o" "testUnrealRig_01RN.phl[337]";
connectAttr "Character1_Ctrl_Head_rotateY.o" "testUnrealRig_01RN.phl[338]";
connectAttr "Character1_Ctrl_Head_rotateX.o" "testUnrealRig_01RN.phl[339]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "testUnrealRig_01RN.sr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of testUnrealRig_01_IdleAnim.ma
