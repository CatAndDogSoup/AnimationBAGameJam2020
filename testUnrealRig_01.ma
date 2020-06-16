//Maya ASCII 2019 scene
//Name: testUnrealRig_01.ma
//Last modified: Thu, Jun 11, 2020 04:40:55 PM
//Codeset: UTF-8
requires maya "2019";
requires -nodeType "HIKSolverNode" -nodeType "HIKCharacterNode" -nodeType "HIKSkeletonGeneratorNode"
		 -nodeType "HIKControlSetNode" -nodeType "HIKEffectorFromCharacter" -nodeType "HIKFK2State"
		 -nodeType "HIKState2FK" -nodeType "HIKState2SK" -nodeType "HIKEffector2State" -nodeType "HIKState2Effector"
		 -nodeType "HIKProperty2State" -nodeType "HIKPinning2State" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2016.5";
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
	rename -uid "C812DC00-0017-6481-5EE2-214B00000F4F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 239.23834060312916 270.00181259911216 242.34824569948427 ;
	setAttr ".r" -type "double3" -26.138352729607575 46.200000000000507 -4.5952265391539602e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C812DC00-0017-6481-5EE2-214B00000F50";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 367.9174168627892;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "C812DC00-0017-6481-5EE2-214B00000F51";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C812DC00-0017-6481-5EE2-214B00000F52";
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
	rename -uid "C812DC00-0017-6481-5EE2-214B00000F53";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C812DC00-0017-6481-5EE2-214B00000F54";
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
	rename -uid "C812DC00-0017-6481-5EE2-214B00000F55";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C812DC00-0017-6481-5EE2-214B00000F56";
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
createNode transform -n "Character1_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F62";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
createNode locator -n "Character1_ReferenceShape" -p "Character1_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F63";
	setAttr -k off ".v";
createNode joint -n "Character1_Hips" -p "Character1_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F64";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v" no;
	setAttr ".uoc" 1;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -1.5456753894103583e-31 100 1.3922206215568472e-15 1;
	setAttr ".ds" 2;
	setAttr ".typ" 1;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_LeftUpLeg" -p "Character1_Hips";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F65";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 8.9100008010864258 93.729995727539062 1.9784176077589479e-15 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_LeftLeg" -p "Character1_LeftUpLeg";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F66";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 8.9100008010864258 48.851356506347656 -3.7318886825232767e-06 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_LeftFoot" -p "Character1_LeftLeg";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F67";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 8.9100008010864258 8.1503982543945241 -2.2737367544323206e-13 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_LeftToeBase" -p "Character1_LeftFoot";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F73";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 8.9100093841552734 1.8880810737609863 12.954720497131348 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_RightUpLeg" -p "Character1_Hips";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F68";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -8.9100008010864258 93.729995727539062 -1.9784176077589479e-15 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_RightLeg" -p "Character1_RightUpLeg";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F69";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -8.910003662109375 48.851356506347656 0.00043902400648221374 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_RightFoot" -p "Character1_RightLeg";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F6A";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".bps" -type "matrix" 0.99999999649024274 0 8.3782542493901558e-05 0 0 1 0 0
		 -8.3782542493901558e-05 0 0.99999999649024274 0 -8.9100027084350586 8.1503982543945312 0.00043902400648221374 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_RightToeBase" -p "Character1_RightFoot";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F74";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".jo" -type "double3" 0 0.0048003860000000002 0 ;
	setAttr ".bps" -type "matrix" 0.99999999649024274 -6.9123442773139138e-26 8.3782542493901545e-05 0 -4.2590299619172456e-09 0.9999999987079351 5.0834336368809713e-05 0
		 -8.3782542385649067e-05 -5.0834336547225894e-05 0.99999999519817784 0 -8.9110879898071289 1.8880810737609872 12.955187797546385 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 5;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_Spine" -p "Character1_Hips";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F6B";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -3.2713086195813217e-31 107 2.9465328560320664e-15 1;
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_Spine1" -p "Character1_Spine";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F78";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -1.5761603777859393e-30 119.66666412353514 8.5716617180889298e-15 1;
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_Spine2" -p "Character1_Spine1";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F79";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -4.3864766003194094e-30 132.33332824707031 1.7009355011174225e-14 1;
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_LeftShoulder" -p "Character1_Spine2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F75";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".bps" -type "matrix" 0.99999999991765587 1.2833092113249327e-05 0 0 -1.2833092113249327e-05 0.99999999991765587 0 0
		 0 0 1 0 7.0000004768371582 146.58854675292969 3.5887783088155156e-14 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_LeftArm" -p "Character1_LeftShoulder";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F6C";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".jo" -type "double3" 0 0 -0.00073528200000000008 ;
	setAttr ".bps" -type "matrix" 1 2.8295262149752223e-13 0 0 -2.8295262149752223e-13 1 0 0
		 0 0 1 0 17.707250595092773 146.58868408203122 4.5397852279716398e-14 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_LeftForeArm" -p "Character1_LeftArm";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F6D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".jo" -type "double3" 0 0 9.7062825972397362e-20 ;
	setAttr ".bps" -type "matrix" 1 2.8295262149752223e-13 0 0 -2.8295262149752223e-13 1 0 0
		 0 0 1 0 45.012718200683594 146.58868408203125 6.9649974264625325e-14 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_LeftHand" -p "Character1_LeftForeArm";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F6E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".jo" -type "double3" 0 0 9.7062825972397362e-20 ;
	setAttr ".bps" -type "matrix" 1 2.8295262149752223e-13 0 0 -2.8295262149752223e-13 1 0 0
		 0 0 1 0 71.709861755371094 146.58868408203122 9.336180103753504e-14 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_LeftHandThumb1" -p "Character1_LeftHand";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F7A";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" 0 0 9.7062825972397362e-20 ;
	setAttr ".bps" -type "matrix" 1 2.8295262149752223e-13 0 0 -2.8295262149752223e-13 1 0 0
		 0 0 1 0 76.058624267578125 145.79017639160153 4.2824339866638184 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
createNode joint -n "Character1_LeftHandThumb2" -p "Character1_LeftHandThumb1";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F7B";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".jo" -type "double3" 0 0 9.7062825972397362e-20 ;
	setAttr ".bps" -type "matrix" 0.99999999998648692 -5.1986726248073008e-06 0 0 5.1986726248073008e-06 0.99999999998648692 0 0
		 0 0 1 0 78.571212768554688 145.25408935546875 4.9898881912231445 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
createNode joint -n "Character1_LeftHandThumb3" -p "Character1_LeftHandThumb2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F7C";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".jo" -type "double3" 0 0 0.00029786200000000008 ;
	setAttr ".bps" -type "matrix" 1 -8.255366063057018e-15 0 0 8.255366063057018e-15 1 0 0
		 0 0 1 0 81.114349365234361 145.25407409667969 4.9898977279663086 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
createNode joint -n "Character1_LeftHandThumb4" -p "Character1_LeftHandThumb3";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F7D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".bps" -type "matrix" 1 -8.255366063057018e-15 0 0 8.255366063057018e-15 1 0 0
		 0 0 1 0 83.781097412109361 145.25407409667969 4.9898896217346183 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
createNode joint -n "Character1_LeftHandIndex1" -p "Character1_LeftHand";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F7E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" 0 0 9.7062825972397362e-20 ;
	setAttr ".bps" -type "matrix" 0.99939082706240401 -5.2213035109485343e-06 0.034899495071736807 0 5.2244861264383476e-06 0.99999999998635236 0 0
		 -0.034899495071260507 1.8233192782199242e-07 0.99939082707604332 0 80.531837463378906 146.78840637207031 3.4716694355010986 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
createNode joint -n "Character1_LeftHandIndex2" -p "Character1_LeftHandIndex1";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F7F";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".jo" -type "double3" 1.0453217981918744e-05 1.9999999849726942 0.00029952346159721211 ;
	setAttr ".bps" -type "matrix" 0.99939082706240401 -5.2213035111167347e-06 0.034899495071736814 0 5.2244861266066513e-06 0.99999999998635236 3.1251698017472199e-23 0
		 -0.034899495071260514 1.8233192782786612e-07 0.99939082707604332 0 84.754592895507798 146.78839111328125 3.6188683509826651 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
createNode joint -n "Character1_LeftHandIndex3" -p "Character1_LeftHandIndex2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F80";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".jo" -type "double3" 1.0453217981918733e-05 1.9999999849726937 0.000299523461597212 ;
	setAttr ".bps" -type "matrix" 0.99939082706240401 -5.2213035110620435e-06 0.034899495071736827 0 5.2244861265519262e-06 0.99999999998635236 9.7706807276646604e-24 0
		 -0.034899495071260528 1.8233192782595635e-07 0.99939082707604332 0 87.40692138671875 146.78837585449219 3.7113244533538827 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
createNode joint -n "Character1_LeftHandIndex4" -p "Character1_LeftHandIndex3";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F81";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".jo" -type "double3" 1.0453217981918734e-05 1.9999999849726937 0.000299523461597212 ;
	setAttr ".bps" -type "matrix" 0.99939082706240401 -5.2213035112431569e-06 0.03489949507173682 0 5.2244861267331506e-06 0.99999999998635236 1.521479679077754e-23 0
		 -0.034899495071260521 1.8233192783228094e-07 0.99939082707604332 0 89.363952636718736 146.78836059570312 3.7795433998107901 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
createNode joint -n "Character1_LeftHandMiddle1" -p "Character1_LeftHand";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F82";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" 0 0 9.7062825972397362e-20 ;
	setAttr ".bps" -type "matrix" 0.9999999980660832 2.8295262095031539e-13 6.2191909699101761e-05 0 -2.8295262149752223e-13 1 0 0
		 -6.2191909699101761e-05 -1.7597363885298023e-17 0.9999999980660832 0 80.519744873046875 147.08956909179688 1.3046844005584717 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
createNode joint -n "Character1_LeftHandMiddle2" -p "Character1_LeftHandMiddle1";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F83";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".jo" -type "double3" 6.0365226079256687e-24 0.0035633340000000013 9.7062826160108798e-20 ;
	setAttr ".bps" -type "matrix" 0.9999999980660832 2.8295262095031539e-13 6.2191909699102913e-05 0 -2.8295262149752223e-13 1 0 0
		 -6.2191909699102913e-05 -1.7597363885298349e-17 0.9999999980660832 0 85.38299560546875 147.08956909179688 1.3049868345260622 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
createNode joint -n "Character1_LeftHandMiddle3" -p "Character1_LeftHandMiddle2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F84";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".jo" -type "double3" 6.0365226079256672e-24 0.0035633340000000005 9.7062826160108798e-20 ;
	setAttr ".bps" -type "matrix" 0.9999999980660832 2.8295262095031539e-13 6.2191909699102331e-05 0 -2.8295262149752223e-13 1 0 0
		 -6.2191909699102331e-05 -1.7597363885298183e-17 0.9999999980660832 0 88.148231506347642 147.08956909179688 1.3051586151123045 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
createNode joint -n "Character1_LeftHandMiddle4" -p "Character1_LeftHandMiddle3";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F85";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".jo" -type "double3" 6.0365226079256672e-24 0.0035633340000000005 9.7062826160108798e-20 ;
	setAttr ".bps" -type "matrix" 0.9999999980660832 2.8295262095031539e-13 6.2191909699102276e-05 0 -2.8295262149752223e-13 1 0 0
		 -6.2191909699102276e-05 -1.7597363885298168e-17 0.9999999980660832 0 90.153861999511719 147.08956909179688 1.3052822351455691 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
createNode joint -n "Character1_LeftHandRing1" -p "Character1_LeftHand";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F86";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" 0 0 9.7062825972397362e-20 ;
	setAttr ".bps" -type "matrix" 0.99999999806587136 2.8295262095025546e-13 6.2195314847245426e-05 0 -2.8295262149752223e-13 1 0 0
		 -6.2195314847245426e-05 -1.7598327380891859e-17 0.99999999806587136 0 80.603622436523438 146.96859741210938 -0.7931588888168335 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
createNode joint -n "Character1_LeftHandRing2" -p "Character1_LeftHandRing1";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F87";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".jo" -type "double3" 6.0368529507763728e-24 0.0035635289999999997 9.7062826160129358e-20 ;
	setAttr ".bps" -type "matrix" 0.99999999806587136 2.8295262095025546e-13 6.2195314847244328e-05 0 -2.8295262149752223e-13 1 0 0
		 -6.2195314847244328e-05 -1.7598327380891548e-17 0.99999999806587136 0 85.141380310058622 146.96859741210938 -0.79315882921218872 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
createNode joint -n "Character1_LeftHandRing3" -p "Character1_LeftHandRing2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F88";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".jo" -type "double3" 6.0368529507763743e-24 0.0035635290000000002 9.7062826160129358e-20 ;
	setAttr ".bps" -type "matrix" 0.99999999806587136 2.8295262095025546e-13 6.2195314847244803e-05 0 -2.8295262149752223e-13 1 0 0
		 -6.2195314847244803e-05 -1.7598327380891683e-17 0.99999999806587136 0 87.445907592773423 146.96859741210935 -0.79315894842147838 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
createNode joint -n "Character1_LeftHandRing4" -p "Character1_LeftHandRing3";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F89";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".jo" -type "double3" 6.0368529507763743e-24 0.0035635290000000002 9.7062826160129358e-20 ;
	setAttr ".bps" -type "matrix" 0.99999999806587136 2.8295262095025546e-13 6.2195314847245914e-05 0 -2.8295262149752223e-13 1 0 0
		 -6.2195314847245914e-05 -1.7598327380891998e-17 0.99999999806587136 0 89.369255065917983 146.96859741210938 -0.79315978288650502 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
createNode joint -n "Character1_LeftHandPinky1" -p "Character1_LeftHand";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F8A";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" 0 0 9.7062825972397362e-20 ;
	setAttr ".bps" -type "matrix" 0.9999999999113246 1.3317316187477278e-05 0 0 -1.3317316187477278e-05 0.9999999999113246 0 0
		 0 0 1 0 80.592140197753906 146.27565002441403 -2.4903564453125 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
createNode joint -n "Character1_LeftHandPinky2" -p "Character1_LeftHandPinky1";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F8B";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".jo" -type "double3" 0 0 -0.00076302599999999977 ;
	setAttr ".bps" -type "matrix" 0.99999999991680499 1.2899229658757475e-05 0 0 -1.2899229658757475e-05 0.99999999991680499 0 0
		 0 0 1 0 83.636238098144545 146.27569580078125 -2.4903564453125 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
createNode joint -n "Character1_LeftHandPinky3" -p "Character1_LeftHandPinky2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F8C";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".jo" -type "double3" 0 0 -0.00076302599999999998 ;
	setAttr ".bps" -type "matrix" 0.99999999991680499 1.2899229658236548e-05 0 0 -1.2899229658236548e-05 0.99999999991680499 0 0
		 0 0 1 0 85.610740661621094 146.27572631835935 -2.4903566837310791 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
createNode joint -n "Character1_LeftHandPinky4" -p "Character1_LeftHandPinky3";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F8D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".jo" -type "double3" 0 0 -0.00076302599999999998 ;
	setAttr ".bps" -type "matrix" 0.99999999991680499 1.2899229658641735e-05 0 0 -1.2899229658641735e-05 0.99999999991680499 0 0
		 0 0 1 0 87.277351379394545 146.27574157714847 -2.4903557300567627 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
createNode joint -n "Character1_RightShoulder" -p "Character1_Spine2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F76";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".bps" -type "matrix" 0.9999999991813715 -4.0463033622999833e-05 0 0 4.0463033622999833e-05 0.9999999991813715 0 0
		 0 0 1 0 -6.9999995231628418 146.58854675292969 2.3453283518287509e-14 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_RightArm" -p "Character1_RightShoulder";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F6F";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".jo" -type "double3" 0 0 0.0023183610000000006 ;
	setAttr ".bps" -type "matrix" 1 -9.3421295954123837e-13 0 0 9.3421295954123837e-13 1 0 0
		 0 0 1 0 -17.707275390625 146.58897399902341 1.3943692053308522e-14 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_RightForeArm" -p "Character1_RightArm";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F70";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".jo" -type "double3" 0 0 -3.8825130388958945e-19 ;
	setAttr ".bps" -type "matrix" 1 -9.3421295954123837e-13 0 0 9.3421295954123837e-13 1 0 0
		 0 0 1 0 -45.012874603271484 146.58897399902347 -1.0308551904344817e-14 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_RightHand" -p "Character1_RightForeArm";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F71";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".jo" -type "double3" 0 0 -3.8825130388958945e-19 ;
	setAttr ".bps" -type "matrix" 1 -9.3421295954123837e-13 0 0 9.3421295954123837e-13 1 0 0
		 0 0 1 0 -71.709861755371094 146.58897399902344 -3.4020238069785297e-14 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_RightHandThumb1" -p "Character1_RightHand";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F8E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" 0 0 -3.8825130388958945e-19 ;
	setAttr ".bps" -type "matrix" 1 -9.3421295954123837e-13 0 0 9.3421295954123837e-13 1 0 0
		 0 0 1 0 -76.058242797851534 145.79048156738281 4.2828145027160645 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
createNode joint -n "Character1_RightHandThumb2" -p "Character1_RightHandThumb1";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F8F";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".jo" -type "double3" 0 0 -3.8825130388958945e-19 ;
	setAttr ".bps" -type "matrix" 0.99999999994478694 -1.0508382728710234e-05 0 0 1.0508382728710234e-05 0.99999999994478694 0 0
		 0 0 1 0 -78.570770263671875 145.25437927246094 4.9904913902282715 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
createNode joint -n "Character1_RightHandThumb3" -p "Character1_RightHandThumb2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F90";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".jo" -type "double3" 0 0 0.00060208599999999951 ;
	setAttr ".bps" -type "matrix" 0.99999999997665601 -6.8328595261762754e-06 0 0 6.8328595261762754e-06 0.99999999997665601 0 0
		 0 0 1 0 -81.112358093261705 145.25440979003909 5.0793118476867676 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
createNode joint -n "Character1_RightHandThumb4" -p "Character1_RightHandThumb3";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F91";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".jo" -type "double3" 0 0 0.00039149399999999993 ;
	setAttr ".bps" -type "matrix" 0.99999999997665601 -6.8328595260943054e-06 0 0 6.8328595260943054e-06 0.99999999997665601 0 0
		 0 0 1 0 -83.777481079101577 145.25442504882815 5.1724491119384766 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
createNode joint -n "Character1_RightHandIndex1" -p "Character1_RightHand";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F92";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" 0 0 -3.8825130388958945e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.034900622460286364 0 9.3421295954123837e-13 1 0 0
		 -0.034900622460286364 3.260461379845554e-14 0.99939078770613277 0 -80.531532287597642 146.78871154785156 3.4724442958831787 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
createNode joint -n "Character1_RightHandIndex2" -p "Character1_RightHandIndex1";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F93";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".jo" -type "double3" -1.355847296196041e-20 2.0000646579999999 -3.8848797556813322e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.034900622460286378 0 9.3421295954123837e-13 1 0 0
		 -0.034900622460286378 3.2604613798455553e-14 0.99939078770613277 0 -84.754287719726562 146.78871154785153 3.3250925540924063 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
createNode joint -n "Character1_RightHandIndex3" -p "Character1_RightHandIndex2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F94";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".jo" -type "double3" -1.3558472812700803e-20 2.0000646359999998 -3.8848797556292402e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.034900622460286336 0 9.3421295954123837e-13 1 0 0
		 -0.034900622460286336 3.2604613798455515e-14 0.99939078770613277 0 -87.406608581542983 146.78871154785156 3.2325403690338135 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
createNode joint -n "Character1_RightHandIndex4" -p "Character1_RightHandIndex3";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F95";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".jo" -type "double3" -1.3558472812700803e-20 2.0000646359999998 -3.8848797556292402e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.034900622460286357 0 9.3421295954123837e-13 1 0 0
		 -0.034900622460286357 3.2604613798455534e-14 0.99939078770613277 0 -89.363639831542955 146.78871154785156 3.1642501354217529 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
createNode joint -n "Character1_RightHandMiddle1" -p "Character1_RightHand";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F96";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" 0 0 -3.8825130388958945e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.034900622460286364 0 9.3421295954123837e-13 1 0 0
		 -0.034900622460286364 3.260461379845554e-14 0.99939078770613277 0 -80.519630432128892 147.08987426757812 1.3054584264755249 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
createNode joint -n "Character1_RightHandMiddle2" -p "Character1_RightHandMiddle1";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F97";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".jo" -type "double3" -1.355847296196041e-20 2.0000646579999999 -3.8848797556813322e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.034900622460286364 0 9.3421295954123837e-13 1 0 0
		 -0.034900622460286364 3.260461379845554e-14 0.99939078770613277 0 -85.379920959472656 147.08987426757812 1.1358597278594982 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
createNode joint -n "Character1_RightHandMiddle3" -p "Character1_RightHandMiddle2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F98";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".jo" -type "double3" -1.3558472812700803e-20 2.0000646359999998 -3.8848797556292402e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.03490062246028635 0 9.3421295954123837e-13 1 0 0
		 -0.03490062246028635 3.2604613798455527e-14 0.99939078770613277 0 -88.143478393554688 147.08987426757812 1.0394260883331305 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
createNode joint -n "Character1_RightHandMiddle4" -p "Character1_RightHandMiddle3";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F99";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".jo" -type "double3" -1.3558472812700803e-20 2.0000646359999998 -3.8848797556292402e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.034900622460286364 0 9.3421295954123837e-13 1 0 0
		 -0.034900622460286364 3.260461379845554e-14 0.99939078770613277 0 -90.14788818359375 147.0898742675781 0.9694826602935791 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
createNode joint -n "Character1_RightHandRing1" -p "Character1_RightHand";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F9A";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" 0 0 -3.8825130388958945e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.034900622460286364 0 9.3421295954123837e-13 1 0 0
		 -0.034900622460286364 3.260461379845554e-14 0.99939078770613277 0 -80.603691101074205 146.9689025878906 -0.79237675666809082 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
createNode joint -n "Character1_RightHandRing2" -p "Character1_RightHandRing1";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F9B";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".jo" -type "double3" -1.355847296196041e-20 2.0000646579999999 -3.8848797556813322e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.034900622460286364 0 9.3421295954123837e-13 1 0 0
		 -0.034900622460286364 3.260461379845554e-14 0.99939078770613277 0 -85.138694763183594 146.96890258789062 -0.95062440633773748 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
createNode joint -n "Character1_RightHandRing3" -p "Character1_RightHandRing2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F9C";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".jo" -type "double3" -1.3558472812700803e-20 2.0000646359999998 -3.8848797556292402e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.034900622460286357 0 9.3421295954123837e-13 1 0 0
		 -0.034900622460286357 3.2604613798455534e-14 0.99939078770613277 0 -87.441818237304702 146.96890258789062 -1.0309914350509648 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
createNode joint -n "Character1_RightHandRing4" -p "Character1_RightHandRing3";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F9D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".jo" -type "double3" -1.3558472812700803e-20 2.0000646359999998 -3.8848797556292402e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078770613277 -9.3364382552119571e-13 0.034900622460286357 0 9.3421295954123837e-13 1 0 0
		 -0.034900622460286357 3.2604613798455534e-14 0.99939078770613277 0 -89.363998413085952 146.96890258789062 -1.0980652570724487 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
createNode joint -n "Character1_RightHandPinky1" -p "Character1_RightHand";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F9E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" 0 0 -3.8825130388958945e-19 ;
	setAttr ".bps" -type "matrix" 0.99939078747191235 2.1650090944837464e-05 0.034900622452106948 0 -2.1663288486502847e-05 0.99999999976535092 -1.0587911840678757e-22 0
		 -0.034900622443917555 -7.5606225253851117e-07 0.99939078770641843 0 -80.592353820800767 146.27595520019531 -2.4895741939544678 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
createNode joint -n "Character1_RightHandPinky2" -p "Character1_RightHandPinky1";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F9F";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".jo" -type "double3" -4.3345585314366405e-05 2.0000646575304963 -0.0012419716244709271 ;
	setAttr ".bps" -type "matrix" 0.99939078721828944 3.12455069136577e-05 0.034900622443249957 0 -3.1264553664783966e-05 0.99999999951126384 1.9770592369033039e-14 0
		 -0.034900622426192754 -1.0911524030698998e-06 0.99939078770672762 0 -83.638298034667983 146.27587890625 -2.5958616733551021 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
createNode joint -n "Character1_RightHandPinky3" -p "Character1_RightHandPinky2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000FA0";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".jo" -type "double3" -4.3345584837192786e-05 2.0000646355304967 -0.0012419716244542725 ;
	setAttr ".bps" -type "matrix" 0.99939078721828944 3.1245506913849522e-05 0.03490062244324995 0 -3.1264553664975911e-05 0.99999999951126384 1.9770592460677099e-14 0
		 -0.034900622426192747 -1.0911524030765983e-06 0.99939078770672762 0 -85.613998413085938 146.27583312988278 -2.6648030281066895 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
createNode joint -n "Character1_RightHandPinky4" -p "Character1_RightHandPinky3";
	rename -uid "C812DC00-0017-6481-5EE2-219600000FA1";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".jo" -type "double3" -4.3345584837192779e-05 2.0000646355304958 -0.0012419716244542725 ;
	setAttr ".bps" -type "matrix" 0.99939078721828944 3.1245506913852999e-05 0.034900622443249943 0 -3.1264553664979394e-05 0.99999999951126384 1.9770592479299029e-14 0
		 -0.03490062242619274 -1.0911524030767196e-06 0.99939078770672762 0 -87.281623840332031 146.27577209472656 -2.7229943275451656 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
createNode joint -n "Character1_Neck" -p "Character1_Spine2";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F77";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -9.3825980490543685e-30 145 2.8259619511551527e-14 1;
	setAttr ".ds" 2;
	setAttr ".typ" 7;
	setAttr ".radi" 1.5;
createNode joint -n "Character1_Head" -p "Character1_Neck";
	rename -uid "C812DC00-0017-6481-5EE2-219600000F72";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -2.1708549693132678e-29 165 5.0464078309988766e-14 1;
	setAttr ".ds" 2;
	setAttr ".typ" 8;
	setAttr ".radi" 1.5;
createNode transform -n "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FB1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr -l on ".ra";
createNode locator -n "Character1_Ctrl_ReferenceShape" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FB2";
	setAttr -k off ".v";
createNode hikIKEffector -n "Character1_Ctrl_HipsEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FF1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 0 93.729995727539062 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 15;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 2;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftAnkleEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FF2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 8.9100008010864258 8.1503963470458984 0 ;
	setAttr ".r" -type "double3" 0 2.5444437451708134e-14 2.5444437451708134e-14 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 154.200858241437 -89.999965822788084 0 ;
	setAttr -l on ".ra";
	setAttr ".pin" 3;
	setAttr ".ei" 1;
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 8;
	setAttr -l on ".jo" -type "double3" -90.00007070166123 -64.200858241415929 -89.999921470981704 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightAnkleEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FF3";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -8.9100027084350586 8.1503963470458984 0.00043902400648221374 ;
	setAttr ".r" -type "double3" 0 2.5444437451708134e-14 1.2976663100371148e-11 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -25.799092755428251 -89.995678489082195 180 ;
	setAttr -l on ".ra";
	setAttr ".pin" 3;
	setAttr ".ei" 2;
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 8;
	setAttr -l on ".jo" -type "double3" -89.991060164130957 -64.20090690744297 -90.009929557987491 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftWristEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FF4";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 71.709861755371094 146.58868408203125 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 3;
	setAttr ".radi" 5;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightWristEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FF5";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -71.709861755371094 146.58897399902344 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".ra";
	setAttr ".ei" 4;
	setAttr ".radi" 5;
	setAttr -l on ".jo" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftKneeEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FF6";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 8.9100008010864258 48.851356506347656 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -90 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 5;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" -90 0 -90 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 10 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightKneeEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FF7";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -8.910003662109375 48.851356506347656 0.00043902400648221374 ;
	setAttr ".r" -type "double3" 9.5416640443905503e-15 -6.3611093629270327e-15 -9.5416640443905503e-15 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -89.999998657488334 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 6;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" -90.000000000000014 0 -89.999998657488348 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 10 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftElbowEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FF8";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 45.012718200683594 146.58868408203125 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 7;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 -10 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightElbowEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FF9";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -45.012874603271484 146.58897399902344 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 8;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 -10 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_ChestOriginEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FFA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 0 107 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 9;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_ChestEndEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FFB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 4.76837158203125e-07 146.58854675292969 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 10;
	setAttr ".radi" 15;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftFootEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FFC";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 8.9100093841552734 1.8880791664123535 12.954720497131348 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 11;
	setAttr ".radi" 6;
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 90 0 0 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightFootEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FFD";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -8.9110879898071289 1.8880791664123535 12.955187797546387 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 12;
	setAttr ".radi" 6;
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 90 0 0 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftShoulderEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FFE";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 17.707250595092773 146.58868408203125 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 13;
	setAttr ".radi" 8;
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightShoulderEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FFF";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -17.707275390625 146.58897399902344 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 14;
	setAttr ".radi" 8;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_HeadEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001000";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 0 165 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 15;
	setAttr ".radi" 10;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftHipEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001001";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 8.9100008010864258 93.729995727539062 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 16;
	setAttr ".radi" 8;
	setAttr -l on ".jo" -type "double3" -90 0 -89.999999999999986 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightHipEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001002";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -8.9100008010864258 93.729995727539062 0 ;
	setAttr ".r" -type "double3" -6.361109362927073e-15 -7.3052366200417573e-06 4.0552209479526382e-22 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000560494326749 -89.999996347381668 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 17;
	setAttr ".radi" 8;
	setAttr -l on ".jo" -type "double3" -89.99999999996426 -0.0005604943267384266 -90.000003652618318 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftHandThumbEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001003";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 83.781097412109375 145.25407409667969 4.9898896217346191 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 1.213285324654967e-20 179.99982583549127 ;
	setAttr -l on ".ra";
	setAttr ".ei" 20;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" 90.000000000000014 -0.00017416450875578607 180 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftHandIndexEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001004";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 89.36395263671875 146.78836059570312 3.779543399810791 ;
	setAttr ".r" -type "double3" 0 7.9508399495569004e-16 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -179.99998442772053 -1.9964299098974942 179.99955299885238 ;
	setAttr -l on ".ra";
	setAttr ".ei" 21;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" 180 1.9964299099582015 179.99955327018222 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftHandMiddleEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001005";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 90.153861999511719 147.08956909179688 1.3052822351455688 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 180.00353151100586 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 22;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" 0 179.99646848899414 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftHandRingEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001006";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 89.369255065917969 146.96859741210938 -0.79315978288650513 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 179.99997514160864 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 23;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" 0 180.00002485839138 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftHandPinkyEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001007";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 87.277351379394531 146.27574157714844 -2.4903557300567627 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -3.0016802861780086e-10 180.00003278600863 0.00052457613789922862 ;
	setAttr -l on ".ra";
	setAttr ".ei" 24;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" 0 179.99996721399137 0.00052457613789922862 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightHandThumbEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001008";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -83.777481079101562 145.25442504882812 5.1724491119384766 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999988550102458 0.00032763883927976981 2.0014841297699131 ;
	setAttr -l on ".ra";
	setAttr ".ei" 26;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" 89.999988543112863 2.0014841297043984 -0.00032803897546071346 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightHandIndexEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001009";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -89.363639831542969 146.78871154785156 3.1642501354217529 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985144403114614 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 27;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" 0 -1.9985144403114614 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightHandMiddleEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A20000100A";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -90.14788818359375 147.08987426757812 0.9694826602935791 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985124211128935 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 28;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" 0 -1.9985124211128935 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightHandRingEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A20000100B";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -89.363998413085938 146.96890258789062 -1.0980652570724487 ;
	setAttr ".r" -type "double3" 0 -3.975693351829396e-16 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985058072511437 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 29;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" 0 -1.9985058072511441 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightHandPinkyEffector" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A20000100C";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -87.281623840332031 146.27580261230469 -2.722994327545166 ;
	setAttr ".r" -type "double3" 6.0664266232748336e-21 -7.9513867055101183e-16 1.939360761128174e-19 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -5.4881376380437883e-05 1.9985085028807745 -0.0015737280814150758 ;
	setAttr -l on ".ra";
	setAttr ".ei" 30;
	setAttr ".radi" 2;
	setAttr -l on ".jo" -type "double3" -1.2140237726216587e-20 -1.9985085036340224 0.0015727708379677319 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Hips" -p "Character1_Ctrl_Reference";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FB3";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr ".t" -type "double3" 0 100 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftUpLeg" -p "Character1_Ctrl_Hips";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FB4";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 8.9100008010864258 -6.2700042724609375 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 0 -89.999999999999986 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftLeg" -p "Character1_Ctrl_LeftUpLeg";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FB5";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 -44.878639221191406 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 0 -90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftFoot" -p "Character1_Ctrl_LeftLeg";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FB6";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 -40.700960159301765 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 2.5444437451708134e-14 2.5444437451708134e-14 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 154.200858241437 -89.999965822788084 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90.00007070166123 -64.200858241415929 -89.999921470981704 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftToeBase" -p "Character1_Ctrl_LeftFoot";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FC2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr -l on ".t" -type "double3" 8.58306884765625e-06 -6.2623171806335449 12.954720497131348 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 0;
	setAttr ".lk" 0;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightUpLeg" -p "Character1_Ctrl_Hips";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FB7";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -8.9100008010864258 -6.2700042724609375 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -6.361109362927073e-15 -7.3052366200417573e-06 4.0552209479526382e-22 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000560494326749 -89.999996347381668 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.99999999996426 -0.0005604943267384266 -90.000003652618318 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightLeg" -p "Character1_Ctrl_RightUpLeg";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FB8";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -2.86102294921875e-06 -44.878639221191406 0.00043902400648221374 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 9.5416640443905503e-15 -6.3611093629270327e-15 -9.5416640443905503e-15 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -89.999998657488334 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90.000000000000014 0 -89.999998657488348 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightFoot" -p "Character1_Ctrl_RightLeg";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FB9";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 9.5367431640625e-07 -40.700960159301758 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 2.5444437451708134e-14 1.2976663100371148e-11 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -25.799092755428251 -89.995678489082195 180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.991060164130957 -64.20090690744297 -90.009929557987491 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightToeBase" -p "Character1_Ctrl_RightFoot";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FC3";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr -l on ".t" -type "double3" -0.0010852813720703125 -6.2623171806335449 12.954748773539905 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 0;
	setAttr ".lk" 0;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Spine" -p "Character1_Ctrl_Hips";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FBA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 7 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Spine1" -p "Character1_Ctrl_Spine";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FC7";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 12.666664123535142 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Spine2" -p "Character1_Ctrl_Spine1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FC8";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 12.666664123535156 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftShoulder" -p "Character1_Ctrl_Spine2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FC4";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 7.0000004768371582 14.255218505859375 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 0 1.9412565194479472e-19 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 0 -0.00073486449242535516 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 0 0.00073486449242535516 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftArm" -p "Character1_Ctrl_LeftShoulder";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FBB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 10.707250118255615 0.0001373291015625 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftForeArm" -p "Character1_Ctrl_LeftArm";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FBC";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 27.30546760559082 -2.8421709430404007e-14 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHand" -p "Character1_Ctrl_LeftForeArm";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FBD";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 26.6971435546875 -2.8421709430404007e-14 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandThumb1" -p "Character1_Ctrl_LeftHand";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FC9";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 4.3487625122070312 -0.79850769042971592 4.2824339866638184 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 86.814099537716444 -11.165660153774102 16.036798862650627 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -86.75800854369021 -15.395742531921147 -12.044061673373911 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandThumb2" -p "Character1_Ctrl_LeftHandThumb1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FCA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 2.5125885009765625 -0.5360870361328125 0.70745420455932617 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.2722218725668934e-14 -1.4817190331373659e-35 -1.3346138571204636e-19 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999998710877 -0.00034377398952155542 0.00021485874345943205 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.999999998710877 -0.00021485874345169724 -0.00034377398952638961 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandThumb3" -p "Character1_Ctrl_LeftHandThumb2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FCB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 2.5431365966796875 -1.52587890625e-05 9.5367431640625e-06 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -1.213285324654967e-20 -0.0001741645087557861 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 0.0001741645087557861 1.2132853246605725e-20 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandThumb4" -p "Character1_Ctrl_LeftHandThumb3";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FCC";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 2.666748046875 0 -8.1062316903413034e-06 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 1.213285324654967e-20 179.99982583549127 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90.000000000000014 -0.00017416450875578607 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandIndex1" -p "Character1_Ctrl_LeftHand";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FCD";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 8.8219757080078125 0.19972229003903408 3.4716694355010986 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.4024520519868986e-14 -3.1236437782428213e-32 -2.5522670089441889e-16 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -179.99999278302082 -1.9964364942730684 -0.00020716217936717795 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -180 -1.9964364942861084 -0.00020703643102462744 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandIndex2" -p "Character1_Ctrl_LeftHandIndex1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FCE";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 4.2227554321289062 -1.5258789090921709e-05 0.14719891548156738 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.975693351829396e-16 2.6498151490464429e-17 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -179.99998850990389 -1.9964346094399346 -0.00032982159643658306 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -1.9964346094729852 -0.00032962139367316291 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandIndex3" -p "Character1_Ctrl_LeftHandIndex2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FCF";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 2.6523284912109517 -1.52587890625e-05 0.09245610237121582 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.4024900429836268e-14 -2.9924593367255408e-32 -2.4450125862446896e-16 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -179.99998442772053 -1.9964299098974947 -0.00044700114764961566 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -180 -1.9964299099582019 -0.00044672981780128246 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandIndex4" -p "Character1_Ctrl_LeftHandIndex3";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FD0";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 1.9570312500000142 -1.52587890625e-05 0.068218946456909624 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 7.9508399495569004e-16 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -179.99998442772053 -1.9964299098974942 179.99955299885238 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 1.9964299099582015 179.99955327018222 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandMiddle1" -p "Character1_Ctrl_LeftHand";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FD1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 8.8098831176757812 0.50088500976559658 1.3046844005584717 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 -0.0035630879128774082 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -0.0035630879128774082 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandMiddle2" -p "Character1_Ctrl_LeftHandMiddle1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FD2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 4.8632507324218608 0 0.00030243396759010999 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 -0.0035592994356103001 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -0.0035592994356103001 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandMiddle3" -p "Character1_Ctrl_LeftHandMiddle2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FD3";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 2.7652359008789205 0 0.00017178058624289783 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 -0.0035315110058781801 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -0.0035315110058781801 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandMiddle4" -p "Character1_Ctrl_LeftHandMiddle3";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FD4";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 2.0056304931640767 0 0.0001236200332643822 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 180.00353151100586 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 179.99646848899414 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandRing1" -p "Character1_Ctrl_LeftHand";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FD5";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 8.8937606811523438 0.37991333007809658 -0.7931588888168335 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 -7.5259515385862438e-07 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -7.5259515385862438e-07 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandRing2" -p "Character1_Ctrl_LeftHandRing1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FD6";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 4.5377578735351562 0 5.9604644775390625e-08 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 5.5711329885449172e-61 7.5830332790935439e-22 8.4188581429484532e-38 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 2.9638135426916944e-06 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 2.9638135426916944e-06 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandRing3" -p "Character1_Ctrl_LeftHandRing2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FD7";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 2.3045272827148438 0 -1.1920928955078125e-07 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 2.4858391350325415e-05 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 2.4858391350325415e-05 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandRing4" -p "Character1_Ctrl_LeftHandRing3";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FD8";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 1.9233474731445312 0 -8.3446502685546875e-07 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 179.99997514160864 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 180.00002485839138 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandPinky1" -p "Character1_Ctrl_LeftHand";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FD9";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 8.8822784423828125 -0.31303405761721592 -2.4903564453125 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.2997397405684581e-35 1.9412565194479472e-19 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 0 0.00086159930689175062 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 0 0.00086159930689175062 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandPinky2" -p "Character1_Ctrl_LeftHandPinky1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FDA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 3.044097900390625 4.57763671875e-05 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 7.8863546102572863e-20 -1.9412565194479472e-19 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -179.99999999989308 6.9183897703885455e-06 0.00088555389075077367 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -180 6.9183897712148863e-06 0.00088555389075076706 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandPinky3" -p "Character1_Ctrl_LeftHandPinky2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FDB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 1.9745025634765625 3.0517578096578291e-05 -2.384185791015625e-07 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.4033418597142049e-14 6.0664266232748592e-21 -1.9412565194479472e-19 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 179.99999999969984 -3.2786008617846793e-05 0.00052457613791500679 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -3.2786008619220938e-05 0.00052457613791492103 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandPinky4" -p "Character1_Ctrl_LeftHandPinky3";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FDC";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 1.6666107177734375 1.5258789034078291e-05 9.5367431640625e-07 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -3.0016802861780086e-10 180.00003278600863 0.00052457613789922862 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 179.99996721399137 0.00052457613789922862 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightShoulder" -p "Character1_Ctrl_Spine2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FC5";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -6.9999995231628418 14.255218505859375 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 0 -7.765026077791789e-19 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 0 0.0022862395884207069 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 0 -0.0022862395884207069 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightArm" -p "Character1_Ctrl_RightShoulder";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FBE";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -10.707275867462158 0.00042724609375 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightForeArm" -p "Character1_Ctrl_RightArm";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FBF";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -27.305599212646488 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHand" -p "Character1_Ctrl_RightForeArm";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FC0";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -26.696987152099588 -2.8421709430404007e-14 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandThumb1" -p "Character1_Ctrl_RightHand";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FDD";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -4.348381042480483 -0.79849243164059658 4.2828145027160645 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-15 1.5902773407317584e-15 4.3732626870123352e-15 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 86.813012195533588 11.165680607019754 163.95802615198161 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 86.75682517293356 -15.400681225545132 -167.95532148114495 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandThumb2" -p "Character1_Ctrl_RightHandThumb1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FDE";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -2.5125274658202983 -0.53610229492190342 0.70767688751220703 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 7.5036407066852701e-31 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000024012942802 -0.00068712777364691633 177.99850822032005 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90.000024027601611 -2.0014917793917943 179.99931203304993 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandThumb3" -p "Character1_Ctrl_RightHandThumb2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FDF";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -2.5415878295898438 3.0517578125e-05 0.088820457458496982 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.987846675914698e-16 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000011449897556 -0.00032763883927996844 177.99851587023008 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90.000011456887137 -2.0014841297043975 179.99967196102455 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandThumb4" -p "Character1_Ctrl_RightHandThumb3";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FE0";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -2.6651229858398438 1.52587890625e-05 0.093137264251708984 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999988550102458 0.00032763883927976981 2.0014841297699131 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999988543112863 2.0014841297043984 -0.00032803897546071346 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandIndex1" -p "Character1_Ctrl_RightHand";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FE1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -8.8216705322265767 0.19973754882815342 3.4724442958831787 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -2.2069531490250793e-32 -7.9513867036587919e-16 -3.4483642953516847e-34 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985075743396006 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985075743396006 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandIndex2" -p "Character1_Ctrl_RightHandIndex1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FE2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -4.222755432128892 -2.8421709430404007e-14 -0.14735174179077148 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985134166362191 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985134166362191 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandIndex3" -p "Character1_Ctrl_RightHandIndex2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FE3";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -2.6523208618164062 0 -0.092552185058594194 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985144403114614 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985144403114614 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandIndex4" -p "Character1_Ctrl_RightHandIndex3";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FE4";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -1.95703125 -2.8421709430404007e-14 -0.068290233612060547 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985144403114614 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 -1.9985144403114614 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandMiddle1" -p "Character1_Ctrl_RightHand";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FE5";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -8.8097686767578267 0.50090026855471592 1.3054584264755249 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985118990959754 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985118990959754 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandMiddle2" -p "Character1_Ctrl_RightHandMiddle1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FE6";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -4.8602905273437358 -2.8421709430404007e-14 -0.16959869861602783 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985108780021932 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985108780021932 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandMiddle3" -p "Character1_Ctrl_RightHandMiddle2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FE7";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -2.763557434082017 -2.8421709430404007e-14 -0.096433639526367188 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -7.9513867036587919e-16 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985124211128931 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985124211128931 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandMiddle4" -p "Character1_Ctrl_RightHandMiddle3";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FE8";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -2.0044097900390483 -2.8421709430404007e-14 -0.069943428039550781 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985124211128935 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 -1.9985124211128935 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandRing1" -p "Character1_Ctrl_RightHand";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FE9";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -8.8938293457031392 0.37992858886721592 -0.79237675666809082 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985088701297447 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985088701297447 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandRing2" -p "Character1_Ctrl_RightHandRing1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FEA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -4.5350036621093608 0 -0.15824764966964722 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985137620248108 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985137620248108 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandRing3" -p "Character1_Ctrl_RightHandRing2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FEB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -2.3031234741210938 -2.8421709430404007e-14 -0.080367028713226318 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985058072511441 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985058072511432 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandRing4" -p "Character1_Ctrl_RightHandRing3";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FEC";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -1.92218017578125 0 -0.067073822021484375 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.975693351829396e-16 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985058072511437 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 -1.9985058072511441 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandPinky1" -p "Character1_Ctrl_RightHand";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FED";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -8.8824920654297017 -0.31301879882809658 -2.4895741939544678 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.975693351829396e-16 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -5.0078455230139592e-05 1.9985113357052162 179.99856399812094 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -6.0701188735804156e-21 1.9985113363323919 -179.99856487159286 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandPinky2" -p "Character1_Ctrl_RightHandPinky1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FEE";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -3.0459442138671733 -7.62939453125e-05 -0.10628747940063432 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 8.8733318897309852e-16 1.9690749682674644e-31 -2.5428933940169029e-14 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -3.0882350284291956e-05 1.9985047496252921 179.99911444434684 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.998504749863804 -179.99911498299718 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandPinky3" -p "Character1_Ctrl_RightHandPinky2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FEF";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -1.9757003784179545 -3.0517578153421709e-05 -0.068941354751586914 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 3.975693351829396e-16 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -5.4881376380437883e-05 1.9985085028807745 179.99842627191859 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 1.2140237726216587e-20 1.998508503634022 -179.99842722916202 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandPinky4" -p "Character1_Ctrl_RightHandPinky3";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FF0";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -1.6676254272460938 -4.57763671875e-05 -0.058191299438476562 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 6.0664266232748336e-21 -7.9513867055101183e-16 1.939360761128174e-19 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -5.4881376380437883e-05 1.9985085028807745 -0.0015737280814150758 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -1.2140237726216587e-20 -1.9985085036340224 0.0015727708379677319 ;
	setAttr -l on ".jo";
	setAttr ".radi" 2;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Neck" -p "Character1_Ctrl_Spine2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FC6";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 12.666671752929688 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Head" -p "Character1_Ctrl_Neck";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FC1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 20 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 4;
instanceable -a 0;
createNode transform -n "pCube8";
	rename -uid "C812DC00-0017-6481-5EE2-235C00001134";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 89.665655612945557 3.6715559959411621 ;
	setAttr ".sp" -type "double3" 0 89.665655612945557 3.6715559959411621 ;
createNode mesh -n "pCube8Shape" -p "pCube8";
	rename -uid "C812DC00-0017-6481-5EE2-235C00001133";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "pCube8";
	rename -uid "C812DC00-0017-6481-5EE2-23660000115E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:84]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 190 ".uvst[0].uvsp[0:189]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.125 0.625 0.125 0.625 0.625 0.875 0.125 0.125
		 0.125 0.375 0.625 0.375 0.0625 0.625 0.0625 0.625 0.6875 0.875 0.0625 0.125 0.0625
		 0.375 0.6875 0.125 0.1875 0.375 0.5625 0.625 0.5625 0.875 0.1875 0.625 0.1875 0.375
		 0.1875 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.62501264
		 0.375 0.62501264 0.375 0.87498748 0.625 0.87498748 0.625 1 0.375 1 0.75001252 0 0.875
		 0.12498736 0.875 0.25 0.125 0.12498736 0.24998748 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 110 ".vt[0:109]"  -11.39622402 96.57511139 3.42488647 11.39622402 96.57511139 3.42488647
		 -13.067540169 149.030059814 5.39077139 13.067540169 149.030059814 5.39077139 -13.067540169 149.030059814 -5.39077139
		 13.067540169 149.030059814 -5.39077139 -11.39622402 96.57511139 -3.42488647 11.39622402 96.57511139 -3.42488647
		 -12.12489414 122.80258179 4.73077297 12.12489414 122.80258179 4.73077297 12.12489414 122.80258179 -4.73077297
		 -12.12489414 122.80258179 -4.73077297 -11.76547718 109.68884277 4.35793543 11.76547718 109.68884277 4.35793543
		 11.76547718 109.68884277 -4.35793543 -11.76547718 109.68884277 -4.35793543 -12.47447968 135.9163208 -5.37583351
		 12.47447968 135.9163208 -5.37583351 12.47447968 135.9163208 5.37583351 -12.47447968 135.9163208 5.37583351
		 -5.19887114 155.81115723 9.1888361 5.19887114 155.81115723 9.1888361 -5.19887114 174.18884277 9.1888361
		 5.19887114 174.18884277 9.1888361 -5.19887114 174.18884277 -9.1888361 5.19887114 174.18884277 -9.1888361
		 -5.19887114 155.81115723 -0.0009188836 -5.19887114 164.99906921 -9.1888361 5.19887114 155.81115723 -0.0009188836
		 5.19887114 164.99906921 -9.1888361 45.10528946 144.014907837 2.57378435 45.10528946 149.16247559 2.57378435
		 13.91649437 143.192276 3.39640546 13.91649437 149.98509216 3.39640546 13.91649437 143.192276 -3.39640546
		 13.91649437 149.98509216 -3.39640546 45.10528946 144.014907837 -2.57378435 45.10528946 149.16247559 -2.57378435
		 73.8073349 144.6056366 1.98305857 73.8073349 148.57174683 1.98305857 42.61854172 143.97181702 2.61687469
		 42.61854172 149.20555115 2.61687469 42.61854172 143.97181702 -2.61687469 42.61854172 149.20555115 -2.61687469
		 73.8073349 144.6056366 -1.98305857 73.8073349 148.57174683 -1.98305857 6.33621645 52.88166428 2.57378435
		 11.48378563 52.88166428 2.57378435 5.5135951 97.12640381 3.39640546 12.30640602 97.12640381 3.39640546
		 5.5135951 97.12640381 -3.39640546 12.30640602 97.12640381 -3.39640546 6.33621645 52.88166428 -2.57378435
		 11.48378563 52.88166428 -2.57378435 6.33621645 8.0030250549 2.57378078 11.48378563 8.0030250549 2.57378078
		 5.5135951 52.24776077 3.39640188 12.30640602 52.24776077 3.39640188 5.5135951 52.24776077 -3.39640927
		 12.30640602 52.24776077 -3.39640927 6.33621645 8.0030250549 -2.57378817 11.48378563 8.0030250549 -2.57378817
		 5.902071 5.14246845 16.53194809 11.9179306 5.14246845 16.53194809 5.902071 7.87682104 16.53194809
		 11.9179306 7.87682104 16.53194809 5.902071 11.15832806 -2.040594578 11.9179306 11.15832806 -2.040594578
		 5.902071 5.14246845 -2.040594578 11.9179306 5.14246845 -2.040594578 -45.10528946 144.014907837 2.57378435
		 -45.10528946 149.16247559 2.57378435 -13.91649437 143.192276 3.39640546 -13.91649437 149.98509216 3.39640546
		 -13.91649437 143.192276 -3.39640546 -13.91649437 149.98509216 -3.39640546 -45.10528946 144.014907837 -2.57378435
		 -45.10528946 149.16247559 -2.57378435 -73.8073349 144.6056366 1.98305857 -73.8073349 148.57174683 1.98305857
		 -42.61854172 143.97181702 2.61687469 -42.61854172 149.20555115 2.61687469 -42.61854172 143.97181702 -2.61687469
		 -42.61854172 149.20555115 -2.61687469 -73.8073349 144.6056366 -1.98305857 -73.8073349 148.57174683 -1.98305857
		 -6.33621645 52.88166428 2.57378435 -11.48378468 52.88166428 2.57378435 -5.5135951 97.12640381 3.39640546
		 -12.30640602 97.12640381 3.39640546 -5.5135951 97.12640381 -3.39640546 -12.30640602 97.12640381 -3.39640546
		 -6.33621645 52.88166428 -2.57378435 -11.48378468 52.88166428 -2.57378435 -6.33621645 8.0030250549 2.57378078
		 -11.48378468 8.0030250549 2.57378078 -5.5135951 52.24776077 3.39640188 -12.30640602 52.24776077 3.39640188
		 -5.5135951 52.24776077 -3.39640927 -12.30640602 52.24776077 -3.39640927 -6.33621645 8.0030250549 -2.57378817
		 -11.48378468 8.0030250549 -2.57378817 -5.902071 5.14246845 16.53194809 -11.9179306 5.14246845 16.53194809
		 -5.902071 7.87682104 16.53194809 -11.9179306 7.87682104 16.53194809 -5.902071 11.15832806 -2.040594578
		 -11.9179306 11.15832806 -2.040594578 -5.902071 5.14246845 -2.040594578 -11.9179306 5.14246845 -2.040594578;
	setAttr -s 171 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0 3 5 0 4 16 0
		 5 17 0 6 0 0 7 1 0 8 19 0 9 18 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1 11 8 1 12 8 0
		 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1 16 11 0 17 10 0 18 3 0 19 2 0
		 16 17 1 17 18 1 18 19 1 19 16 1 20 21 0 22 23 0 24 25 0 20 22 0 21 23 0 22 24 0 23 25 0
		 24 27 0 25 29 0 26 20 0 26 27 0 28 21 0 28 29 0 26 28 0 29 27 0 30 31 0 32 33 0 34 35 0
		 36 37 0 30 32 0 31 33 0 32 34 0 33 35 0 34 36 0 35 37 0 36 30 0 37 31 0 38 39 0 40 41 0
		 42 43 0 44 45 0 38 40 0 39 41 0 40 42 0 41 43 0 42 44 0 43 45 0 44 38 0 45 39 0 46 47 0
		 48 49 0 50 51 0 52 53 0 46 48 0 47 49 0 48 50 0 49 51 0 50 52 0 51 53 0 52 46 0 53 47 0
		 54 55 0 56 57 0 58 59 0 60 61 0 54 56 0 55 57 0 56 58 0 57 59 0 58 60 0 59 61 0 60 54 0
		 61 55 0 62 63 0 64 65 0 66 67 0 68 69 0 62 64 0 63 65 0 64 66 0 65 67 0 66 68 0 67 69 0
		 68 62 0 69 63 0 70 71 0 72 73 0 74 75 0 76 77 0 70 72 0 71 73 0 72 74 0 73 75 0 74 76 0
		 75 77 0 76 70 0 77 71 0 78 79 0 80 81 0 82 83 0 84 85 0 78 80 0 79 81 0 80 82 0 81 83 0
		 82 84 0 83 85 0 84 78 0 85 79 0 86 87 0 88 89 0 90 91 0 92 93 0 86 88 0 87 89 0 88 90 0
		 89 91 0 90 92 0 91 93 0 92 86 0 93 87 0 94 95 0 96 97 0 98 99 0 100 101 0 94 96 0
		 95 97 0 96 98 0 97 99 0 98 100 0 99 101 0 100 94 0 101 95 0 102 103 0 104 105 0 106 107 0
		 108 109 0 102 104 0 103 105 0 104 106 0;
	setAttr ".ed[166:170]" 105 107 0 106 108 0 107 109 0 108 102 0 109 103 0;
	setAttr -s 85 -ch 342 ".fc[0:84]" -type "polyFaces" 
		f 4 16 13 34 -13
		mu 0 4 14 15 30 31
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 32 29 18 -29
		mu 0 4 27 28 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -30 33 -14
		mu 0 4 15 17 29 30
		f 4 19 12 35 28
		mu 0 4 18 14 31 26
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24
		f 4 2 9 -33 -9
		mu 0 4 4 5 28 27
		f 4 -34 -10 -8 -31
		mu 0 4 30 29 11 3
		f 4 -35 30 -2 -32
		mu 0 4 31 30 3 2
		f 4 -36 31 6 8
		mu 0 4 26 31 2 13
		f 4 36 40 -38 -40
		mu 0 4 32 33 34 35
		f 4 37 42 -39 -42
		mu 0 4 35 34 36 37
		f 4 38 44 50 -44
		mu 0 4 37 36 38 39
		f 4 49 47 -37 -46
		mu 0 4 40 41 42 43
		f 5 -48 48 -45 -43 -41
		mu 0 5 33 44 45 46 34
		f 5 -47 45 39 41 43
		mu 0 5 47 48 32 35 49
		f 4 46 -51 -49 -50
		mu 0 4 40 39 38 41
		f 4 51 56 -53 -56
		mu 0 4 50 51 52 53
		f 4 52 58 -54 -58
		mu 0 4 53 52 54 55
		f 4 53 60 -55 -60
		mu 0 4 55 54 56 57
		f 4 54 62 -52 -62
		mu 0 4 57 56 58 59
		f 4 -63 -61 -59 -57
		mu 0 4 51 60 61 52
		f 4 61 55 57 59
		mu 0 4 62 50 53 63
		f 4 63 68 -65 -68
		mu 0 4 64 65 66 67
		f 4 64 70 -66 -70
		mu 0 4 67 66 68 69
		f 4 65 72 -67 -72
		mu 0 4 69 68 70 71
		f 4 66 74 -64 -74
		mu 0 4 71 70 72 73
		f 4 -75 -73 -71 -69
		mu 0 4 65 74 75 66
		f 4 73 67 69 71
		mu 0 4 76 64 67 77
		f 4 75 80 -77 -80
		mu 0 4 78 79 80 81
		f 4 76 82 -78 -82
		mu 0 4 81 80 82 83
		f 4 77 84 -79 -84
		mu 0 4 83 82 84 85
		f 4 78 86 -76 -86
		mu 0 4 85 84 86 87
		f 4 -87 -85 -83 -81
		mu 0 4 79 88 89 80
		f 4 85 79 81 83
		mu 0 4 90 78 81 91
		f 4 87 92 -89 -92
		mu 0 4 92 93 94 95
		f 4 88 94 -90 -94
		mu 0 4 95 94 96 97
		f 4 89 96 -91 -96
		mu 0 4 97 96 98 99
		f 4 90 98 -88 -98
		mu 0 4 99 98 100 101
		f 4 -99 -97 -95 -93
		mu 0 4 93 102 103 94
		f 4 97 91 93 95
		mu 0 4 104 92 95 105
		f 4 99 104 -101 -104
		mu 0 4 106 107 108 109
		f 4 100 106 -102 -106
		mu 0 4 109 108 110 111
		f 4 101 108 -103 -108
		mu 0 4 111 110 112 113
		f 4 102 110 -100 -110
		mu 0 4 113 112 114 115
		f 4 -111 -109 -107 -105
		mu 0 4 107 116 117 108
		f 4 109 103 105 107
		mu 0 4 118 106 109 119
		f 4 111 116 -113 -116
		mu 0 4 120 121 122 123
		f 4 112 118 -114 -118
		mu 0 4 123 122 124 125
		f 4 113 120 -115 -120
		mu 0 4 125 124 126 127
		f 4 114 122 -112 -122
		mu 0 4 127 126 128 129
		f 4 -123 -121 -119 -117
		mu 0 4 121 130 131 122
		f 4 121 115 117 119
		mu 0 4 132 120 123 133
		f 4 123 128 -125 -128
		mu 0 4 134 135 136 137
		f 4 124 130 -126 -130
		mu 0 4 137 136 138 139
		f 4 125 132 -127 -132
		mu 0 4 139 138 140 141
		f 4 126 134 -124 -134
		mu 0 4 141 140 142 143
		f 4 -135 -133 -131 -129
		mu 0 4 135 144 145 136
		f 4 133 127 129 131
		mu 0 4 146 134 137 147
		f 4 135 140 -137 -140
		mu 0 4 148 149 150 151
		f 4 136 142 -138 -142
		mu 0 4 151 150 152 153
		f 4 137 144 -139 -144
		mu 0 4 153 152 154 155
		f 4 138 146 -136 -146
		mu 0 4 155 154 156 157
		f 4 -147 -145 -143 -141
		mu 0 4 149 158 159 150
		f 4 145 139 141 143
		mu 0 4 160 148 151 161
		f 4 147 152 -149 -152
		mu 0 4 162 163 164 165
		f 4 148 154 -150 -154
		mu 0 4 165 164 166 167
		f 4 149 156 -151 -156
		mu 0 4 167 166 168 169
		f 4 150 158 -148 -158
		mu 0 4 169 168 170 171
		f 4 -159 -157 -155 -153
		mu 0 4 163 172 173 164
		f 4 157 151 153 155
		mu 0 4 174 162 165 175
		f 4 159 164 -161 -164
		mu 0 4 176 177 178 179
		f 4 160 166 -162 -166
		mu 0 4 179 178 180 181
		f 4 161 168 -163 -168
		mu 0 4 181 180 182 183
		f 4 162 170 -160 -170
		mu 0 4 183 182 184 185
		f 4 -171 -169 -167 -165
		mu 0 4 177 186 187 178
		f 4 169 163 165 167
		mu 0 4 188 176 179 189;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCube8ShapeOrig" -p "pCube8";
	rename -uid "C812DC00-0017-6481-5EE2-237500001162";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B8097C00-001C-105D-5EE2-3BC700000335";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B8097C00-001C-105D-5EE2-3BC700000336";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B8097C00-001C-105D-5EE2-3BC700000337";
createNode displayLayerManager -n "layerManager";
	rename -uid "B8097C00-001C-105D-5EE2-3BC700000338";
createNode displayLayer -n "defaultLayer";
	rename -uid "C812DC00-0017-6481-5EE2-214B00000F5B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B8097C00-001C-105D-5EE2-3BC70000033A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C812DC00-0017-6481-5EE2-214B00000F5D";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "C812DC00-0017-6481-5EE2-214C00000F5E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1514.2856541134088 -767.85711234524263 ;
	setAttr ".tgi[0].vh" -type "double2" 1514.2856541134088 766.66663620207169 ;
createNode HIKCharacterNode -n "Character1";
	rename -uid "C812DC00-0017-6481-5EE2-219500000F5F";
	setAttr ".OutputCharacterDefinition" -type "HIKCharacter" ;
	setAttr ".InputCharacterizationLock" yes;
	setAttr ".ReferenceMinRLimitx" -45;
	setAttr ".ReferenceMinRLimity" -45;
	setAttr ".ReferenceMinRLimitz" -45;
	setAttr ".ReferenceMaxRLimitx" 45;
	setAttr ".ReferenceMaxRLimity" 45;
	setAttr ".ReferenceMaxRLimitz" 45;
	setAttr ".HipsTy" 100;
	setAttr ".HipsMinRLimitx" -45;
	setAttr ".HipsMinRLimity" -45;
	setAttr ".HipsMinRLimitz" -45;
	setAttr ".HipsMaxRLimitx" 45;
	setAttr ".HipsMaxRLimity" 45;
	setAttr ".HipsMaxRLimitz" 45;
	setAttr ".LeftUpLegTx" 8.9100008010000007;
	setAttr ".LeftUpLegTy" 93.729999539999994;
	setAttr ".LeftUpLegMinRLimitx" -45;
	setAttr ".LeftUpLegMinRLimity" -45;
	setAttr ".LeftUpLegMinRLimitz" -45;
	setAttr ".LeftUpLegMaxRLimitx" 45;
	setAttr ".LeftUpLegMaxRLimity" 45;
	setAttr ".LeftUpLegMaxRLimitz" 45;
	setAttr ".LeftLegTx" 8.9100008010000007;
	setAttr ".LeftLegTy" 48.851354600000001;
	setAttr ".LeftLegMinRLimitx" -45;
	setAttr ".LeftLegMinRLimity" -45;
	setAttr ".LeftLegMinRLimitz" -45;
	setAttr ".LeftLegMaxRLimitx" 45;
	setAttr ".LeftLegMaxRLimity" 45;
	setAttr ".LeftLegMaxRLimitz" 45;
	setAttr ".LeftFootTx" 8.9100008010000007;
	setAttr ".LeftFootTy" 8.1503963469999974;
	setAttr ".LeftFootMinRLimitx" -45;
	setAttr ".LeftFootMinRLimity" -45;
	setAttr ".LeftFootMinRLimitz" -45;
	setAttr ".LeftFootMaxRLimitx" 45;
	setAttr ".LeftFootMaxRLimity" 45;
	setAttr ".LeftFootMaxRLimitz" 45;
	setAttr ".RightUpLegTx" -8.9100008010000007;
	setAttr ".RightUpLegTy" 93.729999539999994;
	setAttr ".RightUpLegMinRLimitx" -45;
	setAttr ".RightUpLegMinRLimity" -45;
	setAttr ".RightUpLegMinRLimitz" -45;
	setAttr ".RightUpLegMaxRLimitx" 45;
	setAttr ".RightUpLegMaxRLimity" 45;
	setAttr ".RightUpLegMaxRLimitz" 45;
	setAttr ".RightLegTx" -8.9100035169999998;
	setAttr ".RightLegTy" 48.851354600000001;
	setAttr ".RightLegTz" 0.00043902399999999999;
	setAttr ".RightLegMinRLimitx" -45;
	setAttr ".RightLegMinRLimity" -45;
	setAttr ".RightLegMinRLimitz" -45;
	setAttr ".RightLegMaxRLimitx" 45;
	setAttr ".RightLegMaxRLimity" 45;
	setAttr ".RightLegMaxRLimitz" 45;
	setAttr ".RightFootTx" -8.9100025980000002;
	setAttr ".RightFootTy" 8.1503963509999977;
	setAttr ".RightFootTz" 0.00043902399999999999;
	setAttr ".RightFootRy" -0.0048003860000000002;
	setAttr ".RightFootMinRLimitx" -45;
	setAttr ".RightFootMinRLimity" -45;
	setAttr ".RightFootMinRLimitz" -45;
	setAttr ".RightFootMaxRLimitx" 45;
	setAttr ".RightFootMaxRLimity" 45;
	setAttr ".RightFootMaxRLimitz" 45;
	setAttr ".SpineTy" 107;
	setAttr ".SpineMinRLimitx" -45;
	setAttr ".SpineMinRLimity" -45;
	setAttr ".SpineMinRLimitz" -45;
	setAttr ".SpineMaxRLimitx" 45;
	setAttr ".SpineMaxRLimity" 45;
	setAttr ".SpineMaxRLimitz" 45;
	setAttr ".LeftArmTx" 17.707251070000005;
	setAttr ".LeftArmTy" 146.58868419999996;
	setAttr ".LeftArmJointOrientz" -0.00073528200000000008;
	setAttr ".LeftArmMinRLimitx" -45;
	setAttr ".LeftArmMinRLimity" -45;
	setAttr ".LeftArmMinRLimitz" -45;
	setAttr ".LeftArmMaxRLimitx" 45;
	setAttr ".LeftArmMaxRLimity" 45;
	setAttr ".LeftArmMaxRLimitz" 45;
	setAttr ".LeftForeArmTx" 45.012716769999997;
	setAttr ".LeftForeArmTy" 146.58868419999999;
	setAttr ".LeftForeArmJointOrientz" 9.7062825972397362e-20;
	setAttr ".LeftForeArmMinRLimitx" -45;
	setAttr ".LeftForeArmMinRLimity" -45;
	setAttr ".LeftForeArmMinRLimitz" -45;
	setAttr ".LeftForeArmMaxRLimitx" 45;
	setAttr ".LeftForeArmMaxRLimity" 45;
	setAttr ".LeftForeArmMaxRLimitz" 45;
	setAttr ".LeftHandTx" 71.709864139999993;
	setAttr ".LeftHandTy" 146.58868419999999;
	setAttr ".LeftHandJointOrientz" 9.7062825972397362e-20;
	setAttr ".LeftHandMinRLimitx" -45;
	setAttr ".LeftHandMinRLimity" -45;
	setAttr ".LeftHandMinRLimitz" -45;
	setAttr ".LeftHandMaxRLimitx" 45;
	setAttr ".LeftHandMaxRLimity" 45;
	setAttr ".LeftHandMaxRLimitz" 45;
	setAttr ".RightArmTx" -17.707274910000002;
	setAttr ".RightArmTy" 146.58898000000002;
	setAttr ".RightArmJointOrientz" 0.0023183610000000006;
	setAttr ".RightArmMinRLimitx" -45;
	setAttr ".RightArmMinRLimity" -45;
	setAttr ".RightArmMinRLimitz" -45;
	setAttr ".RightArmMaxRLimitx" 45;
	setAttr ".RightArmMaxRLimity" 45;
	setAttr ".RightArmMaxRLimitz" 45;
	setAttr ".RightForeArmTx" -45.012873159999998;
	setAttr ".RightForeArmTy" 146.58898;
	setAttr ".RightForeArmJointOrientz" -3.8825130388958945e-19;
	setAttr ".RightForeArmMinRLimitx" -45;
	setAttr ".RightForeArmMinRLimity" -45;
	setAttr ".RightForeArmMinRLimitz" -45;
	setAttr ".RightForeArmMaxRLimitx" 45;
	setAttr ".RightForeArmMaxRLimity" 45;
	setAttr ".RightForeArmMaxRLimitz" 45;
	setAttr ".RightHandTx" -71.709861270000005;
	setAttr ".RightHandTy" 146.58897870000001;
	setAttr ".RightHandJointOrientz" -3.8825130388958945e-19;
	setAttr ".RightHandMinRLimitx" -45;
	setAttr ".RightHandMinRLimity" -45;
	setAttr ".RightHandMinRLimitz" -45;
	setAttr ".RightHandMaxRLimitx" 45;
	setAttr ".RightHandMaxRLimity" 45;
	setAttr ".RightHandMaxRLimitz" 45;
	setAttr ".HeadTy" 165;
	setAttr ".HeadMinRLimitx" -45;
	setAttr ".HeadMinRLimity" -45;
	setAttr ".HeadMinRLimitz" -45;
	setAttr ".HeadMaxRLimitx" 45;
	setAttr ".HeadMaxRLimity" 45;
	setAttr ".HeadMaxRLimitz" 45;
	setAttr ".LeftToeBaseTx" 8.9100092279999998;
	setAttr ".LeftToeBaseTy" 1.8880791539999997;
	setAttr ".LeftToeBaseTz" 12.9547209;
	setAttr ".LeftToeBaseMinRLimitx" -45;
	setAttr ".LeftToeBaseMinRLimity" -45;
	setAttr ".LeftToeBaseMinRLimitz" -45;
	setAttr ".LeftToeBaseMaxRLimitx" 45;
	setAttr ".LeftToeBaseMaxRLimity" 45;
	setAttr ".LeftToeBaseMaxRLimitz" 45;
	setAttr ".RightToeBaseTx" -8.9110879790000013;
	setAttr ".RightToeBaseTy" 1.8880791709999984;
	setAttr ".RightToeBaseTz" 12.955188090000002;
	setAttr ".RightToeBaseRx" 0.0029125929999999998;
	setAttr ".RightToeBaseRy" -0.0048003860000000002;
	setAttr ".RightToeBaseJointOrienty" 0.0048003860000000002;
	setAttr ".RightToeBaseMinRLimitx" -45;
	setAttr ".RightToeBaseMinRLimity" -45;
	setAttr ".RightToeBaseMinRLimitz" -45;
	setAttr ".RightToeBaseMaxRLimitx" 45;
	setAttr ".RightToeBaseMaxRLimity" 45;
	setAttr ".RightToeBaseMaxRLimitz" 45;
	setAttr ".LeftShoulderTx" 7.0000004770000004;
	setAttr ".LeftShoulderTy" 146.58854679999999;
	setAttr ".LeftShoulderRz" 0.00073528200000000008;
	setAttr ".LeftShoulderMinRLimitx" -45;
	setAttr ".LeftShoulderMinRLimity" -45;
	setAttr ".LeftShoulderMinRLimitz" -45;
	setAttr ".LeftShoulderMaxRLimitx" 45;
	setAttr ".LeftShoulderMaxRLimity" 45;
	setAttr ".LeftShoulderMaxRLimitz" 45;
	setAttr ".RightShoulderTx" -6.9999995229999996;
	setAttr ".RightShoulderTy" 146.58854679999999;
	setAttr ".RightShoulderRz" -0.0023183610000000006;
	setAttr ".RightShoulderMinRLimitx" -45;
	setAttr ".RightShoulderMinRLimity" -45;
	setAttr ".RightShoulderMinRLimitz" -45;
	setAttr ".RightShoulderMaxRLimitx" 45;
	setAttr ".RightShoulderMaxRLimity" 45;
	setAttr ".RightShoulderMaxRLimitz" 45;
	setAttr ".NeckTy" 145;
	setAttr ".NeckMinRLimitx" -45;
	setAttr ".NeckMinRLimity" -45;
	setAttr ".NeckMinRLimitz" -45;
	setAttr ".NeckMaxRLimitx" 45;
	setAttr ".NeckMaxRLimity" 45;
	setAttr ".NeckMaxRLimitz" 45;
	setAttr ".LeftFingerBaseTx" 80.519743439999999;
	setAttr ".LeftFingerBaseTy" 147.08957459999999;
	setAttr ".LeftFingerBaseTz" 1.304684401;
	setAttr ".LeftFingerBaseRy" -0.0035633340000000005;
	setAttr ".RightFingerBaseTx" -80.519626680000002;
	setAttr ".RightFingerBaseTy" 147.0898718;
	setAttr ".RightFingerBaseTz" 1.305458317;
	setAttr ".RightFingerBaseRy" -2.0000646359999998;
	setAttr ".Spine1Ty" 119.66666666666667;
	setAttr ".Spine1MinRLimitx" -45;
	setAttr ".Spine1MinRLimity" -45;
	setAttr ".Spine1MinRLimitz" -45;
	setAttr ".Spine1MaxRLimitx" 45;
	setAttr ".Spine1MaxRLimity" 45;
	setAttr ".Spine1MaxRLimitz" 45;
	setAttr ".Spine2Ty" 132.33333333333334;
	setAttr ".Spine2MinRLimitx" -45;
	setAttr ".Spine2MinRLimity" -45;
	setAttr ".Spine2MinRLimitz" -45;
	setAttr ".Spine2MaxRLimitx" 45;
	setAttr ".Spine2MaxRLimity" 45;
	setAttr ".Spine2MaxRLimitz" 45;
	setAttr ".Spine3Ty" 119;
	setAttr ".Spine4Ty" 123;
	setAttr ".Spine5Ty" 127;
	setAttr ".Spine6Ty" 131;
	setAttr ".Spine7Ty" 135;
	setAttr ".Spine8Ty" 139;
	setAttr ".Spine9Ty" 143;
	setAttr ".Neck1Ty" 147;
	setAttr ".Neck2Ty" 149;
	setAttr ".Neck3Ty" 151;
	setAttr ".Neck4Ty" 153;
	setAttr ".Neck5Ty" 155;
	setAttr ".Neck6Ty" 157;
	setAttr ".Neck7Ty" 159;
	setAttr ".Neck8Ty" 161;
	setAttr ".Neck9Ty" 163;
	setAttr ".LeftUpLegRollTx" 8.9100008010000007;
	setAttr ".LeftUpLegRollTy" 70.997711179999996;
	setAttr ".LeftLegRollTx" 8.9100008010000007;
	setAttr ".LeftLegRollTy" 26.759407039999999;
	setAttr ".RightUpLegRollTx" -8.9100035169999998;
	setAttr ".RightUpLegRollTy" 70.997711179999996;
	setAttr ".RightUpLegRollRx" -0.0011371;
	setAttr ".RightLegRollTx" -8.9100025980000002;
	setAttr ".RightLegRollTy" 26.75940705;
	setAttr ".RightLegRollTz" 0.00043902399999999999;
	setAttr ".LeftArmRollTx" 32.968441489999996;
	setAttr ".LeftArmRollTy" 146.58868419999999;
	setAttr ".LeftForeArmRollTx" 61.340445039999999;
	setAttr ".LeftForeArmRollTy" 146.58868419999999;
	setAttr ".RightArmRollTx" -32.968521590000002;
	setAttr ".RightArmRollTy" 146.58898;
	setAttr ".RightForeArmRollTx" -61.340504160000002;
	setAttr ".RightForeArmRollTy" 146.58898;
	setAttr ".HipsTranslationTy" 100;
	setAttr ".LeftHandThumb1Tx" 76.058620989999994;
	setAttr ".LeftHandThumb1Ty" 145.79018170000001;
	setAttr ".LeftHandThumb1Tz" 4.2824339670000002;
	setAttr ".LeftHandThumb1JointOrientz" 9.7062825972397362e-20;
	setAttr ".LeftHandThumb1MinRLimitx" -45;
	setAttr ".LeftHandThumb1MinRLimity" -45;
	setAttr ".LeftHandThumb1MinRLimitz" -45;
	setAttr ".LeftHandThumb1MaxRLimitx" 45;
	setAttr ".LeftHandThumb1MaxRLimity" 45;
	setAttr ".LeftHandThumb1MaxRLimitz" 45;
	setAttr ".LeftHandThumb2Tx" 78.571210930000007;
	setAttr ".LeftHandThumb2Ty" 145.25408229999999;
	setAttr ".LeftHandThumb2Tz" 4.9898882909999998;
	setAttr ".LeftHandThumb2Rz" -0.00029786200000000008;
	setAttr ".LeftHandThumb2JointOrientz" 9.7062825972397362e-20;
	setAttr ".LeftHandThumb2MinRLimitx" -45;
	setAttr ".LeftHandThumb2MinRLimity" -45;
	setAttr ".LeftHandThumb2MinRLimitz" -45;
	setAttr ".LeftHandThumb2MaxRLimitx" 45;
	setAttr ".LeftHandThumb2MaxRLimity" 45;
	setAttr ".LeftHandThumb2MaxRLimitz" 45;
	setAttr ".LeftHandThumb3Tx" 81.114351339999985;
	setAttr ".LeftHandThumb3Ty" 145.25406910000001;
	setAttr ".LeftHandThumb3Tz" 4.989897633;
	setAttr ".LeftHandThumb3JointOrientz" 0.00029786200000000008;
	setAttr ".LeftHandThumb3MinRLimitx" -45;
	setAttr ".LeftHandThumb3MinRLimity" -45;
	setAttr ".LeftHandThumb3MinRLimitz" -45;
	setAttr ".LeftHandThumb3MaxRLimitx" 45;
	setAttr ".LeftHandThumb3MaxRLimity" 45;
	setAttr ".LeftHandThumb3MaxRLimitz" 45;
	setAttr ".LeftHandThumb4Tx" 83.78109748;
	setAttr ".LeftHandThumb4Ty" 145.254072;
	setAttr ".LeftHandThumb4Tz" 4.9898894220000001;
	setAttr ".LeftHandThumb4MinRLimitx" -45;
	setAttr ".LeftHandThumb4MinRLimity" -45;
	setAttr ".LeftHandThumb4MinRLimitz" -45;
	setAttr ".LeftHandThumb4MaxRLimitx" 45;
	setAttr ".LeftHandThumb4MaxRLimity" 45;
	setAttr ".LeftHandThumb4MaxRLimitz" 45;
	setAttr ".LeftHandIndex1Tx" 80.531840860000003;
	setAttr ".LeftHandIndex1Ty" 146.7884134;
	setAttr ".LeftHandIndex1Tz" 3.4716694160000001;
	setAttr ".LeftHandIndex1Ry" -1.9999999850000005;
	setAttr ".LeftHandIndex1Rz" -0.00029934100000000017;
	setAttr ".LeftHandIndex1Sx" 0.99999999999999989;
	setAttr ".LeftHandIndex1Sz" 0.99999999999998335;
	setAttr ".LeftHandIndex1JointOrientz" 9.7062825972397362e-20;
	setAttr ".LeftHandIndex1MinRLimitx" -45;
	setAttr ".LeftHandIndex1MinRLimity" -45;
	setAttr ".LeftHandIndex1MinRLimitz" -45;
	setAttr ".LeftHandIndex1MaxRLimitx" 45;
	setAttr ".LeftHandIndex1MaxRLimity" 45;
	setAttr ".LeftHandIndex1MaxRLimitz" 45;
	setAttr ".LeftHandIndex2Tx" 84.75459545999999;
	setAttr ".LeftHandIndex2Ty" 146.7883913;
	setAttr ".LeftHandIndex2Tz" 3.6188684349999996;
	setAttr ".LeftHandIndex2Ry" -1.9999999850000001;
	setAttr ".LeftHandIndex2Rz" -0.00029934100000000006;
	setAttr ".LeftHandIndex2Sx" 0.99999999999999989;
	setAttr ".LeftHandIndex2Sz" 0.99999999999998335;
	setAttr ".LeftHandIndex2JointOrientx" 1.0453217981918744e-05;
	setAttr ".LeftHandIndex2JointOrienty" 1.9999999849726942;
	setAttr ".LeftHandIndex2JointOrientz" 0.00029952346159721211;
	setAttr ".LeftHandIndex2MinRLimitx" -45;
	setAttr ".LeftHandIndex2MinRLimity" -45;
	setAttr ".LeftHandIndex2MinRLimitz" -45;
	setAttr ".LeftHandIndex2MaxRLimitx" 45;
	setAttr ".LeftHandIndex2MaxRLimity" 45;
	setAttr ".LeftHandIndex2MaxRLimitz" 45;
	setAttr ".LeftHandIndex3Tx" 87.406920910000011;
	setAttr ".LeftHandIndex3Ty" 146.7883775;
	setAttr ".LeftHandIndex3Tz" 3.711324415;
	setAttr ".LeftHandIndex3Ry" -1.9999999850000001;
	setAttr ".LeftHandIndex3Rz" -0.00029934100000000006;
	setAttr ".LeftHandIndex3Sx" 0.99999999999999989;
	setAttr ".LeftHandIndex3Sz" 0.99999999999998335;
	setAttr ".LeftHandIndex3JointOrientx" 1.0453217981918733e-05;
	setAttr ".LeftHandIndex3JointOrienty" 1.9999999849726937;
	setAttr ".LeftHandIndex3JointOrientz" 0.000299523461597212;
	setAttr ".LeftHandIndex3MinRLimitx" -45;
	setAttr ".LeftHandIndex3MinRLimity" -45;
	setAttr ".LeftHandIndex3MinRLimitz" -45;
	setAttr ".LeftHandIndex3MaxRLimitx" 45;
	setAttr ".LeftHandIndex3MaxRLimity" 45;
	setAttr ".LeftHandIndex3MaxRLimitz" 45;
	setAttr ".LeftHandIndex4Tx" 89.363955140000016;
	setAttr ".LeftHandIndex4Ty" 146.7883673;
	setAttr ".LeftHandIndex4Tz" 3.7795433149999997;
	setAttr ".LeftHandIndex4Ry" -1.9999999850000001;
	setAttr ".LeftHandIndex4Rz" -0.00029934100000000006;
	setAttr ".LeftHandIndex4Sx" 0.99999999999999989;
	setAttr ".LeftHandIndex4Sz" 0.99999999999998335;
	setAttr ".LeftHandIndex4JointOrientx" 1.0453217981918734e-05;
	setAttr ".LeftHandIndex4JointOrienty" 1.9999999849726937;
	setAttr ".LeftHandIndex4JointOrientz" 0.000299523461597212;
	setAttr ".LeftHandIndex4MinRLimitx" -45;
	setAttr ".LeftHandIndex4MinRLimity" -45;
	setAttr ".LeftHandIndex4MinRLimitz" -45;
	setAttr ".LeftHandIndex4MaxRLimitx" 45;
	setAttr ".LeftHandIndex4MaxRLimity" 45;
	setAttr ".LeftHandIndex4MaxRLimitz" 45;
	setAttr ".LeftHandMiddle1Tx" 80.519743500000004;
	setAttr ".LeftHandMiddle1Ty" 147.08957469999999;
	setAttr ".LeftHandMiddle1Tz" 1.3046843809999999;
	setAttr ".LeftHandMiddle1Ry" -0.0035633340000000013;
	setAttr ".LeftHandMiddle1Sx" 0.99999999999999989;
	setAttr ".LeftHandMiddle1Sz" 0.99999999999999989;
	setAttr ".LeftHandMiddle1JointOrientz" 9.7062825972397362e-20;
	setAttr ".LeftHandMiddle1MinRLimitx" -45;
	setAttr ".LeftHandMiddle1MinRLimity" -45;
	setAttr ".LeftHandMiddle1MinRLimitz" -45;
	setAttr ".LeftHandMiddle1MaxRLimitx" 45;
	setAttr ".LeftHandMiddle1MaxRLimity" 45;
	setAttr ".LeftHandMiddle1MaxRLimitz" 45;
	setAttr ".LeftHandMiddle2Tx" 85.382995180000009;
	setAttr ".LeftHandMiddle2Ty" 147.08957469999999;
	setAttr ".LeftHandMiddle2Tz" 1.3049868360000001;
	setAttr ".LeftHandMiddle2Ry" -0.0035633340000000005;
	setAttr ".LeftHandMiddle2Sx" 0.99999999999999989;
	setAttr ".LeftHandMiddle2Sz" 0.99999999999999989;
	setAttr ".LeftHandMiddle2JointOrientx" 6.0365226079256687e-24;
	setAttr ".LeftHandMiddle2JointOrienty" 0.0035633340000000013;
	setAttr ".LeftHandMiddle2JointOrientz" 9.7062826160108798e-20;
	setAttr ".LeftHandMiddle2MinRLimitx" -45;
	setAttr ".LeftHandMiddle2MinRLimity" -45;
	setAttr ".LeftHandMiddle2MinRLimitz" -45;
	setAttr ".LeftHandMiddle2MaxRLimitx" 45;
	setAttr ".LeftHandMiddle2MaxRLimity" 45;
	setAttr ".LeftHandMiddle2MaxRLimitz" 45;
	setAttr ".LeftHandMiddle3Tx" 88.148231789999997;
	setAttr ".LeftHandMiddle3Ty" 147.08957469999999;
	setAttr ".LeftHandMiddle3Tz" 1.305158619;
	setAttr ".LeftHandMiddle3Ry" -0.0035633340000000005;
	setAttr ".LeftHandMiddle3Sx" 0.99999999999999989;
	setAttr ".LeftHandMiddle3Sz" 0.99999999999999989;
	setAttr ".LeftHandMiddle3JointOrientx" 6.0365226079256672e-24;
	setAttr ".LeftHandMiddle3JointOrienty" 0.0035633340000000005;
	setAttr ".LeftHandMiddle3JointOrientz" 9.7062826160108798e-20;
	setAttr ".LeftHandMiddle3MinRLimitx" -45;
	setAttr ".LeftHandMiddle3MinRLimity" -45;
	setAttr ".LeftHandMiddle3MinRLimitz" -45;
	setAttr ".LeftHandMiddle3MaxRLimitx" 45;
	setAttr ".LeftHandMiddle3MaxRLimity" 45;
	setAttr ".LeftHandMiddle3MaxRLimitz" 45;
	setAttr ".LeftHandMiddle4Tx" 90.153863950000002;
	setAttr ".LeftHandMiddle4Ty" 147.08957469999999;
	setAttr ".LeftHandMiddle4Tz" 1.3052822150000003;
	setAttr ".LeftHandMiddle4Ry" -0.0035633340000000005;
	setAttr ".LeftHandMiddle4Sx" 0.99999999999999989;
	setAttr ".LeftHandMiddle4Sz" 0.99999999999999989;
	setAttr ".LeftHandMiddle4JointOrientx" 6.0365226079256672e-24;
	setAttr ".LeftHandMiddle4JointOrienty" 0.0035633340000000005;
	setAttr ".LeftHandMiddle4JointOrientz" 9.7062826160108798e-20;
	setAttr ".LeftHandMiddle4MinRLimitx" -45;
	setAttr ".LeftHandMiddle4MinRLimity" -45;
	setAttr ".LeftHandMiddle4MinRLimitz" -45;
	setAttr ".LeftHandMiddle4MaxRLimitx" 45;
	setAttr ".LeftHandMiddle4MaxRLimity" 45;
	setAttr ".LeftHandMiddle4MaxRLimitz" 45;
	setAttr ".LeftHandRing1Tx" 80.603623929999998;
	setAttr ".LeftHandRing1Ty" 146.96860380000001;
	setAttr ".LeftHandRing1Tz" -0.79315890899999997;
	setAttr ".LeftHandRing1Ry" -0.0035635289999999997;
	setAttr ".LeftHandRing1JointOrientz" 9.7062825972397362e-20;
	setAttr ".LeftHandRing1MinRLimitx" -45;
	setAttr ".LeftHandRing1MinRLimity" -45;
	setAttr ".LeftHandRing1MinRLimitz" -45;
	setAttr ".LeftHandRing1MaxRLimitx" 45;
	setAttr ".LeftHandRing1MaxRLimity" 45;
	setAttr ".LeftHandRing1MaxRLimitz" 45;
	setAttr ".LeftHandRing2Tx" 85.141382759999985;
	setAttr ".LeftHandRing2Ty" 146.96860380000001;
	setAttr ".LeftHandRing2Tz" -0.79315882000000004;
	setAttr ".LeftHandRing2Ry" -0.0035635290000000002;
	setAttr ".LeftHandRing2JointOrientx" 6.0368529507763728e-24;
	setAttr ".LeftHandRing2JointOrienty" 0.0035635289999999997;
	setAttr ".LeftHandRing2JointOrientz" 9.7062826160129358e-20;
	setAttr ".LeftHandRing2MinRLimitx" -45;
	setAttr ".LeftHandRing2MinRLimity" -45;
	setAttr ".LeftHandRing2MinRLimitz" -45;
	setAttr ".LeftHandRing2MaxRLimitx" 45;
	setAttr ".LeftHandRing2MaxRLimity" 45;
	setAttr ".LeftHandRing2MaxRLimitz" 45;
	setAttr ".LeftHandRing3Tx" 87.445908619999997;
	setAttr ".LeftHandRing3Ty" 146.96860380000001;
	setAttr ".LeftHandRing3Tz" -0.79315893700000006;
	setAttr ".LeftHandRing3Ry" -0.0035635290000000002;
	setAttr ".LeftHandRing3JointOrientx" 6.0368529507763743e-24;
	setAttr ".LeftHandRing3JointOrienty" 0.0035635290000000002;
	setAttr ".LeftHandRing3JointOrientz" 9.7062826160129358e-20;
	setAttr ".LeftHandRing3MinRLimitx" -45;
	setAttr ".LeftHandRing3MinRLimity" -45;
	setAttr ".LeftHandRing3MinRLimitz" -45;
	setAttr ".LeftHandRing3MaxRLimitx" 45;
	setAttr ".LeftHandRing3MaxRLimity" 45;
	setAttr ".LeftHandRing3MaxRLimitz" 45;
	setAttr ".LeftHandRing4Tx" 89.369255980000005;
	setAttr ".LeftHandRing4Ty" 146.96860380000001;
	setAttr ".LeftHandRing4Tz" -0.79315975400000005;
	setAttr ".LeftHandRing4Ry" -0.0035635290000000002;
	setAttr ".LeftHandRing4JointOrientx" 6.0368529507763743e-24;
	setAttr ".LeftHandRing4JointOrienty" 0.0035635290000000002;
	setAttr ".LeftHandRing4JointOrientz" 9.7062826160129358e-20;
	setAttr ".LeftHandRing4MinRLimitx" -45;
	setAttr ".LeftHandRing4MinRLimity" -45;
	setAttr ".LeftHandRing4MinRLimitz" -45;
	setAttr ".LeftHandRing4MaxRLimitx" 45;
	setAttr ".LeftHandRing4MaxRLimity" 45;
	setAttr ".LeftHandRing4MaxRLimitz" 45;
	setAttr ".LeftHandPinky1Tx" 80.592138829999996;
	setAttr ".LeftHandPinky1Ty" 146.27565720000001;
	setAttr ".LeftHandPinky1Tz" -2.4903564650000001;
	setAttr ".LeftHandPinky1Rz" 0.00076302599999999977;
	setAttr ".LeftHandPinky1JointOrientz" 9.7062825972397362e-20;
	setAttr ".LeftHandPinky1MinRLimitx" -45;
	setAttr ".LeftHandPinky1MinRLimity" -45;
	setAttr ".LeftHandPinky1MinRLimitz" -45;
	setAttr ".LeftHandPinky1MaxRLimitx" 45;
	setAttr ".LeftHandPinky1MaxRLimity" 45;
	setAttr ".LeftHandPinky1MaxRLimitz" 45;
	setAttr ".LeftHandPinky2Tx" 83.636238160000005;
	setAttr ".LeftHandPinky2Ty" 146.27569780000002;
	setAttr ".LeftHandPinky2Tz" -2.4903564650000001;
	setAttr ".LeftHandPinky2Rz" 0.00076302599999999998;
	setAttr ".LeftHandPinky2JointOrientz" -0.00076302599999999977;
	setAttr ".LeftHandPinky2MinRLimitx" -45;
	setAttr ".LeftHandPinky2MinRLimity" -45;
	setAttr ".LeftHandPinky2MinRLimitz" -45;
	setAttr ".LeftHandPinky2MaxRLimitx" 45;
	setAttr ".LeftHandPinky2MaxRLimity" 45;
	setAttr ".LeftHandPinky2MaxRLimitz" 45;
	setAttr ".LeftHandPinky3Tx" 85.610739650000014;
	setAttr ".LeftHandPinky3Ty" 146.27572409999996;
	setAttr ".LeftHandPinky3Tz" -2.4903566079999999;
	setAttr ".LeftHandPinky3Rz" 0.00076302599999999998;
	setAttr ".LeftHandPinky3JointOrientz" -0.00076302599999999998;
	setAttr ".LeftHandPinky3MinRLimitx" -45;
	setAttr ".LeftHandPinky3MinRLimity" -45;
	setAttr ".LeftHandPinky3MinRLimitz" -45;
	setAttr ".LeftHandPinky3MaxRLimitx" 45;
	setAttr ".LeftHandPinky3MaxRLimity" 45;
	setAttr ".LeftHandPinky3MaxRLimitz" 45;
	setAttr ".LeftHandPinky4Tx" 87.277354299999999;
	setAttr ".LeftHandPinky4Ty" 146.27574630000001;
	setAttr ".LeftHandPinky4Tz" -2.4903558170000002;
	setAttr ".LeftHandPinky4Rz" 0.00076302599999999998;
	setAttr ".LeftHandPinky4JointOrientz" -0.00076302599999999998;
	setAttr ".LeftHandPinky4MinRLimitx" -45;
	setAttr ".LeftHandPinky4MinRLimity" -45;
	setAttr ".LeftHandPinky4MinRLimitz" -45;
	setAttr ".LeftHandPinky4MaxRLimitx" 45;
	setAttr ".LeftHandPinky4MaxRLimity" 45;
	setAttr ".LeftHandPinky4MaxRLimitz" 45;
	setAttr ".LeftHandExtraFinger1Tx" 80.592138829999996;
	setAttr ".LeftHandExtraFinger1Ty" 146.7884134;
	setAttr ".LeftHandExtraFinger1Tz" -4.4903564649999996;
	setAttr ".LeftHandExtraFinger1Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger1Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger2Tx" 82.636238160000005;
	setAttr ".LeftHandExtraFinger2Ty" 146.7883913;
	setAttr ".LeftHandExtraFinger2Tz" -4.4903564649999996;
	setAttr ".LeftHandExtraFinger2Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger2Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger3Tx" 84.610739649999999;
	setAttr ".LeftHandExtraFinger3Ty" 146.7883775;
	setAttr ".LeftHandExtraFinger3Tz" -4.4903566079999999;
	setAttr ".LeftHandExtraFinger3Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger3Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger4Tx" 86.277354299999999;
	setAttr ".LeftHandExtraFinger4Ty" 146.7883673;
	setAttr ".LeftHandExtraFinger4Tz" -4.4903558170000002;
	setAttr ".LeftHandExtraFinger4Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger4Rz" -0.00029934100000000001;
	setAttr ".RightHandThumb1Tx" -76.058242059999998;
	setAttr ".RightHandThumb1Ty" 145.7904806;
	setAttr ".RightHandThumb1Tz" 4.2828147379999999;
	setAttr ".RightHandThumb1JointOrientz" -3.8825130388958945e-19;
	setAttr ".RightHandThumb1MinRLimitx" -45;
	setAttr ".RightHandThumb1MinRLimity" -45;
	setAttr ".RightHandThumb1MinRLimitz" -45;
	setAttr ".RightHandThumb1MaxRLimitx" 45;
	setAttr ".RightHandThumb1MaxRLimity" 45;
	setAttr ".RightHandThumb1MaxRLimitz" 45;
	setAttr ".RightHandThumb2Tx" -78.570769569999996;
	setAttr ".RightHandThumb2Ty" 145.25438170000001;
	setAttr ".RightHandThumb2Tz" 4.9904913879999997;
	setAttr ".RightHandThumb2Rz" -0.00060208599999999951;
	setAttr ".RightHandThumb2JointOrientz" -3.8825130388958945e-19;
	setAttr ".RightHandThumb2MinRLimitx" -45;
	setAttr ".RightHandThumb2MinRLimity" -45;
	setAttr ".RightHandThumb2MinRLimitz" -45;
	setAttr ".RightHandThumb2MaxRLimitx" 45;
	setAttr ".RightHandThumb2MaxRLimity" 45;
	setAttr ".RightHandThumb2MaxRLimitz" 45;
	setAttr ".RightHandThumb3Tx" -81.112358929999985;
	setAttr ".RightHandThumb3Ty" 145.25440850000001;
	setAttr ".RightHandThumb3Tz" 5.0793117030000001;
	setAttr ".RightHandThumb3Rz" -0.00039149399999999993;
	setAttr ".RightHandThumb3JointOrientz" 0.00060208599999999951;
	setAttr ".RightHandThumb3MinRLimitx" -45;
	setAttr ".RightHandThumb3MinRLimity" -45;
	setAttr ".RightHandThumb3MinRLimitz" -45;
	setAttr ".RightHandThumb3MaxRLimitx" 45;
	setAttr ".RightHandThumb3MaxRLimity" 45;
	setAttr ".RightHandThumb3MaxRLimitz" 45;
	setAttr ".RightHandThumb4Tx" -83.777478689999995;
	setAttr ".RightHandThumb4Ty" 145.25442679999998;
	setAttr ".RightHandThumb4Tz" 5.1724490200000011;
	setAttr ".RightHandThumb4Rz" -0.00039149399999999999;
	setAttr ".RightHandThumb4JointOrientz" 0.00039149399999999993;
	setAttr ".RightHandThumb4MinRLimitx" -45;
	setAttr ".RightHandThumb4MinRLimity" -45;
	setAttr ".RightHandThumb4MinRLimitz" -45;
	setAttr ".RightHandThumb4MaxRLimitx" 45;
	setAttr ".RightHandThumb4MaxRLimity" 45;
	setAttr ".RightHandThumb4MaxRLimitz" 45;
	setAttr ".RightHandIndex1Tx" -80.531533929999995;
	setAttr ".RightHandIndex1Ty" 146.78871240000001;
	setAttr ".RightHandIndex1Tz" 3.4724442959999999;
	setAttr ".RightHandIndex1Ry" -2.0000646579999999;
	setAttr ".RightHandIndex1Sx" 0.99999999999999989;
	setAttr ".RightHandIndex1Sz" 0.99999999999999989;
	setAttr ".RightHandIndex1JointOrientz" -3.8825130388958945e-19;
	setAttr ".RightHandIndex1MinRLimitx" -45;
	setAttr ".RightHandIndex1MinRLimity" -45;
	setAttr ".RightHandIndex1MinRLimitz" -45;
	setAttr ".RightHandIndex1MaxRLimitx" 45;
	setAttr ".RightHandIndex1MaxRLimity" 45;
	setAttr ".RightHandIndex1MaxRLimitz" 45;
	setAttr ".RightHandIndex2Tx" -84.754284150000004;
	setAttr ".RightHandIndex2Ty" 146.7887121;
	setAttr ".RightHandIndex2Tz" 3.3250925079999996;
	setAttr ".RightHandIndex2Ry" -2.0000646359999998;
	setAttr ".RightHandIndex2Sx" 0.99999999999999989;
	setAttr ".RightHandIndex2Sz" 0.99999999999999989;
	setAttr ".RightHandIndex2JointOrientx" -1.355847296196041e-20;
	setAttr ".RightHandIndex2JointOrienty" 2.0000646579999999;
	setAttr ".RightHandIndex2JointOrientz" -3.8848797556813322e-19;
	setAttr ".RightHandIndex2MinRLimitx" -45;
	setAttr ".RightHandIndex2MinRLimity" -45;
	setAttr ".RightHandIndex2MinRLimitz" -45;
	setAttr ".RightHandIndex2MaxRLimitx" 45;
	setAttr ".RightHandIndex2MaxRLimity" 45;
	setAttr ".RightHandIndex2MaxRLimitz" 45;
	setAttr ".RightHandIndex3Tx" -87.406606950000011;
	setAttr ".RightHandIndex3Ty" 146.78871179999996;
	setAttr ".RightHandIndex3Tz" 3.232540366999999;
	setAttr ".RightHandIndex3Ry" -2.0000646359999998;
	setAttr ".RightHandIndex3Sx" 0.99999999999999989;
	setAttr ".RightHandIndex3Sz" 0.99999999999999989;
	setAttr ".RightHandIndex3JointOrientx" -1.3558472812700803e-20;
	setAttr ".RightHandIndex3JointOrienty" 2.0000646359999998;
	setAttr ".RightHandIndex3JointOrientz" -3.8848797556292402e-19;
	setAttr ".RightHandIndex3MinRLimitx" -45;
	setAttr ".RightHandIndex3MinRLimity" -45;
	setAttr ".RightHandIndex3MinRLimitz" -45;
	setAttr ".RightHandIndex3MaxRLimitx" 45;
	setAttr ".RightHandIndex3MaxRLimity" 45;
	setAttr ".RightHandIndex3MaxRLimitz" 45;
	setAttr ".RightHandIndex4Tx" -89.363639170000013;
	setAttr ".RightHandIndex4Ty" 146.78871169999996;
	setAttr ".RightHandIndex4Tz" 3.164250215;
	setAttr ".RightHandIndex4Ry" -2.0000646359999998;
	setAttr ".RightHandIndex4Sx" 0.99999999999999989;
	setAttr ".RightHandIndex4Sz" 0.99999999999999989;
	setAttr ".RightHandIndex4JointOrientx" -1.3558472812700803e-20;
	setAttr ".RightHandIndex4JointOrienty" 2.0000646359999998;
	setAttr ".RightHandIndex4JointOrientz" -3.8848797556292402e-19;
	setAttr ".RightHandIndex4MinRLimitx" -45;
	setAttr ".RightHandIndex4MinRLimity" -45;
	setAttr ".RightHandIndex4MinRLimitz" -45;
	setAttr ".RightHandIndex4MaxRLimitx" 45;
	setAttr ".RightHandIndex4MaxRLimity" 45;
	setAttr ".RightHandIndex4MaxRLimitz" 45;
	setAttr ".RightHandMiddle1Tx" -80.519627299999996;
	setAttr ".RightHandMiddle1Ty" 147.0898718;
	setAttr ".RightHandMiddle1Tz" 1.305458427;
	setAttr ".RightHandMiddle1Ry" -2.0000646579999999;
	setAttr ".RightHandMiddle1Sx" 0.99999999999999989;
	setAttr ".RightHandMiddle1Sz" 0.99999999999999989;
	setAttr ".RightHandMiddle1JointOrientz" -3.8825130388958945e-19;
	setAttr ".RightHandMiddle1MinRLimitx" -45;
	setAttr ".RightHandMiddle1MinRLimity" -45;
	setAttr ".RightHandMiddle1MinRLimitz" -45;
	setAttr ".RightHandMiddle1MaxRLimitx" 45;
	setAttr ".RightHandMiddle1MaxRLimity" 45;
	setAttr ".RightHandMiddle1MaxRLimitz" 45;
	setAttr ".RightHandMiddle2Tx" -85.379921790000012;
	setAttr ".RightHandMiddle2Ty" 147.08987139999996;
	setAttr ".RightHandMiddle2Tz" 1.1358596750000001;
	setAttr ".RightHandMiddle2Ry" -2.0000646359999998;
	setAttr ".RightHandMiddle2Sx" 0.99999999999999989;
	setAttr ".RightHandMiddle2Sz" 0.99999999999999989;
	setAttr ".RightHandMiddle2JointOrientx" -1.355847296196041e-20;
	setAttr ".RightHandMiddle2JointOrienty" 2.0000646579999999;
	setAttr ".RightHandMiddle2JointOrientz" -3.8848797556813322e-19;
	setAttr ".RightHandMiddle2MinRLimitx" -45;
	setAttr ".RightHandMiddle2MinRLimity" -45;
	setAttr ".RightHandMiddle2MinRLimitz" -45;
	setAttr ".RightHandMiddle2MaxRLimitx" 45;
	setAttr ".RightHandMiddle2MaxRLimity" 45;
	setAttr ".RightHandMiddle2MaxRLimitz" 45;
	setAttr ".RightHandMiddle3Tx" -88.143476890000017;
	setAttr ".RightHandMiddle3Ty" 147.0898712;
	setAttr ".RightHandMiddle3Tz" 1.0394261130000002;
	setAttr ".RightHandMiddle3Ry" -2.0000646359999998;
	setAttr ".RightHandMiddle3Sx" 0.99999999999999989;
	setAttr ".RightHandMiddle3Sz" 0.99999999999999989;
	setAttr ".RightHandMiddle3JointOrientx" -1.3558472812700803e-20;
	setAttr ".RightHandMiddle3JointOrienty" 2.0000646359999998;
	setAttr ".RightHandMiddle3JointOrientz" -3.8848797556292402e-19;
	setAttr ".RightHandMiddle3MinRLimitx" -45;
	setAttr ".RightHandMiddle3MinRLimity" -45;
	setAttr ".RightHandMiddle3MinRLimitz" -45;
	setAttr ".RightHandMiddle3MaxRLimitx" 45;
	setAttr ".RightHandMiddle3MaxRLimity" 45;
	setAttr ".RightHandMiddle3MaxRLimitz" 45;
	setAttr ".RightHandMiddle4Tx" -90.147889570000004;
	setAttr ".RightHandMiddle4Ty" 147.089871;
	setAttr ".RightHandMiddle4Tz" 0.96948263799999956;
	setAttr ".RightHandMiddle4Ry" -2.0000646359999998;
	setAttr ".RightHandMiddle4Sx" 0.99999999999999989;
	setAttr ".RightHandMiddle4Sz" 0.99999999999999989;
	setAttr ".RightHandMiddle4JointOrientx" -1.3558472812700803e-20;
	setAttr ".RightHandMiddle4JointOrienty" 2.0000646359999998;
	setAttr ".RightHandMiddle4JointOrientz" -3.8848797556292402e-19;
	setAttr ".RightHandMiddle4MinRLimitx" -45;
	setAttr ".RightHandMiddle4MinRLimity" -45;
	setAttr ".RightHandMiddle4MinRLimitz" -45;
	setAttr ".RightHandMiddle4MaxRLimitx" 45;
	setAttr ".RightHandMiddle4MaxRLimity" 45;
	setAttr ".RightHandMiddle4MaxRLimitz" 45;
	setAttr ".RightHandRing1Tx" -80.603693699999994;
	setAttr ".RightHandRing1Ty" 146.968899;
	setAttr ".RightHandRing1Tz" -0.79237675600000002;
	setAttr ".RightHandRing1Ry" -2.0000646579999999;
	setAttr ".RightHandRing1Sx" 0.99999999999999989;
	setAttr ".RightHandRing1Sz" 0.99999999999999989;
	setAttr ".RightHandRing1JointOrientz" -3.8825130388958945e-19;
	setAttr ".RightHandRing1MinRLimitx" -45;
	setAttr ".RightHandRing1MinRLimity" -45;
	setAttr ".RightHandRing1MinRLimitz" -45;
	setAttr ".RightHandRing1MaxRLimitx" 45;
	setAttr ".RightHandRing1MaxRLimity" 45;
	setAttr ".RightHandRing1MaxRLimitz" 45;
	setAttr ".RightHandRing2Tx" -85.138693310000008;
	setAttr ".RightHandRing2Ty" 146.96889859999996;
	setAttr ".RightHandRing2Tz" -0.95062442800000047;
	setAttr ".RightHandRing2Ry" -2.0000646359999998;
	setAttr ".RightHandRing2Sx" 0.99999999999999989;
	setAttr ".RightHandRing2Sz" 0.99999999999999989;
	setAttr ".RightHandRing2JointOrientx" -1.355847296196041e-20;
	setAttr ".RightHandRing2JointOrienty" 2.0000646579999999;
	setAttr ".RightHandRing2JointOrientz" -3.8848797556813322e-19;
	setAttr ".RightHandRing2MinRLimitx" -45;
	setAttr ".RightHandRing2MinRLimity" -45;
	setAttr ".RightHandRing2MinRLimitz" -45;
	setAttr ".RightHandRing2MaxRLimitx" 45;
	setAttr ".RightHandRing2MaxRLimity" 45;
	setAttr ".RightHandRing2MaxRLimitz" 45;
	setAttr ".RightHandRing3Tx" -87.441817880000002;
	setAttr ".RightHandRing3Ty" 146.9688984;
	setAttr ".RightHandRing3Tz" -1.0309913800000003;
	setAttr ".RightHandRing3Ry" -2.0000646359999998;
	setAttr ".RightHandRing3Sx" 0.99999999999999989;
	setAttr ".RightHandRing3Sz" 0.99999999999999989;
	setAttr ".RightHandRing3JointOrientx" -1.3558472812700803e-20;
	setAttr ".RightHandRing3JointOrienty" 2.0000646359999998;
	setAttr ".RightHandRing3JointOrientz" -3.8848797556292402e-19;
	setAttr ".RightHandRing3MinRLimitx" -45;
	setAttr ".RightHandRing3MinRLimity" -45;
	setAttr ".RightHandRing3MinRLimitz" -45;
	setAttr ".RightHandRing3MaxRLimitx" 45;
	setAttr ".RightHandRing3MaxRLimity" 45;
	setAttr ".RightHandRing3MaxRLimitz" 45;
	setAttr ".RightHandRing4Tx" -89.363995800000012;
	setAttr ".RightHandRing4Ty" 146.96889830000001;
	setAttr ".RightHandRing4Tz" -1.0980652959999999;
	setAttr ".RightHandRing4Ry" -2.0000646359999998;
	setAttr ".RightHandRing4Sx" 0.99999999999999989;
	setAttr ".RightHandRing4Sz" 0.99999999999999989;
	setAttr ".RightHandRing4JointOrientx" -1.3558472812700803e-20;
	setAttr ".RightHandRing4JointOrienty" 2.0000646359999998;
	setAttr ".RightHandRing4JointOrientz" -3.8848797556292402e-19;
	setAttr ".RightHandRing4MinRLimitx" -45;
	setAttr ".RightHandRing4MinRLimity" -45;
	setAttr ".RightHandRing4MinRLimitz" -45;
	setAttr ".RightHandRing4MaxRLimitx" 45;
	setAttr ".RightHandRing4MaxRLimity" 45;
	setAttr ".RightHandRing4MaxRLimitz" 45;
	setAttr ".RightHandPinky1Tx" -80.592357370000002;
	setAttr ".RightHandPinky1Ty" 146.2759509;
	setAttr ".RightHandPinky1Tz" -2.4895741939999998;
	setAttr ".RightHandPinky1Ry" -2.0000646580000003;
	setAttr ".RightHandPinky1Rz" 0.001241215000000001;
	setAttr ".RightHandPinky1Sx" 0.99999999999999989;
	setAttr ".RightHandPinky1Sy" 0.99999999999999989;
	setAttr ".RightHandPinky1Sz" 0.99999999999971412;
	setAttr ".RightHandPinky1JointOrientz" -3.8825130388958945e-19;
	setAttr ".RightHandPinky1MinRLimitx" -45;
	setAttr ".RightHandPinky1MinRLimity" -45;
	setAttr ".RightHandPinky1MinRLimitz" -45;
	setAttr ".RightHandPinky1MaxRLimitx" 45;
	setAttr ".RightHandPinky1MaxRLimity" 45;
	setAttr ".RightHandPinky1MaxRLimitz" 45;
	setAttr ".RightHandPinky2Tx" -83.638299989999993;
	setAttr ".RightHandPinky2Ty" 146.27588489999999;
	setAttr ".RightHandPinky2Tz" -2.5958615950000006;
	setAttr ".RightHandPinky2Ry" -2.0000646360000007;
	setAttr ".RightHandPinky2Rz" 0.0012412150000000002;
	setAttr ".RightHandPinky2Sx" 0.99999999999999989;
	setAttr ".RightHandPinky2Sy" 0.99999999999999989;
	setAttr ".RightHandPinky2Sz" 0.99999999999971412;
	setAttr ".RightHandPinky2JointOrientx" -4.3345585314366405e-05;
	setAttr ".RightHandPinky2JointOrienty" 2.0000646575304963;
	setAttr ".RightHandPinky2JointOrientz" -0.0012419716244709271;
	setAttr ".RightHandPinky2MinRLimitx" -45;
	setAttr ".RightHandPinky2MinRLimity" -45;
	setAttr ".RightHandPinky2MinRLimitz" -45;
	setAttr ".RightHandPinky2MaxRLimitx" 45;
	setAttr ".RightHandPinky2MaxRLimity" 45;
	setAttr ".RightHandPinky2MaxRLimitz" 45;
	setAttr ".RightHandPinky3Tx" -85.613997130000016;
	setAttr ".RightHandPinky3Ty" 146.27584210000003;
	setAttr ".RightHandPinky3Tz" -2.6648030450000006;
	setAttr ".RightHandPinky3Ry" -2.0000646359999998;
	setAttr ".RightHandPinky3Rz" 0.0012412150000000002;
	setAttr ".RightHandPinky3Sx" 0.99999999999999989;
	setAttr ".RightHandPinky3Sy" 0.99999999999999989;
	setAttr ".RightHandPinky3Sz" 0.99999999999971412;
	setAttr ".RightHandPinky3JointOrientx" -4.3345584837192786e-05;
	setAttr ".RightHandPinky3JointOrienty" 2.0000646355304967;
	setAttr ".RightHandPinky3JointOrientz" -0.0012419716244542725;
	setAttr ".RightHandPinky3MinRLimitx" -45;
	setAttr ".RightHandPinky3MinRLimity" -45;
	setAttr ".RightHandPinky3MinRLimitz" -45;
	setAttr ".RightHandPinky3MaxRLimitx" 45;
	setAttr ".RightHandPinky3MaxRLimity" 45;
	setAttr ".RightHandPinky3MaxRLimitz" 45;
	setAttr ".RightHandPinky4Tx" -87.281620980000014;
	setAttr ".RightHandPinky4Ty" 146.27580589999999;
	setAttr ".RightHandPinky4Tz" -2.7229943640000003;
	setAttr ".RightHandPinky4Ry" -2.0000646359999998;
	setAttr ".RightHandPinky4Rz" 0.0012412150000000002;
	setAttr ".RightHandPinky4Sx" 0.99999999999999989;
	setAttr ".RightHandPinky4Sy" 0.99999999999999989;
	setAttr ".RightHandPinky4Sz" 0.99999999999971412;
	setAttr ".RightHandPinky4JointOrientx" -4.3345584837192779e-05;
	setAttr ".RightHandPinky4JointOrienty" 2.0000646355304958;
	setAttr ".RightHandPinky4JointOrientz" -0.0012419716244542725;
	setAttr ".RightHandPinky4MinRLimitx" -45;
	setAttr ".RightHandPinky4MinRLimity" -45;
	setAttr ".RightHandPinky4MinRLimitz" -45;
	setAttr ".RightHandPinky4MaxRLimitx" 45;
	setAttr ".RightHandPinky4MaxRLimity" 45;
	setAttr ".RightHandPinky4MaxRLimitz" 45;
	setAttr ".RightHandExtraFinger1Tx" -80.592357370000002;
	setAttr ".RightHandExtraFinger1Ty" 146.78871240000001;
	setAttr ".RightHandExtraFinger1Tz" -4.4895741940000002;
	setAttr ".RightHandExtraFinger1Ry" -2.0000646579999999;
	setAttr ".RightHandExtraFinger2Tx" -82.638299989999993;
	setAttr ".RightHandExtraFinger2Ty" 146.7887121;
	setAttr ".RightHandExtraFinger2Tz" -4.5958615949999997;
	setAttr ".RightHandExtraFinger2Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger3Tx" -84.613997130000001;
	setAttr ".RightHandExtraFinger3Ty" 146.78871179999999;
	setAttr ".RightHandExtraFinger3Tz" -4.6648030450000002;
	setAttr ".RightHandExtraFinger3Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger4Tx" -86.28162098;
	setAttr ".RightHandExtraFinger4Ty" 146.78871169999999;
	setAttr ".RightHandExtraFinger4Tz" -4.7229943639999998;
	setAttr ".RightHandExtraFinger4Ry" -2.0000646359999998;
	setAttr ".LeftFootThumb1Tx" 6.18422217;
	setAttr ".LeftFootThumb1Ty" 4.9992492679999998;
	setAttr ".LeftFootThumb1Tz" 1.930123209;
	setAttr ".LeftFootThumb2Tx" 4.551409713;
	setAttr ".LeftFootThumb2Ty" 2.6643834059999998;
	setAttr ".LeftFootThumb2Tz" 3.591937658;
	setAttr ".LeftFootThumb3Tx" 3.4619466889999999;
	setAttr ".LeftFootThumb3Ty" 1.8880788850000001;
	setAttr ".LeftFootThumb3Tz" 6.4001420700000002;
	setAttr ".LeftFootThumb4Tx" 3.4619466999999999;
	setAttr ".LeftFootThumb4Ty" 1.8880788550000001;
	setAttr ".LeftFootThumb4Tz" 9.6971958839999992;
	setAttr ".LeftFootIndex1Tx" 7.1105199680000002;
	setAttr ".LeftFootIndex1Ty" 1.888079117;
	setAttr ".LeftFootIndex1Tz" 12.9547209;
	setAttr ".LeftFootIndex2Tx" 7.1105199749999999;
	setAttr ".LeftFootIndex2Ty" 1.8880790999999999;
	setAttr ".LeftFootIndex2Tz" 14.82972745;
	setAttr ".LeftFootIndex3Tx" 7.1105199810000004;
	setAttr ".LeftFootIndex3Ty" 1.888079083;
	setAttr ".LeftFootIndex3Tz" 16.76314442;
	setAttr ".LeftFootIndex4Tx" 7.1105199880000001;
	setAttr ".LeftFootIndex4Ty" 1.8880790649999999;
	setAttr ".LeftFootIndex4Tz" 18.850666449999999;
	setAttr ".LeftFootMiddle1Tx" 8.9167242489999996;
	setAttr ".LeftFootMiddle1Ty" 1.888079163;
	setAttr ".LeftFootMiddle1Tz" 12.9547209;
	setAttr ".LeftFootMiddle2Tx" 8.9167242550000001;
	setAttr ".LeftFootMiddle2Ty" 1.888079147;
	setAttr ".LeftFootMiddle2Tz" 14.82860045;
	setAttr ".LeftFootMiddle3Tx" 8.9167242610000006;
	setAttr ".LeftFootMiddle3Ty" 1.888079131;
	setAttr ".LeftFootMiddle3Tz" 16.64971237;
	setAttr ".LeftFootMiddle4Tx" 8.9167242669999993;
	setAttr ".LeftFootMiddle4Ty" 1.8880791139999999;
	setAttr ".LeftFootMiddle4Tz" 18.565581959999999;
	setAttr ".LeftFootRing1Tx" 10.723903740000001;
	setAttr ".LeftFootRing1Ty" 1.888079211;
	setAttr ".LeftFootRing1Tz" 12.9547209;
	setAttr ".LeftFootRing2Tx" 10.723903740000001;
	setAttr ".LeftFootRing2Ty" 1.888079195;
	setAttr ".LeftFootRing2Tz" 14.71345226;
	setAttr ".LeftFootRing3Tx" 10.72390375;
	setAttr ".LeftFootRing3Ty" 1.8880791800000001;
	setAttr ".LeftFootRing3Tz" 16.472174209999999;
	setAttr ".LeftFootRing4Tx" 10.723903760000001;
	setAttr ".LeftFootRing4Ty" 1.8880791640000001;
	setAttr ".LeftFootRing4Tz" 18.27484922;
	setAttr ".LeftFootPinky1Tx" 12.52979668;
	setAttr ".LeftFootPinky1Ty" 1.888079257;
	setAttr ".LeftFootPinky1Tz" 12.9547209;
	setAttr ".LeftFootPinky2Tx" 12.52979669;
	setAttr ".LeftFootPinky2Ty" 1.8880792420000001;
	setAttr ".LeftFootPinky2Tz" 14.5796458;
	setAttr ".LeftFootPinky3Tx" 12.52979669;
	setAttr ".LeftFootPinky3Ty" 1.8880792289999999;
	setAttr ".LeftFootPinky3Tz" 16.143599309999999;
	setAttr ".LeftFootPinky4Tx" 12.5297967;
	setAttr ".LeftFootPinky4Ty" 1.8880792129999999;
	setAttr ".LeftFootPinky4Tz" 17.861196199999998;
	setAttr ".LeftFootExtraFinger1Tx" 5.0860939849999998;
	setAttr ".LeftFootExtraFinger1Ty" 1.888079254;
	setAttr ".LeftFootExtraFinger1Tz" 12.9547209;
	setAttr ".LeftFootExtraFinger2Tx" 5.0860939910000003;
	setAttr ".LeftFootExtraFinger2Ty" 1.888079236;
	setAttr ".LeftFootExtraFinger2Tz" 14.94401483;
	setAttr ".LeftFootExtraFinger3Tx" 5.0860939979999999;
	setAttr ".LeftFootExtraFinger3Ty" 1.8880792179999999;
	setAttr ".LeftFootExtraFinger3Tz" 16.99182682;
	setAttr ".LeftFootExtraFinger4Tx" 5.0860940049999996;
	setAttr ".LeftFootExtraFinger4Ty" 1.8880791990000001;
	setAttr ".LeftFootExtraFinger4Tz" 19.0793827;
	setAttr ".RightFootThumb1Tx" -6.180000014;
	setAttr ".RightFootThumb1Ty" 4.9992496019999999;
	setAttr ".RightFootThumb1Tz" 1.930123112;
	setAttr ".RightFootThumb2Tx" -4.5499999820000001;
	setAttr ".RightFootThumb2Ty" 2.6643838419999999;
	setAttr ".RightFootThumb2Tz" 3.5919375690000002;
	setAttr ".RightFootThumb3Tx" -3.4599999860000001;
	setAttr ".RightFootThumb3Ty" 1.888079335;
	setAttr ".RightFootThumb3Tz" 6.4001419850000003;
	setAttr ".RightFootThumb4Tx" -3.4599999860000001;
	setAttr ".RightFootThumb4Ty" 1.8880793090000001;
	setAttr ".RightFootThumb4Tz" 9.6971957989999993;
	setAttr ".RightFootIndex1Tx" -7.1099999839999999;
	setAttr ".RightFootIndex1Ty" 1.888079262;
	setAttr ".RightFootIndex1Tz" 12.95472064;
	setAttr ".RightFootIndex2Tx" -7.1099999839999999;
	setAttr ".RightFootIndex2Ty" 1.8880792479999999;
	setAttr ".RightFootIndex2Tz" 14.82972719;
	setAttr ".RightFootIndex3Tx" -7.1099999839999999;
	setAttr ".RightFootIndex3Ty" 1.8880792340000001;
	setAttr ".RightFootIndex3Tz" 16.76314416;
	setAttr ".RightFootIndex4Tx" -7.1099999839999999;
	setAttr ".RightFootIndex4Ty" 1.8880792179999999;
	setAttr ".RightFootIndex4Tz" 18.850666189999998;
	setAttr ".RightFootMiddle1Tx" -8.92;
	setAttr ".RightFootMiddle1Ty" 1.8880792049999999;
	setAttr ".RightFootMiddle1Tz" 12.954720630000001;
	setAttr ".RightFootMiddle2Tx" -8.92;
	setAttr ".RightFootMiddle2Ty" 1.8880791910000001;
	setAttr ".RightFootMiddle2Tz" 14.82860018;
	setAttr ".RightFootMiddle3Tx" -8.92;
	setAttr ".RightFootMiddle3Ty" 1.8880791770000001;
	setAttr ".RightFootMiddle3Tz" 16.649712099999999;
	setAttr ".RightFootMiddle4Tx" -8.92;
	setAttr ".RightFootMiddle4Ty" 1.8880791619999999;
	setAttr ".RightFootMiddle4Tz" 18.565581689999998;
	setAttr ".RightFootRing1Tx" -10.72;
	setAttr ".RightFootRing1Ty" 1.8880791610000001;
	setAttr ".RightFootRing1Tz" 12.95472062;
	setAttr ".RightFootRing2Tx" -10.72;
	setAttr ".RightFootRing2Ty" 1.888079147;
	setAttr ".RightFootRing2Tz" 14.713451989999999;
	setAttr ".RightFootRing3Tx" -10.72;
	setAttr ".RightFootRing3Ty" 1.888079134;
	setAttr ".RightFootRing3Tz" 16.472173940000001;
	setAttr ".RightFootRing4Tx" -10.72;
	setAttr ".RightFootRing4Ty" 1.88807912;
	setAttr ".RightFootRing4Tz" 18.274848949999999;
	setAttr ".RightFootPinky1Tx" -12.530000060000001;
	setAttr ".RightFootPinky1Ty" 1.8880791029999999;
	setAttr ".RightFootPinky1Tz" 12.95472062;
	setAttr ".RightFootPinky2Tx" -12.530000060000001;
	setAttr ".RightFootPinky2Ty" 1.888079091;
	setAttr ".RightFootPinky2Tz" 14.57964552;
	setAttr ".RightFootPinky3Tx" -12.530000060000001;
	setAttr ".RightFootPinky3Ty" 1.8880790789999999;
	setAttr ".RightFootPinky3Tz" 16.143599040000002;
	setAttr ".RightFootPinky4Tx" -12.530000060000001;
	setAttr ".RightFootPinky4Ty" 1.888079066;
	setAttr ".RightFootPinky4Tz" 17.86119592;
	setAttr ".RightFootExtraFinger1Tx" -5.0900000030000001;
	setAttr ".RightFootExtraFinger1Ty" 1.8880791260000001;
	setAttr ".RightFootExtraFinger1Tz" 12.95472064;
	setAttr ".RightFootExtraFinger2Tx" -5.0900000030000001;
	setAttr ".RightFootExtraFinger2Ty" 1.8880791109999999;
	setAttr ".RightFootExtraFinger2Tz" 14.944014579999999;
	setAttr ".RightFootExtraFinger3Tx" -5.0900000030000001;
	setAttr ".RightFootExtraFinger3Ty" 1.888079096;
	setAttr ".RightFootExtraFinger3Tz" 16.99182656;
	setAttr ".RightFootExtraFinger4Tx" -5.0900000030000001;
	setAttr ".RightFootExtraFinger4Ty" 1.88807908;
	setAttr ".RightFootExtraFinger4Tz" 19.079382450000001;
	setAttr ".LeftInHandThumbTx" 71.709864199999998;
	setAttr ".LeftInHandThumbTy" 146.58868419999999;
	setAttr ".LeftInHandIndexTx" 71.709864199999998;
	setAttr ".LeftInHandIndexTy" 146.58868419999999;
	setAttr ".LeftInHandMiddleTx" 71.709864199999998;
	setAttr ".LeftInHandMiddleTy" 146.58868419999999;
	setAttr ".LeftInHandRingTx" 71.709864199999998;
	setAttr ".LeftInHandRingTy" 146.58868419999999;
	setAttr ".LeftInHandPinkyTx" 71.709864199999998;
	setAttr ".LeftInHandPinkyTy" 146.58868419999999;
	setAttr ".LeftInHandExtraFingerTx" 71.709864199999998;
	setAttr ".LeftInHandExtraFingerTy" 146.58868419999999;
	setAttr ".RightInHandThumbTx" -71.709861489999994;
	setAttr ".RightInHandThumbTy" 146.58897870000001;
	setAttr ".RightInHandIndexTx" -71.709861489999994;
	setAttr ".RightInHandIndexTy" 146.58897870000001;
	setAttr ".RightInHandMiddleTx" -71.709861489999994;
	setAttr ".RightInHandMiddleTy" 146.58897870000001;
	setAttr ".RightInHandRingTx" -71.709861489999994;
	setAttr ".RightInHandRingTy" 146.58897870000001;
	setAttr ".RightInHandPinkyTx" -71.709861489999994;
	setAttr ".RightInHandPinkyTy" 146.58897870000001;
	setAttr ".RightInHandExtraFingerTx" -71.709861489999994;
	setAttr ".RightInHandExtraFingerTy" 146.58897870000001;
	setAttr ".LeftInFootThumbTx" 8.9100008010000007;
	setAttr ".LeftInFootThumbTy" 8.15039625;
	setAttr ".LeftInFootIndexTx" 8.9100008010000007;
	setAttr ".LeftInFootIndexTy" 8.1503963469999992;
	setAttr ".LeftInFootMiddleTx" 8.9100008010000007;
	setAttr ".LeftInFootMiddleTy" 8.1503963469999992;
	setAttr ".LeftInFootRingTx" 8.9100008010000007;
	setAttr ".LeftInFootRingTy" 8.1503963469999992;
	setAttr ".LeftInFootPinkyTx" 8.9100008010000007;
	setAttr ".LeftInFootPinkyTy" 8.1503963469999992;
	setAttr ".LeftInFootExtraFingerTx" 8.9100008010000007;
	setAttr ".LeftInFootExtraFingerTy" 8.1503963469999992;
	setAttr ".RightInFootThumbTx" -8.9100025980000002;
	setAttr ".RightInFootThumbTy" 8.1503963929999994;
	setAttr ".RightInFootThumbTz" 0.00043882099999999999;
	setAttr ".RightInFootIndexTx" -8.9100026190000001;
	setAttr ".RightInFootIndexTy" 8.1503963939999995;
	setAttr ".RightInFootIndexTz" 0.00043882099999999999;
	setAttr ".RightInFootMiddleTx" -8.9100026190000001;
	setAttr ".RightInFootMiddleTy" 8.1503963939999995;
	setAttr ".RightInFootMiddleTz" 0.00043882099999999999;
	setAttr ".RightInFootRingTx" -8.9100026190000001;
	setAttr ".RightInFootRingTy" 8.1503963939999995;
	setAttr ".RightInFootRingTz" 0.00043882099999999999;
	setAttr ".RightInFootPinkyTx" -8.9100026190000001;
	setAttr ".RightInFootPinkyTy" 8.1503963939999995;
	setAttr ".RightInFootPinkyTz" 0.00043882099999999999;
	setAttr ".RightInFootExtraFingerTx" -8.9100026190000001;
	setAttr ".RightInFootExtraFingerTy" 8.1503963939999995;
	setAttr ".RightInFootExtraFingerTz" 0.00043882099999999999;
	setAttr ".LeftShoulderExtraTx" 12.353625535000001;
	setAttr ".LeftShoulderExtraTy" 146.58868419999999;
	setAttr ".RightShoulderExtraTx" -12.353637216499999;
	setAttr ".RightShoulderExtraTy" 146.58898;
createNode HIKProperty2State -n "HIKproperties1";
	rename -uid "C812DC00-0017-6481-5EE2-219500000F60";
	setAttr ".OutputPropertySetState" -type "HIKPropertySetState" ;
	setAttr ".lkr" 0.60000002384185791;
	setAttr ".rkr" 0.60000002384185791;
	setAttr ".FootBottomToAnkle" 8.1503963469999974;
	setAttr ".FootBackToAnkle" 6.4773604499999999;
	setAttr ".FootMiddleToAnkle" 12.9547209;
	setAttr ".FootFrontToMiddle" 6.4773604499999999;
	setAttr ".FootInToAnkle" 6.4773604499999999;
	setAttr ".FootOutToAnkle" 6.4773604499999999;
	setAttr ".HandBottomToWrist" 3.4231841277199999;
	setAttr ".HandBackToWrist" 0.01;
	setAttr ".HandMiddleToWrist" 8.5501157939999999;
	setAttr ".HandFrontToMiddle" 8.5501157939999999;
	setAttr ".HandInToWrist" 8.5501157939999999;
	setAttr ".HandOutToWrist" 8.5501157939999999;
	setAttr ".LeftHandThumbTip" 1.0697450399124999;
	setAttr ".LeftHandIndexTip" 1.0697450399124999;
	setAttr ".LeftHandMiddleTip" 1.0697450399124999;
	setAttr ".LeftHandRingTip" 1.0697450399124999;
	setAttr ".LeftHandPinkyTip" 1.0697450399124999;
	setAttr ".LeftHandExtraFingerTip" 1.0697450399124999;
	setAttr ".RightHandThumbTip" 1.0697450399124999;
	setAttr ".RightHandIndexTip" 1.0697450399124999;
	setAttr ".RightHandMiddleTip" 1.0697450399124999;
	setAttr ".RightHandRingTip" 1.0697450399124999;
	setAttr ".RightHandPinkyTip" 1.0697450399124999;
	setAttr ".RightHandExtraFingerTip" 1.0697450399124999;
	setAttr ".LeftFootThumbTip" 1.0697450399124999;
	setAttr ".LeftFootIndexTip" 1.0697450399124999;
	setAttr ".LeftFootMiddleTip" 1.0697450399124999;
	setAttr ".LeftFootRingTip" 1.0697450399124999;
	setAttr ".LeftFootPinkyTip" 1.0697450399124999;
	setAttr ".LeftFootExtraFingerTip" 1.0697450399124999;
	setAttr ".RightFootThumbTip" 1.0697450399124999;
	setAttr ".RightFootIndexTip" 1.0697450399124999;
	setAttr ".RightFootMiddleTip" 1.0697450399124999;
	setAttr ".RightFootRingTip" 1.0697450399124999;
	setAttr ".RightFootPinkyTip" 1.0697450399124999;
	setAttr ".RightFootExtraFingerTip" 1.0697450399124999;
	setAttr ".LeftUpLegRollEx" 1;
	setAttr ".LeftLegRollEx" 1;
	setAttr ".RightUpLegRollEx" 1;
	setAttr ".RightLegRollEx" 1;
	setAttr ".LeftArmRollEx" 1;
	setAttr ".LeftForeArmRollEx" 1;
	setAttr ".RightArmRollEx" 1;
	setAttr ".RightForeArmRollEx" 1;
	setAttr ".ParamLeafLeftUpLegRoll1" 0;
	setAttr ".ParamLeafLeftLegRoll1" 0;
	setAttr ".ParamLeafRightUpLegRoll1" 0;
	setAttr ".ParamLeafRightLegRoll1" 0;
	setAttr ".ParamLeafLeftArmRoll1" 0;
	setAttr ".ParamLeafLeftForeArmRoll1" 0;
	setAttr ".ParamLeafRightArmRoll1" 0;
	setAttr ".ParamLeafRightForeArmRoll1" 0;
	setAttr ".ParamLeafLeftUpLegRoll2" 0;
	setAttr ".ParamLeafLeftLegRoll2" 0;
	setAttr ".ParamLeafRightUpLegRoll2" 0;
	setAttr ".ParamLeafRightLegRoll2" 0;
	setAttr ".ParamLeafLeftArmRoll2" 0;
	setAttr ".ParamLeafLeftForeArmRoll2" 0;
	setAttr ".ParamLeafRightArmRoll2" 0;
	setAttr ".ParamLeafRightForeArmRoll2" 0;
	setAttr ".ParamLeafLeftUpLegRoll3" 0;
	setAttr ".ParamLeafLeftLegRoll3" 0;
	setAttr ".ParamLeafRightUpLegRoll3" 0;
	setAttr ".ParamLeafRightLegRoll3" 0;
	setAttr ".ParamLeafLeftArmRoll3" 0;
	setAttr ".ParamLeafLeftForeArmRoll3" 0;
	setAttr ".ParamLeafRightArmRoll3" 0;
	setAttr ".ParamLeafRightForeArmRoll3" 0;
	setAttr ".ParamLeafLeftUpLegRoll4" 0;
	setAttr ".ParamLeafLeftLegRoll4" 0;
	setAttr ".ParamLeafRightUpLegRoll4" 0;
	setAttr ".ParamLeafRightLegRoll4" 0;
	setAttr ".ParamLeafLeftArmRoll4" 0;
	setAttr ".ParamLeafLeftForeArmRoll4" 0;
	setAttr ".ParamLeafRightArmRoll4" 0;
	setAttr ".ParamLeafRightForeArmRoll4" 0;
	setAttr ".ParamLeafLeftUpLegRoll5" 0;
	setAttr ".ParamLeafLeftLegRoll5" 0;
	setAttr ".ParamLeafRightUpLegRoll5" 0;
	setAttr ".ParamLeafRightLegRoll5" 0;
	setAttr ".ParamLeafLeftArmRoll5" 0;
	setAttr ".ParamLeafLeftForeArmRoll5" 0;
	setAttr ".ParamLeafRightArmRoll5" 0;
	setAttr ".ParamLeafRightForeArmRoll5" 0;
createNode HIKSkeletonGeneratorNode -n "HIKSkeletonGeneratorNode1";
	rename -uid "C812DC00-0017-6481-5EE2-219500000F61";
	setAttr ".ihi" 0;
	setAttr ".WantIndexFinger" yes;
	setAttr ".WantMiddleFinger" yes;
	setAttr ".WantRingFinger" yes;
	setAttr ".WantPinkyFinger" yes;
	setAttr ".WantThumb" yes;
	setAttr ".WantToeBase" yes;
	setAttr ".HipsTy" 100;
	setAttr ".LeftUpLegTx" 8.9100008010000007;
	setAttr ".LeftUpLegTy" 93.729999539999994;
	setAttr ".LeftLegTx" 8.9100008010000007;
	setAttr ".LeftLegTy" 48.851354600000001;
	setAttr ".LeftFootTx" 8.9100008010000007;
	setAttr ".LeftFootTy" 8.1503963469999992;
	setAttr ".RightUpLegTx" -8.9100008010000007;
	setAttr ".RightUpLegTy" 93.729999539999994;
	setAttr ".RightLegTx" -8.9100035169999998;
	setAttr ".RightLegTy" 48.851354600000001;
	setAttr ".RightLegTz" 0.00043902399999999999;
	setAttr ".RightFootTx" -8.9100025980000002;
	setAttr ".RightFootTy" 8.1503963509999995;
	setAttr ".RightFootTz" 0.00043902399999999999;
	setAttr ".RightFootRy" -0.0048003860000000002;
	setAttr ".SpineTy" 107;
	setAttr ".LeftArmTx" 17.707251070000002;
	setAttr ".LeftArmTy" 146.58868419999999;
	setAttr ".LeftForeArmTx" 45.012716769999997;
	setAttr ".LeftForeArmTy" 146.58868419999999;
	setAttr ".LeftHandTx" 71.709864139999993;
	setAttr ".LeftHandTy" 146.58868419999999;
	setAttr ".RightArmTx" -17.707274909999999;
	setAttr ".RightArmTy" 146.58898;
	setAttr ".RightForeArmTx" -45.012873159999998;
	setAttr ".RightForeArmTy" 146.58898;
	setAttr ".RightHandTx" -71.709861270000005;
	setAttr ".RightHandTy" 146.58897870000001;
	setAttr ".HeadTy" 165;
	setAttr ".LeftToeBaseTx" 8.9100092279999998;
	setAttr ".LeftToeBaseTy" 1.8880791539999999;
	setAttr ".LeftToeBaseTz" 12.9547209;
	setAttr ".RightToeBaseTx" -8.9110879789999995;
	setAttr ".RightToeBaseTy" 1.888079171;
	setAttr ".RightToeBaseTz" 12.95518809;
	setAttr ".RightToeBaseRx" 0.0029125930000000002;
	setAttr ".RightToeBaseRy" -0.0048003860000000002;
	setAttr ".LeftShoulderTx" 7.0000004770000004;
	setAttr ".LeftShoulderTy" 146.58854679999999;
	setAttr ".LeftShoulderRz" 0.00073528199999999997;
	setAttr ".RightShoulderTx" -6.9999995229999996;
	setAttr ".RightShoulderTy" 146.58854679999999;
	setAttr ".RightShoulderRz" -0.0023183610000000001;
	setAttr ".NeckTy" 145;
	setAttr ".LeftFingerBaseTx" 80.519743439999999;
	setAttr ".LeftFingerBaseTy" 147.08957459999999;
	setAttr ".LeftFingerBaseTz" 1.304684401;
	setAttr ".LeftFingerBaseRy" -0.0035633340000000005;
	setAttr ".RightFingerBaseTx" -80.519626680000002;
	setAttr ".RightFingerBaseTy" 147.0898718;
	setAttr ".RightFingerBaseTz" 1.305458317;
	setAttr ".RightFingerBaseRy" -2.0000646359999998;
	setAttr ".Spine1Ty" 111;
	setAttr ".Spine2Ty" 115;
	setAttr ".Spine3Ty" 119;
	setAttr ".Spine4Ty" 123;
	setAttr ".Spine5Ty" 127;
	setAttr ".Spine6Ty" 131;
	setAttr ".Spine7Ty" 135;
	setAttr ".Spine8Ty" 139;
	setAttr ".Spine9Ty" 143;
	setAttr ".Neck1Ty" 147;
	setAttr ".Neck2Ty" 149;
	setAttr ".Neck3Ty" 151;
	setAttr ".Neck4Ty" 153;
	setAttr ".Neck5Ty" 155;
	setAttr ".Neck6Ty" 157;
	setAttr ".Neck7Ty" 159;
	setAttr ".Neck8Ty" 161;
	setAttr ".Neck9Ty" 163;
	setAttr ".LeftUpLegRollTx" 8.9100008010000007;
	setAttr ".LeftUpLegRollTy" 70.997711179999996;
	setAttr ".LeftLegRollTx" 8.9100008010000007;
	setAttr ".LeftLegRollTy" 26.759407039999999;
	setAttr ".RightUpLegRollTx" -8.9100035169999998;
	setAttr ".RightUpLegRollTy" 70.997711179999996;
	setAttr ".RightUpLegRollRx" -0.0011371;
	setAttr ".RightLegRollTx" -8.9100025980000002;
	setAttr ".RightLegRollTy" 26.75940705;
	setAttr ".RightLegRollTz" 0.00043902399999999999;
	setAttr ".LeftArmRollTx" 32.968441489999996;
	setAttr ".LeftArmRollTy" 146.58868419999999;
	setAttr ".LeftForeArmRollTx" 61.340445039999999;
	setAttr ".LeftForeArmRollTy" 146.58868419999999;
	setAttr ".RightArmRollTx" -32.968521590000002;
	setAttr ".RightArmRollTy" 146.58898;
	setAttr ".RightForeArmRollTx" -61.340504160000002;
	setAttr ".RightForeArmRollTy" 146.58898;
	setAttr ".HipsTranslationTy" 100;
	setAttr ".LeftHandThumb1Tx" 76.058620989999994;
	setAttr ".LeftHandThumb1Ty" 145.79018170000001;
	setAttr ".LeftHandThumb1Tz" 4.2824339670000002;
	setAttr ".LeftHandThumb2Tx" 78.571210930000007;
	setAttr ".LeftHandThumb2Ty" 145.25408229999999;
	setAttr ".LeftHandThumb2Tz" 4.9898882909999998;
	setAttr ".LeftHandThumb2Rz" -0.00029786199999999997;
	setAttr ".LeftHandThumb3Tx" 81.114351339999999;
	setAttr ".LeftHandThumb3Ty" 145.25406910000001;
	setAttr ".LeftHandThumb3Tz" 4.989897633;
	setAttr ".LeftHandThumb4Tx" 83.78109748;
	setAttr ".LeftHandThumb4Ty" 145.254072;
	setAttr ".LeftHandThumb4Tz" 4.9898894220000001;
	setAttr ".LeftHandIndex1Tx" 80.531840860000003;
	setAttr ".LeftHandIndex1Ty" 146.7884134;
	setAttr ".LeftHandIndex1Tz" 3.4716694160000001;
	setAttr ".LeftHandIndex1Ry" -1.9999999850000001;
	setAttr ".LeftHandIndex1Rz" -0.00029934100000000001;
	setAttr ".LeftHandIndex2Tx" 84.754595460000004;
	setAttr ".LeftHandIndex2Ty" 146.7883913;
	setAttr ".LeftHandIndex2Tz" 3.618868435;
	setAttr ".LeftHandIndex2Ry" -1.9999999850000001;
	setAttr ".LeftHandIndex2Rz" -0.00029934100000000001;
	setAttr ".LeftHandIndex3Tx" 87.406920909999997;
	setAttr ".LeftHandIndex3Ty" 146.7883775;
	setAttr ".LeftHandIndex3Tz" 3.711324415;
	setAttr ".LeftHandIndex3Ry" -1.9999999850000001;
	setAttr ".LeftHandIndex3Rz" -0.00029934100000000001;
	setAttr ".LeftHandIndex4Tx" 89.363955140000002;
	setAttr ".LeftHandIndex4Ty" 146.7883673;
	setAttr ".LeftHandIndex4Tz" 3.7795433150000002;
	setAttr ".LeftHandIndex4Ry" -1.9999999850000001;
	setAttr ".LeftHandIndex4Rz" -0.00029934100000000001;
	setAttr ".LeftHandMiddle1Tx" 80.519743500000004;
	setAttr ".LeftHandMiddle1Ty" 147.08957469999999;
	setAttr ".LeftHandMiddle1Tz" 1.3046843809999999;
	setAttr ".LeftHandMiddle1Ry" -0.0035633340000000005;
	setAttr ".LeftHandMiddle2Tx" 85.382995179999995;
	setAttr ".LeftHandMiddle2Ty" 147.08957469999999;
	setAttr ".LeftHandMiddle2Tz" 1.3049868360000001;
	setAttr ".LeftHandMiddle2Ry" -0.0035633340000000005;
	setAttr ".LeftHandMiddle3Tx" 88.148231789999997;
	setAttr ".LeftHandMiddle3Ty" 147.08957469999999;
	setAttr ".LeftHandMiddle3Tz" 1.305158619;
	setAttr ".LeftHandMiddle3Ry" -0.0035633340000000005;
	setAttr ".LeftHandMiddle4Tx" 90.153863950000002;
	setAttr ".LeftHandMiddle4Ty" 147.08957469999999;
	setAttr ".LeftHandMiddle4Tz" 1.3052822150000001;
	setAttr ".LeftHandMiddle4Ry" -0.0035633340000000005;
	setAttr ".LeftHandRing1Tx" 80.603623929999998;
	setAttr ".LeftHandRing1Ty" 146.96860380000001;
	setAttr ".LeftHandRing1Tz" -0.79315890899999997;
	setAttr ".LeftHandRing1Ry" -0.0035635290000000002;
	setAttr ".LeftHandRing2Tx" 85.141382759999999;
	setAttr ".LeftHandRing2Ty" 146.96860380000001;
	setAttr ".LeftHandRing2Tz" -0.79315882000000004;
	setAttr ".LeftHandRing2Ry" -0.0035635290000000002;
	setAttr ".LeftHandRing3Tx" 87.445908619999997;
	setAttr ".LeftHandRing3Ty" 146.96860380000001;
	setAttr ".LeftHandRing3Tz" -0.79315893699999995;
	setAttr ".LeftHandRing3Ry" -0.0035635290000000002;
	setAttr ".LeftHandRing4Tx" 89.369255980000005;
	setAttr ".LeftHandRing4Ty" 146.96860380000001;
	setAttr ".LeftHandRing4Tz" -0.79315975400000005;
	setAttr ".LeftHandRing4Ry" -0.0035635290000000002;
	setAttr ".LeftHandPinky1Tx" 80.592138829999996;
	setAttr ".LeftHandPinky1Ty" 146.27565720000001;
	setAttr ".LeftHandPinky1Tz" -2.4903564650000001;
	setAttr ".LeftHandPinky1Rz" 0.00076302599999999998;
	setAttr ".LeftHandPinky2Tx" 83.636238160000005;
	setAttr ".LeftHandPinky2Ty" 146.27569779999999;
	setAttr ".LeftHandPinky2Tz" -2.4903564650000001;
	setAttr ".LeftHandPinky2Rz" 0.00076302599999999998;
	setAttr ".LeftHandPinky3Tx" 85.610739649999999;
	setAttr ".LeftHandPinky3Ty" 146.27572409999999;
	setAttr ".LeftHandPinky3Tz" -2.4903566079999999;
	setAttr ".LeftHandPinky3Rz" 0.00076302599999999998;
	setAttr ".LeftHandPinky4Tx" 87.277354299999999;
	setAttr ".LeftHandPinky4Ty" 146.27574630000001;
	setAttr ".LeftHandPinky4Tz" -2.4903558170000002;
	setAttr ".LeftHandPinky4Rz" 0.00076302599999999998;
	setAttr ".LeftHandExtraFinger1Tx" 80.592138829999996;
	setAttr ".LeftHandExtraFinger1Ty" 146.7884134;
	setAttr ".LeftHandExtraFinger1Tz" -4.4903564649999996;
	setAttr ".LeftHandExtraFinger1Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger1Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger2Tx" 82.636238160000005;
	setAttr ".LeftHandExtraFinger2Ty" 146.7883913;
	setAttr ".LeftHandExtraFinger2Tz" -4.4903564649999996;
	setAttr ".LeftHandExtraFinger2Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger2Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger3Tx" 84.610739649999999;
	setAttr ".LeftHandExtraFinger3Ty" 146.7883775;
	setAttr ".LeftHandExtraFinger3Tz" -4.4903566079999999;
	setAttr ".LeftHandExtraFinger3Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger3Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger4Tx" 86.277354299999999;
	setAttr ".LeftHandExtraFinger4Ty" 146.7883673;
	setAttr ".LeftHandExtraFinger4Tz" -4.4903558170000002;
	setAttr ".LeftHandExtraFinger4Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger4Rz" -0.00029934100000000001;
	setAttr ".RightHandThumb1Tx" -76.058242059999998;
	setAttr ".RightHandThumb1Ty" 145.7904806;
	setAttr ".RightHandThumb1Tz" 4.2828147379999999;
	setAttr ".RightHandThumb2Tx" -78.570769569999996;
	setAttr ".RightHandThumb2Ty" 145.25438170000001;
	setAttr ".RightHandThumb2Tz" 4.9904913879999997;
	setAttr ".RightHandThumb2Rz" -0.00060208600000000005;
	setAttr ".RightHandThumb3Tx" -81.112358929999999;
	setAttr ".RightHandThumb3Ty" 145.25440850000001;
	setAttr ".RightHandThumb3Tz" 5.0793117030000001;
	setAttr ".RightHandThumb3Rz" -0.00039149399999999999;
	setAttr ".RightHandThumb4Tx" -83.777478689999995;
	setAttr ".RightHandThumb4Ty" 145.2544268;
	setAttr ".RightHandThumb4Tz" 5.1724490200000002;
	setAttr ".RightHandThumb4Rz" -0.00039149399999999999;
	setAttr ".RightHandIndex1Tx" -80.531533929999995;
	setAttr ".RightHandIndex1Ty" 146.78871240000001;
	setAttr ".RightHandIndex1Tz" 3.4724442959999999;
	setAttr ".RightHandIndex1Ry" -2.0000646579999999;
	setAttr ".RightHandIndex2Tx" -84.754284150000004;
	setAttr ".RightHandIndex2Ty" 146.7887121;
	setAttr ".RightHandIndex2Tz" 3.325092508;
	setAttr ".RightHandIndex2Ry" -2.0000646359999998;
	setAttr ".RightHandIndex3Tx" -87.406606949999997;
	setAttr ".RightHandIndex3Ty" 146.78871179999999;
	setAttr ".RightHandIndex3Tz" 3.2325403669999999;
	setAttr ".RightHandIndex3Ry" -2.0000646359999998;
	setAttr ".RightHandIndex4Tx" -89.363639169999999;
	setAttr ".RightHandIndex4Ty" 146.78871169999999;
	setAttr ".RightHandIndex4Tz" 3.164250215;
	setAttr ".RightHandIndex4Ry" -2.0000646359999998;
	setAttr ".RightHandMiddle1Tx" -80.519627299999996;
	setAttr ".RightHandMiddle1Ty" 147.0898718;
	setAttr ".RightHandMiddle1Tz" 1.305458427;
	setAttr ".RightHandMiddle1Ry" -2.0000646579999999;
	setAttr ".RightHandMiddle2Tx" -85.379921789999997;
	setAttr ".RightHandMiddle2Ty" 147.08987139999999;
	setAttr ".RightHandMiddle2Tz" 1.1358596750000001;
	setAttr ".RightHandMiddle2Ry" -2.0000646359999998;
	setAttr ".RightHandMiddle3Tx" -88.143476890000002;
	setAttr ".RightHandMiddle3Ty" 147.0898712;
	setAttr ".RightHandMiddle3Tz" 1.039426113;
	setAttr ".RightHandMiddle3Ry" -2.0000646359999998;
	setAttr ".RightHandMiddle4Tx" -90.147889570000004;
	setAttr ".RightHandMiddle4Ty" 147.089871;
	setAttr ".RightHandMiddle4Tz" 0.96948263800000001;
	setAttr ".RightHandMiddle4Ry" -2.0000646359999998;
	setAttr ".RightHandRing1Tx" -80.603693699999994;
	setAttr ".RightHandRing1Ty" 146.968899;
	setAttr ".RightHandRing1Tz" -0.79237675600000002;
	setAttr ".RightHandRing1Ry" -2.0000646579999999;
	setAttr ".RightHandRing2Tx" -85.138693309999994;
	setAttr ".RightHandRing2Ty" 146.96889859999999;
	setAttr ".RightHandRing2Tz" -0.95062442800000002;
	setAttr ".RightHandRing2Ry" -2.0000646359999998;
	setAttr ".RightHandRing3Tx" -87.441817880000002;
	setAttr ".RightHandRing3Ty" 146.9688984;
	setAttr ".RightHandRing3Tz" -1.0309913799999999;
	setAttr ".RightHandRing3Ry" -2.0000646359999998;
	setAttr ".RightHandRing4Tx" -89.363995799999998;
	setAttr ".RightHandRing4Ty" 146.96889830000001;
	setAttr ".RightHandRing4Tz" -1.0980652959999999;
	setAttr ".RightHandRing4Ry" -2.0000646359999998;
	setAttr ".RightHandPinky1Tx" -80.592357370000002;
	setAttr ".RightHandPinky1Ty" 146.2759509;
	setAttr ".RightHandPinky1Tz" -2.4895741939999998;
	setAttr ".RightHandPinky1Ry" -2.0000646579999999;
	setAttr ".RightHandPinky1Rz" 0.0012412149999999999;
	setAttr ".RightHandPinky2Tx" -83.638299989999993;
	setAttr ".RightHandPinky2Ty" 146.27588489999999;
	setAttr ".RightHandPinky2Tz" -2.5958615950000001;
	setAttr ".RightHandPinky2Ry" -2.0000646359999998;
	setAttr ".RightHandPinky2Rz" 0.0012412149999999999;
	setAttr ".RightHandPinky3Tx" -85.613997130000001;
	setAttr ".RightHandPinky3Ty" 146.27584210000001;
	setAttr ".RightHandPinky3Tz" -2.6648030450000002;
	setAttr ".RightHandPinky3Ry" -2.0000646359999998;
	setAttr ".RightHandPinky3Rz" 0.0012412149999999999;
	setAttr ".RightHandPinky4Tx" -87.28162098;
	setAttr ".RightHandPinky4Ty" 146.27580589999999;
	setAttr ".RightHandPinky4Tz" -2.7229943639999998;
	setAttr ".RightHandPinky4Ry" -2.0000646359999998;
	setAttr ".RightHandPinky4Rz" 0.0012412149999999999;
	setAttr ".RightHandExtraFinger1Tx" -80.592357370000002;
	setAttr ".RightHandExtraFinger1Ty" 146.78871240000001;
	setAttr ".RightHandExtraFinger1Tz" -4.4895741940000002;
	setAttr ".RightHandExtraFinger1Ry" -2.0000646579999999;
	setAttr ".RightHandExtraFinger2Tx" -82.638299989999993;
	setAttr ".RightHandExtraFinger2Ty" 146.7887121;
	setAttr ".RightHandExtraFinger2Tz" -4.5958615949999997;
	setAttr ".RightHandExtraFinger2Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger3Tx" -84.613997130000001;
	setAttr ".RightHandExtraFinger3Ty" 146.78871179999999;
	setAttr ".RightHandExtraFinger3Tz" -4.6648030450000002;
	setAttr ".RightHandExtraFinger3Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger4Tx" -86.28162098;
	setAttr ".RightHandExtraFinger4Ty" 146.78871169999999;
	setAttr ".RightHandExtraFinger4Tz" -4.7229943639999998;
	setAttr ".RightHandExtraFinger4Ry" -2.0000646359999998;
	setAttr ".LeftFootThumb1Tx" 6.18422217;
	setAttr ".LeftFootThumb1Ty" 4.9992492679999998;
	setAttr ".LeftFootThumb1Tz" 1.930123209;
	setAttr ".LeftFootThumb2Tx" 4.551409713;
	setAttr ".LeftFootThumb2Ty" 2.6643834059999998;
	setAttr ".LeftFootThumb2Tz" 3.591937658;
	setAttr ".LeftFootThumb3Tx" 3.4619466889999999;
	setAttr ".LeftFootThumb3Ty" 1.8880788850000001;
	setAttr ".LeftFootThumb3Tz" 6.4001420700000002;
	setAttr ".LeftFootThumb4Tx" 3.4619466999999999;
	setAttr ".LeftFootThumb4Ty" 1.8880788550000001;
	setAttr ".LeftFootThumb4Tz" 9.6971958839999992;
	setAttr ".LeftFootIndex1Tx" 7.1105199680000002;
	setAttr ".LeftFootIndex1Ty" 1.888079117;
	setAttr ".LeftFootIndex1Tz" 12.9547209;
	setAttr ".LeftFootIndex2Tx" 7.1105199749999999;
	setAttr ".LeftFootIndex2Ty" 1.8880790999999999;
	setAttr ".LeftFootIndex2Tz" 14.82972745;
	setAttr ".LeftFootIndex3Tx" 7.1105199810000004;
	setAttr ".LeftFootIndex3Ty" 1.888079083;
	setAttr ".LeftFootIndex3Tz" 16.76314442;
	setAttr ".LeftFootIndex4Tx" 7.1105199880000001;
	setAttr ".LeftFootIndex4Ty" 1.8880790649999999;
	setAttr ".LeftFootIndex4Tz" 18.850666449999999;
	setAttr ".LeftFootMiddle1Tx" 8.9167242489999996;
	setAttr ".LeftFootMiddle1Ty" 1.888079163;
	setAttr ".LeftFootMiddle1Tz" 12.9547209;
	setAttr ".LeftFootMiddle2Tx" 8.9167242550000001;
	setAttr ".LeftFootMiddle2Ty" 1.888079147;
	setAttr ".LeftFootMiddle2Tz" 14.82860045;
	setAttr ".LeftFootMiddle3Tx" 8.9167242610000006;
	setAttr ".LeftFootMiddle3Ty" 1.888079131;
	setAttr ".LeftFootMiddle3Tz" 16.64971237;
	setAttr ".LeftFootMiddle4Tx" 8.9167242669999993;
	setAttr ".LeftFootMiddle4Ty" 1.8880791139999999;
	setAttr ".LeftFootMiddle4Tz" 18.565581959999999;
	setAttr ".LeftFootRing1Tx" 10.723903740000001;
	setAttr ".LeftFootRing1Ty" 1.888079211;
	setAttr ".LeftFootRing1Tz" 12.9547209;
	setAttr ".LeftFootRing2Tx" 10.723903740000001;
	setAttr ".LeftFootRing2Ty" 1.888079195;
	setAttr ".LeftFootRing2Tz" 14.71345226;
	setAttr ".LeftFootRing3Tx" 10.72390375;
	setAttr ".LeftFootRing3Ty" 1.8880791800000001;
	setAttr ".LeftFootRing3Tz" 16.472174209999999;
	setAttr ".LeftFootRing4Tx" 10.723903760000001;
	setAttr ".LeftFootRing4Ty" 1.8880791640000001;
	setAttr ".LeftFootRing4Tz" 18.27484922;
	setAttr ".LeftFootPinky1Tx" 12.52979668;
	setAttr ".LeftFootPinky1Ty" 1.888079257;
	setAttr ".LeftFootPinky1Tz" 12.9547209;
	setAttr ".LeftFootPinky2Tx" 12.52979669;
	setAttr ".LeftFootPinky2Ty" 1.8880792420000001;
	setAttr ".LeftFootPinky2Tz" 14.5796458;
	setAttr ".LeftFootPinky3Tx" 12.52979669;
	setAttr ".LeftFootPinky3Ty" 1.8880792289999999;
	setAttr ".LeftFootPinky3Tz" 16.143599309999999;
	setAttr ".LeftFootPinky4Tx" 12.5297967;
	setAttr ".LeftFootPinky4Ty" 1.8880792129999999;
	setAttr ".LeftFootPinky4Tz" 17.861196199999998;
	setAttr ".LeftFootExtraFinger1Tx" 5.0860939849999998;
	setAttr ".LeftFootExtraFinger1Ty" 1.888079254;
	setAttr ".LeftFootExtraFinger1Tz" 12.9547209;
	setAttr ".LeftFootExtraFinger2Tx" 5.0860939910000003;
	setAttr ".LeftFootExtraFinger2Ty" 1.888079236;
	setAttr ".LeftFootExtraFinger2Tz" 14.94401483;
	setAttr ".LeftFootExtraFinger3Tx" 5.0860939979999999;
	setAttr ".LeftFootExtraFinger3Ty" 1.8880792179999999;
	setAttr ".LeftFootExtraFinger3Tz" 16.99182682;
	setAttr ".LeftFootExtraFinger4Tx" 5.0860940049999996;
	setAttr ".LeftFootExtraFinger4Ty" 1.8880791990000001;
	setAttr ".LeftFootExtraFinger4Tz" 19.0793827;
	setAttr ".RightFootThumb1Tx" -6.180000014;
	setAttr ".RightFootThumb1Ty" 4.9992496019999999;
	setAttr ".RightFootThumb1Tz" 1.930123112;
	setAttr ".RightFootThumb2Tx" -4.5499999820000001;
	setAttr ".RightFootThumb2Ty" 2.6643838419999999;
	setAttr ".RightFootThumb2Tz" 3.5919375690000002;
	setAttr ".RightFootThumb3Tx" -3.4599999860000001;
	setAttr ".RightFootThumb3Ty" 1.888079335;
	setAttr ".RightFootThumb3Tz" 6.4001419850000003;
	setAttr ".RightFootThumb4Tx" -3.4599999860000001;
	setAttr ".RightFootThumb4Ty" 1.8880793090000001;
	setAttr ".RightFootThumb4Tz" 9.6971957989999993;
	setAttr ".RightFootIndex1Tx" -7.1099999839999999;
	setAttr ".RightFootIndex1Ty" 1.888079262;
	setAttr ".RightFootIndex1Tz" 12.95472064;
	setAttr ".RightFootIndex2Tx" -7.1099999839999999;
	setAttr ".RightFootIndex2Ty" 1.8880792479999999;
	setAttr ".RightFootIndex2Tz" 14.82972719;
	setAttr ".RightFootIndex3Tx" -7.1099999839999999;
	setAttr ".RightFootIndex3Ty" 1.8880792340000001;
	setAttr ".RightFootIndex3Tz" 16.76314416;
	setAttr ".RightFootIndex4Tx" -7.1099999839999999;
	setAttr ".RightFootIndex4Ty" 1.8880792179999999;
	setAttr ".RightFootIndex4Tz" 18.850666189999998;
	setAttr ".RightFootMiddle1Tx" -8.92;
	setAttr ".RightFootMiddle1Ty" 1.8880792049999999;
	setAttr ".RightFootMiddle1Tz" 12.954720630000001;
	setAttr ".RightFootMiddle2Tx" -8.92;
	setAttr ".RightFootMiddle2Ty" 1.8880791910000001;
	setAttr ".RightFootMiddle2Tz" 14.82860018;
	setAttr ".RightFootMiddle3Tx" -8.92;
	setAttr ".RightFootMiddle3Ty" 1.8880791770000001;
	setAttr ".RightFootMiddle3Tz" 16.649712099999999;
	setAttr ".RightFootMiddle4Tx" -8.92;
	setAttr ".RightFootMiddle4Ty" 1.8880791619999999;
	setAttr ".RightFootMiddle4Tz" 18.565581689999998;
	setAttr ".RightFootRing1Tx" -10.72;
	setAttr ".RightFootRing1Ty" 1.8880791610000001;
	setAttr ".RightFootRing1Tz" 12.95472062;
	setAttr ".RightFootRing2Tx" -10.72;
	setAttr ".RightFootRing2Ty" 1.888079147;
	setAttr ".RightFootRing2Tz" 14.713451989999999;
	setAttr ".RightFootRing3Tx" -10.72;
	setAttr ".RightFootRing3Ty" 1.888079134;
	setAttr ".RightFootRing3Tz" 16.472173940000001;
	setAttr ".RightFootRing4Tx" -10.72;
	setAttr ".RightFootRing4Ty" 1.88807912;
	setAttr ".RightFootRing4Tz" 18.274848949999999;
	setAttr ".RightFootPinky1Tx" -12.530000060000001;
	setAttr ".RightFootPinky1Ty" 1.8880791029999999;
	setAttr ".RightFootPinky1Tz" 12.95472062;
	setAttr ".RightFootPinky2Tx" -12.530000060000001;
	setAttr ".RightFootPinky2Ty" 1.888079091;
	setAttr ".RightFootPinky2Tz" 14.57964552;
	setAttr ".RightFootPinky3Tx" -12.530000060000001;
	setAttr ".RightFootPinky3Ty" 1.8880790789999999;
	setAttr ".RightFootPinky3Tz" 16.143599040000002;
	setAttr ".RightFootPinky4Tx" -12.530000060000001;
	setAttr ".RightFootPinky4Ty" 1.888079066;
	setAttr ".RightFootPinky4Tz" 17.86119592;
	setAttr ".RightFootExtraFinger1Tx" -5.0900000030000001;
	setAttr ".RightFootExtraFinger1Ty" 1.8880791260000001;
	setAttr ".RightFootExtraFinger1Tz" 12.95472064;
	setAttr ".RightFootExtraFinger2Tx" -5.0900000030000001;
	setAttr ".RightFootExtraFinger2Ty" 1.8880791109999999;
	setAttr ".RightFootExtraFinger2Tz" 14.944014579999999;
	setAttr ".RightFootExtraFinger3Tx" -5.0900000030000001;
	setAttr ".RightFootExtraFinger3Ty" 1.888079096;
	setAttr ".RightFootExtraFinger3Tz" 16.99182656;
	setAttr ".RightFootExtraFinger4Tx" -5.0900000030000001;
	setAttr ".RightFootExtraFinger4Ty" 1.88807908;
	setAttr ".RightFootExtraFinger4Tz" 19.079382450000001;
	setAttr ".LeftInHandThumbTx" 71.709864199999998;
	setAttr ".LeftInHandThumbTy" 146.58868419999999;
	setAttr ".LeftInHandIndexTx" 71.709864199999998;
	setAttr ".LeftInHandIndexTy" 146.58868419999999;
	setAttr ".LeftInHandMiddleTx" 71.709864199999998;
	setAttr ".LeftInHandMiddleTy" 146.58868419999999;
	setAttr ".LeftInHandRingTx" 71.709864199999998;
	setAttr ".LeftInHandRingTy" 146.58868419999999;
	setAttr ".LeftInHandPinkyTx" 71.709864199999998;
	setAttr ".LeftInHandPinkyTy" 146.58868419999999;
	setAttr ".LeftInHandExtraFingerTx" 71.709864199999998;
	setAttr ".LeftInHandExtraFingerTy" 146.58868419999999;
	setAttr ".RightInHandThumbTx" -71.709861489999994;
	setAttr ".RightInHandThumbTy" 146.58897870000001;
	setAttr ".RightInHandIndexTx" -71.709861489999994;
	setAttr ".RightInHandIndexTy" 146.58897870000001;
	setAttr ".RightInHandMiddleTx" -71.709861489999994;
	setAttr ".RightInHandMiddleTy" 146.58897870000001;
	setAttr ".RightInHandRingTx" -71.709861489999994;
	setAttr ".RightInHandRingTy" 146.58897870000001;
	setAttr ".RightInHandPinkyTx" -71.709861489999994;
	setAttr ".RightInHandPinkyTy" 146.58897870000001;
	setAttr ".RightInHandExtraFingerTx" -71.709861489999994;
	setAttr ".RightInHandExtraFingerTy" 146.58897870000001;
	setAttr ".LeftInFootThumbTx" 8.9100008010000007;
	setAttr ".LeftInFootThumbTy" 8.15039625;
	setAttr ".LeftInFootIndexTx" 8.9100008010000007;
	setAttr ".LeftInFootIndexTy" 8.1503963469999992;
	setAttr ".LeftInFootMiddleTx" 8.9100008010000007;
	setAttr ".LeftInFootMiddleTy" 8.1503963469999992;
	setAttr ".LeftInFootRingTx" 8.9100008010000007;
	setAttr ".LeftInFootRingTy" 8.1503963469999992;
	setAttr ".LeftInFootPinkyTx" 8.9100008010000007;
	setAttr ".LeftInFootPinkyTy" 8.1503963469999992;
	setAttr ".LeftInFootExtraFingerTx" 8.9100008010000007;
	setAttr ".LeftInFootExtraFingerTy" 8.1503963469999992;
	setAttr ".RightInFootThumbTx" -8.9100025980000002;
	setAttr ".RightInFootThumbTy" 8.1503963929999994;
	setAttr ".RightInFootThumbTz" 0.00043882099999999999;
	setAttr ".RightInFootIndexTx" -8.9100026190000001;
	setAttr ".RightInFootIndexTy" 8.1503963939999995;
	setAttr ".RightInFootIndexTz" 0.00043882099999999999;
	setAttr ".RightInFootMiddleTx" -8.9100026190000001;
	setAttr ".RightInFootMiddleTy" 8.1503963939999995;
	setAttr ".RightInFootMiddleTz" 0.00043882099999999999;
	setAttr ".RightInFootRingTx" -8.9100026190000001;
	setAttr ".RightInFootRingTy" 8.1503963939999995;
	setAttr ".RightInFootRingTz" 0.00043882099999999999;
	setAttr ".RightInFootPinkyTx" -8.9100026190000001;
	setAttr ".RightInFootPinkyTy" 8.1503963939999995;
	setAttr ".RightInFootPinkyTz" 0.00043882099999999999;
	setAttr ".RightInFootExtraFingerTx" -8.9100026190000001;
	setAttr ".RightInFootExtraFingerTy" 8.1503963939999995;
	setAttr ".RightInFootExtraFingerTz" 0.00043882099999999999;
	setAttr ".LeftShoulderExtraTx" 12.353625535000001;
	setAttr ".LeftShoulderExtraTy" 146.58868419999999;
	setAttr ".RightShoulderExtraTx" -12.353637216499999;
	setAttr ".RightShoulderExtraTy" 146.58898;
createNode HIKSolverNode -n "HIKSolverNode1";
	rename -uid "C812DC00-0017-6481-5EE2-21A100000FA2";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
createNode HIKState2SK -n "HIKState2SK1";
	rename -uid "C812DC00-0017-6481-5EE2-21A100000FA3";
	setAttr ".ihi" 0;
	setAttr ".HipsTx" -1.5456753894103583e-31;
	setAttr ".HipsTy" 100;
	setAttr ".HipsTz" 1.3922206215568472e-15;
	setAttr ".LeftUpLegTx" 8.9100008010864258;
	setAttr ".LeftUpLegTy" -6.2700042724609375;
	setAttr ".LeftUpLegTz" 5.8619698620210085e-16;
	setAttr ".LeftLegTy" -44.878639221191406;
	setAttr ".LeftLegTz" -3.7318886845016941e-06;
	setAttr ".LeftFootTy" -40.700958251953132;
	setAttr ".LeftFootTz" 3.7318884551496012e-06;
	setAttr ".RightUpLegTx" -8.9100008010864258;
	setAttr ".RightUpLegTy" -6.2700042724609375;
	setAttr ".RightUpLegTz" -3.3706382293157951e-15;
	setAttr ".RightLegTx" -2.86102294921875e-06;
	setAttr ".RightLegTy" -44.878639221191406;
	setAttr ".RightLegTz" 0.00043902400648419213;
	setAttr ".RightFootTx" 9.5367431640625e-07;
	setAttr ".RightFootTy" -40.700958251953125;
	setAttr ".RightFootRy" -0.0048003860873920973;
	setAttr ".SpineTx" -1.7256332301709635e-31;
	setAttr ".SpineTy" 7;
	setAttr ".SpineTz" 1.5543122344752194e-15;
	setAttr ".LeftArmTx" 10.707250119136292;
	setAttr ".LeftArmTy" -7.8025522043390083e-08;
	setAttr ".LeftArmTz" 9.5100691915612414e-15;
	setAttr ".LeftForeArmTx" 27.305467605590817;
	setAttr ".LeftForeArmTy" -7.702283255639486e-12;
	setAttr ".LeftForeArmTz" 2.4252121984908934e-14;
	setAttr ".LeftHandTx" 26.6971435546875;
	setAttr ".LeftHandTy" -7.58859641791787e-12;
	setAttr ".LeftHandTz" 2.3711826772909715e-14;
	setAttr ".RightArmTx" -10.70727587598455;
	setAttr ".RightArmTy" -6.0027700499176717e-06;
	setAttr ".RightArmTz" -9.5095914649789868e-15;
	setAttr ".RightForeArmTx" -27.305599212646481;
	setAttr ".RightForeArmTy" -2.5465851649641991e-11;
	setAttr ".RightForeArmTz" -2.4252243957653338e-14;
	setAttr ".RightHandTx" -26.696987152099602;
	setAttr ".RightHandTy" -2.4982682589325123e-11;
	setAttr ".RightHandTz" -2.3711686165440477e-14;
	setAttr ".HeadTx" -1.2325951644078309e-29;
	setAttr ".HeadTy" 20;
	setAttr ".HeadTz" 2.2204458798437236e-14;
	setAttr ".LeftToeBaseTx" 8.58306884765625e-06;
	setAttr ".LeftToeBaseTy" -6.2623171806335378;
	setAttr ".LeftToeBaseTz" 12.954720497131575;
	setAttr ".RightToeBaseTx" 1.0042135656362916e-07;
	setAttr ".RightToeBaseTy" -6.262317180633544;
	setAttr ".RightToeBaseTz" 12.954748818999514;
	setAttr ".RightToeBaseRx" 0.0029125929397580976;
	setAttr ".RightToeBaseRy" -0.0048003859999999994;
	setAttr ".LeftShoulderTx" 7.0000004768371582;
	setAttr ".LeftShoulderTy" 14.255218505859375;
	setAttr ".LeftShoulderTz" 1.8878428076980931e-14;
	setAttr ".LeftShoulderRz" 0.00073528201621199114;
	setAttr ".RightShoulderTx" -6.9999995231628418;
	setAttr ".RightShoulderTy" 14.255218505859375;
	setAttr ".RightShoulderTz" 6.4439285071132835e-15;
	setAttr ".RightShoulderRz" -0.0023183610535264603;
	setAttr ".NeckTx" -4.9961214487349591e-30;
	setAttr ".NeckTy" 12.666671752929688;
	setAttr ".NeckTz" 1.1250264500377305e-14;
	setAttr ".Spine1Tx" -1.2490295158278072e-30;
	setAttr ".Spine1Ty" 12.666664123535142;
	setAttr ".Spine1Tz" 5.6251288620568635e-15;
	setAttr ".Spine2Tx" -2.81031622253347e-30;
	setAttr ".Spine2Ty" 12.666664123535156;
	setAttr ".Spine2Tz" 8.4376932930852952e-15;
	setAttr ".LeftHandThumb1Tx" 4.3487625122068039;
	setAttr ".LeftHandThumb1Ty" -0.79850769043090963;
	setAttr ".LeftHandThumb1Tz" 4.2824339866637251;
	setAttr ".LeftHandThumb2Tx" 2.5125885009764062;
	setAttr ".LeftHandThumb2Ty" -0.53608703613349462;
	setAttr ".LeftHandThumb2Tz" 0.70745420455932617;
	setAttr ".LeftHandThumb2Rz" -0.00029786201668498871;
	setAttr ".LeftHandThumb3Tx" 2.5431365967246364;
	setAttr ".LeftHandThumb3Ty" -2.0378544434151991e-06;
	setAttr ".LeftHandThumb3Tz" 9.5367431640625e-06;
	setAttr ".LeftHandThumb4Tx" 2.666748046875;
	setAttr ".LeftHandThumb4Ty" 2.8421709430404007e-14;
	setAttr ".LeftHandThumb4Tz" -8.1062316903413034e-06;
	setAttr ".LeftHandIndex1Tx" 8.8219757080078693;
	setAttr ".LeftHandIndex1Ty" 0.19972229003658981;
	setAttr ".LeftHandIndex1Tz" 3.4716694355010054;
	setAttr ".LeftHandIndex1Ry" -1.9999999065071428;
	setAttr ".LeftHandIndex1Rz" -0.00029934102138292186;
	setAttr ".LeftHandIndex2Tx" 4.2253202117026376;
	setAttr ".LeftHandIndex2Ty" 6.8029381168344116e-06;
	setAttr ".LeftHandIndex2Tz" -0.00026278650568356543;
	setAttr ".LeftHandIndex2Ry" -1.9999999850000008;
	setAttr ".LeftHandIndex2Rz" -0.00029934100000964323;
	setAttr ".LeftHandIndex3Tx" 2.6539394358412238;
	setAttr ".LeftHandIndex3Ty" -1.4017356591011776e-06;
	setAttr ".LeftHandIndex3Tz" -0.00016514449216420424;
	setAttr ".LeftHandIndex3Ry" -1.9999999850000008;
	setAttr ".LeftHandIndex3Rz" -0.00029934099999686455;
	setAttr ".LeftHandIndex4Tx" 1.9582198863897986;
	setAttr ".LeftHandIndex4Ty" -5.0343064401658921e-06;
	setAttr ".LeftHandIndex4Tz" -0.00012201314463433643;
	setAttr ".LeftHandIndex4Ry" -1.9999999849999996;
	setAttr ".LeftHandIndex4Rz" -0.00029934100001038341;
	setAttr ".LeftHandMiddle1Tx" 8.8098831176759234;
	setAttr ".LeftHandMiddle1Ty" 0.50088500976315231;
	setAttr ".LeftHandMiddle1Tz" 1.3046844005583784;
	setAttr ".LeftHandMiddle1Ry" -0.0035633339479143235;
	setAttr ".LeftHandMiddle2Tx" 4.8632507418256949;
	setAttr ".LeftHandMiddle2Ty" -1.3642420526593924e-12;
	setAttr ".LeftHandMiddle2Tz" -2.0883389240111683e-08;
	setAttr ".LeftHandMiddle2Ry" -0.0035633340000000673;
	setAttr ".LeftHandMiddle3Tx" 2.7652359062145138;
	setAttr ".LeftHandMiddle3Ty" -7.9580786405131221e-13;
	setAttr ".LeftHandMiddle3Tz" -1.9471553414085463e-07;
	setAttr ".LeftHandMiddle3Ry" -0.0035633339999999671;
	setAttr ".LeftHandMiddle4Tx" 2.0056304969735237;
	setAttr ".LeftHandMiddle4Ty" -5.6843418860808015e-13;
	setAttr ".LeftHandMiddle4Tz" -1.1139574951357645e-06;
	setAttr ".LeftHandMiddle4Ry" -0.0035633339999999974;
	setAttr ".LeftHandRing1Tx" 8.8937606811524574;
	setAttr ".LeftHandRing1Ty" 0.37991333007562389;
	setAttr ".LeftHandRing1Tz" -0.79315888881692687;
	setAttr ".LeftHandRing1Ry" -0.0035635290485319508;
	setAttr ".LeftHandRing2Tx" 4.537757864762284;
	setAttr ".LeftHandRing2Ty" -1.2789769243681803e-12;
	setAttr ".LeftHandRing2Tz" -0.00028216767500044426;
	setAttr ".LeftHandRing2Ry" -0.0035635289999999369;
	setAttr ".LeftHandRing3Tx" 2.3045272782501343;
	setAttr ".LeftHandRing3Ty" -6.8212102632969618e-13;
	setAttr ".LeftHandRing3Tz" -0.00014345000921189843;
	setAttr ".LeftHandRing3Ry" -0.0035635290000000275;
	setAttr ".LeftHandRing4Tx" 1.9233474693726578;
	setAttr ".LeftHandRing4Ty" -5.1159076974727213e-13;
	setAttr ".LeftHandRing4Tz" -0.00012045766667789781;
	setAttr ".LeftHandRing4Ry" -0.0035635290000000639;
	setAttr ".LeftHandPinky1Tx" 8.8822784423827272;
	setAttr ".LeftHandPinky1Ty" -0.31303405761968861;
	setAttr ".LeftHandPinky1Tz" -2.4903564453125933;
	setAttr ".LeftHandPinky1Rz" 0.00076302599579426309;
	setAttr ".LeftHandPinky2Tx" 3.0440979007303213;
	setAttr ".LeftHandPinky2Ty" 5.2371529761785496e-06;
	setAttr ".LeftHandPinky2Rz" 0.00073907140643102176;
	setAttr ".LeftHandPinky3Tx" 1.9745025637059257;
	setAttr ".LeftHandPinky3Ty" 5.048016078035289e-06;
	setAttr ".LeftHandPinky3Tz" -2.384185791015625e-07;
	setAttr ".LeftHandPinky3Rz" 0.00076302599997015309;
	setAttr ".LeftHandPinky4Tx" 1.666610717831631;
	setAttr ".LeftHandPinky4Ty" -6.2392052768700523e-06;
	setAttr ".LeftHandPinky4Tz" 9.5367431640625e-07;
	setAttr ".LeftHandPinky4Rz" 0.00076302600002321546;
	setAttr ".RightHandThumb1Tx" -4.3483810424797014;
	setAttr ".RightHandThumb1Ty" -0.7984924316446893;
	setAttr ".RightHandThumb1Tz" 4.2828145027160982;
	setAttr ".RightHandThumb2Tx" -2.5125274658198435;
	setAttr ".RightHandThumb2Ty" -0.536102294924234;
	setAttr ".RightHandThumb2Tz" 0.70767688751220703;
	setAttr ".RightHandThumb2Rz" -0.00060208592634788515;
	setAttr ".RightHandThumb3Tx" -2.5415878297701937;
	setAttr ".RightHandThumb3Ty" 3.8096004857379739e-06;
	setAttr ".RightHandThumb3Tz" 0.088820457458496094;
	setAttr ".RightHandThumb3Rz" -0.000391494032984361;
	setAttr ".RightHandThumb4Tx" -2.6651229858819221;
	setAttr ".RightHandThumb4Ty" -2.9516219228753471e-06;
	setAttr ".RightHandThumb4Tz" 0.093137264251708984;
	setAttr ".RightHandThumb4Rz" -0.00039149399999530344;
	setAttr ".RightHandIndex1Tx" -8.821670532226733;
	setAttr ".RightHandIndex1Ty" 0.1997375488198827;
	setAttr ".RightHandIndex1Tz" 3.4724442958832129;
	setAttr ".RightHandIndex1Ry" -2.0000645404874469;
	setAttr ".RightHandIndex2Tx" -4.2253255451147709;
	setAttr ".RightHandIndex2Ty" -3.979039320256561e-12;
	setAttr ".RightHandIndex2Tz" 0.00011481978070371213;
	setAttr ".RightHandIndex2Ry" -2.0000646580000008;
	setAttr ".RightHandIndex3Tx" -2.6539351642087325;
	setAttr ".RightHandIndex3Ty" -2.4442670110147446e-12;
	setAttr ".RightHandIndex3Tz" 7.1847912165523553e-05;
	setAttr ".RightHandIndex3Ry" -2.0000646359999976;
	setAttr ".RightHandIndex4Tx" -1.9582223741640092;
	setAttr ".RightHandIndex4Ty" -1.8189894035458565e-12;
	setAttr ".RightHandIndex4Tz" 5.297843703822025e-05;
	setAttr ".RightHandIndex4Ry" -2.0000646360000012;
	setAttr ".RightHandMiddle1Tx" -8.8097686767582672;
	setAttr ".RightHandMiddle1Ty" 0.5009002685464452;
	setAttr ".RightHandMiddle1Tz" 1.3054584264755589;
	setAttr ".RightHandMiddle1Ry" -2.0000645404874469;
	setAttr ".RightHandMiddle2Tx" -4.8632486787528961;
	setAttr ".RightHandMiddle2Ty" -4.5474735088646412e-12;
	setAttr ".RightHandMiddle2Tz" 0.00013178773832489554;
	setAttr ".RightHandMiddle2Ry" -2.0000646579999999;
	setAttr ".RightHandMiddle3Tx" -2.7652394349639593;
	setAttr ".RightHandMiddle3Ty" -2.5863755581667647e-12;
	setAttr ".RightHandMiddle3Tz" 7.4983686588758758e-05;
	setAttr ".RightHandMiddle3Ry" -2.0000646359999994;
	setAttr ".RightHandMiddle4Tx" -2.0056297481286123;
	setAttr ".RightHandMiddle4Ty" -1.9042545318370685e-12;
	setAttr ".RightHandMiddle4Tz" 5.4331694540721287e-05;
	setAttr ".RightHandMiddle4Ry" -2.0000646360000007;
	setAttr ".RightHandRing1Tx" -8.8938293457034661;
	setAttr ".RightHandRing1Ty" 0.37992858885885994;
	setAttr ".RightHandRing1Tz" -0.79237675666805685;
	setAttr ".RightHandRing1Ry" -2.0000645404874469;
	setAttr ".RightHandRing2Tx" -4.5377638236020488;
	setAttr ".RightHandRing2Ty" -4.2064129956997931e-12;
	setAttr ".RightHandRing2Tz" 0.00012320741130356083;
	setAttr ".RightHandRing2Ry" -2.0000646579999999;
	setAttr ".RightHandRing3Tx" -2.3045252423137583;
	setAttr ".RightHandRing3Ty" -2.1600499167107046e-12;
	setAttr ".RightHandRing3Tz" 6.2374718410307395e-05;
	setAttr ".RightHandRing3Ry" -2.0000646359999994;
	setAttr ".RightHandRing4Tx" -1.9233500781264752;
	setAttr ".RightHandRing4Ty" -1.7905676941154525e-12;
	setAttr ".RightHandRing4Tz" 5.2324791076419075e-05;
	setAttr ".RightHandRing4Ry" -2.0000646359999998;
	setAttr ".RightHandPinky1Tx" -8.8824920654293749;
	setAttr ".RightHandPinky1Ty" -0.31301879883642414;
	setAttr ".RightHandPinky1Tz" -2.4895741939544336;
	setAttr ".RightHandPinky1Ry" -2.0000645400185149;
	setAttr ".RightHandPinky1Rz" 0.0012412150542745048;
	setAttr ".RightHandPinky2Tx" -3.0477980873339874;
	setAttr ".RightHandPinky2Ty" -1.0308777063983143e-05;
	setAttr ".RightHandPinky2Tz" 8.2621289568096667e-05;
	setAttr ".RightHandPinky2Ry" -2.0000646574922225;
	setAttr ".RightHandPinky2Rz" 0.0017913269728961766;
	setAttr ".RightHandPinky3Tx" -1.9769028541178102;
	setAttr ".RightHandPinky3Ty" 1.5993023311011711e-05;
	setAttr ".RightHandPinky3Tz" 5.3818153642304356e-05;
	setAttr ".RightHandPinky3Ry" -2.0000646360000003;
	setAttr ".RightHandPinky3Rz" 0.001241215000010997;
	setAttr ".RightHandPinky4Tx" -1.6686404029989745;
	setAttr ".RightHandPinky4Ty" -8.8975915275568696e-06;
	setAttr ".RightHandPinky4Tz" 4.5316867736622246e-05;
	setAttr ".RightHandPinky4Ry" -2.0000646359999994;
	setAttr ".RightHandPinky4Rz" 0.0012412150000001994;
createNode HIKControlSetNode -n "Character1_ControlRig";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FA4";
	setAttr ".ihi" 0;
createNode keyingGroup -n "Character1_FullBodyKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FA5";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dnsm";
	setAttr -s 90 ".act";
	setAttr ".cat" -type "string" "FullBody";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_HipsBPKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FA6";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dnsm";
	setAttr -s 2 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_ChestBPKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FA7";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dnsm";
	setAttr -s 5 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftArmBPKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FA8";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dnsm";
	setAttr -s 7 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightArmBPKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FA9";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dnsm";
	setAttr -s 7 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftLegBPKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FAA";
	setAttr ".ihi" 0;
	setAttr -s 36 ".dnsm";
	setAttr -s 8 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightLegBPKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FAB";
	setAttr ".ihi" 0;
	setAttr -s 36 ".dnsm";
	setAttr -s 8 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_HeadBPKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FAC";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dnsm";
	setAttr -s 3 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftHandBPKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FAD";
	setAttr ".ihi" 0;
	setAttr -s 90 ".dnsm";
	setAttr -s 25 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightHandBPKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FAE";
	setAttr ".ihi" 0;
	setAttr -s 90 ".dnsm";
	setAttr -s 25 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftFootBPKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FAF";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightFootBPKG";
	rename -uid "C812DC00-0017-6481-5EE2-21A200000FB0";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode HIKFK2State -n "HIKFK2State1";
	rename -uid "C812DC00-0017-6481-5EE2-21A20000100D";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
createNode HIKEffector2State -n "HIKEffector2State1";
	rename -uid "C812DC00-0017-6481-5EE2-21A20000100E";
	setAttr ".ihi" 0;
	setAttr ".EFF" -type "HIKEffectorState" ;
createNode HIKPinning2State -n "HIKPinning2State1";
	rename -uid "C812DC00-0017-6481-5EE2-21A20000100F";
	setAttr ".ihi" 0;
	setAttr ".OutputEffectorState" -type "HIKEffectorState" ;
createNode HIKState2FK -n "HIKState2FK1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001010";
	setAttr ".ihi" 0;
	setAttr ".HipsGX" -type "matrix" 1 -2.4651903288156619e-32 2.2204460492503131e-16 0 -2.4651903288156619e-32 1 2.2204460492503131e-16 0
		 -2.2204460492503131e-16 -2.2204460492503131e-16 1 0 -1.5456753894103583e-31 100 1.3922206215568472e-15 1;
	setAttr ".LeftUpLegGX" -type "matrix" 1 0 2.2204460492503131e-16 0 -1.8716961910267892e-23 1 8.4293702684590244e-08 0
		 -2.2204460492503131e-16 -8.4293702684590244e-08 1 0 8.9100008010864258 93.729995727539062 1.9784176077589479e-15 1;
	setAttr ".LeftLegGX" -type "matrix" 1 -3.6928289223838082e-23 4.4408920985006262e-16 0 1.0587911840678754e-22 1 -1.5526347851846367e-07 0
		 -4.4408920985006262e-16 1.5526347851846367e-07 1 0 8.9100008010864258 48.851356506347656 -3.7318886825232767e-06 1;
	setAttr ".LeftFootGX" -type "matrix" 1 -8.3266726846886741e-17 -1.1102229584507075e-16 0 8.3266726846886741e-17 1 -4.6222314991873814e-33 0
		 1.1102229584507075e-16 -4.6222314991873814e-33 1 0 8.9100008010864258 8.1503982543945312 -2.2737367544323206e-13 1;
	setAttr ".RightUpLegGX" -type "matrix" 1 5.9580937517011989e-08 1.5357729310494506e-08 0 -5.9580937517011989e-08 1 7.3338924266863614e-08 0
		 -1.5357725757780827e-08 -7.3338924266863614e-08 1 0 -8.9100008010864258 93.729995727539062 -1.9784176077589479e-15 1;
	setAttr ".RightLegGX" -type "matrix" 1 -3.3306690738754696e-16 3.3306690738754696e-16 0 3.3306696032710617e-16 1 -1.1920928955078125e-07 0
		 -3.3306685444798776e-16 1.1920928955078125e-07 1 0 -8.910003662109375 48.851356506347656 0.00043902400648221374 1;
	setAttr ".RightFootGX" -type "matrix" 1 2.7755575615628914e-17 -2.6469839555125682e-23 0 -2.7755575615628914e-17 1 -2.2642998587230068e-13 0
		 2.6469833244238441e-23 2.2642998587230068e-13 1 0 -8.9100027084350586 8.1503982543945312 0.00043902400648221374 1;
	setAttr ".SpineGX" -type "matrix" 1 -9.8607613152626476e-32 4.4408920985006262e-16 0 -9.8607613152626476e-32 1 4.4408920985006262e-16 0
		 -4.4408920985006262e-16 -4.4408920985006262e-16 1 0 -3.2713086195813217e-31 107 2.9465328560320664e-15 1;
	setAttr ".LeftArmGX" -type "matrix" 1 -1.1920928244535389e-07 2.6822090148925781e-07 0 1.1920928955078125e-07 1 -2.9802306400483758e-08 0
		 -2.6822090148925781e-07 2.9802336598550028e-08 1 0 17.707250595092773 146.58868408203125 4.5397852279716391e-14 1;
	setAttr ".LeftForeArmGX" -type "matrix" 1 1.4973569528214313e-22 -1.6858740536918049e-07 0 0 1 8.8817841970012523e-16 0
		 1.6858740536918049e-07 -8.8817841970012523e-16 1 0 45.012718200683594 146.58868408203125 6.9649974264625325e-14 1;
	setAttr ".LeftHandGX" -type "matrix" 1 -3.9443045261050599e-31 8.8817841970012523e-16 0 -3.9443045261050599e-31 1 8.8817841970012523e-16 0
		 -8.8817841970012523e-16 -8.8817841970012523e-16 1 0 71.709861755371094 146.58868408203125 9.3361801037535053e-14 1;
	setAttr ".RightArmGX" -type "matrix" 1 1.1920928955078125e-07 -8.9406967163085938e-08 0 -1.1920928955078125e-07 1 -1.4901154976598718e-08 0
		 8.9406967163085938e-08 1.4901164746561335e-08 1 0 -17.707275390625 146.58897399902344 1.3943692053308525e-14 1;
	setAttr ".RightForeArmGX" -type "matrix" 1 1.0048592410634785e-14 1.6858740536918049e-07 0 1.0048592410634785e-14 1 -1.1920928955078125e-07 0
		 -1.6858740536918049e-07 1.1920928955078125e-07 1 0 -45.012874603271484 146.58897399902344 -1.0308551904344813e-14 1;
	setAttr ".RightHandGX" -type "matrix" 1 -1.2246468525851679e-16 1.0106430784888624e-15 0 1.2246468525851679e-16 1 8.8817841970012523e-16 0
		 -1.0106430784888624e-15 -8.8817841970012523e-16 1 0 -71.709861755371094 146.58897399902344 -3.4020238069785297e-14 1;
	setAttr ".HeadGX" -type "matrix" 1 -8.8746851837363828e-31 1.3322676295501878e-15 0 -8.8746851837363828e-31 1 1.3322676295501878e-15 0
		 -1.3322676295501878e-15 -1.3322676295501878e-15 1 0 -2.1708549693132678e-29 165 5.0464078309988766e-14 1;
	setAttr ".LeftToeBaseGX" -type "matrix" 1 3.9197958411630045e-17 -1.1102229584507075e-16 0 -3.9197958411630045e-17 1 1.2246468525851679e-16 0
		 1.1102229584507075e-16 -1.2246468525851679e-16 1 0 8.9100093841552734 1.8880810737609863 12.954720497131348 1;
	setAttr ".RightToeBaseGX" -type "matrix" 1 1.502202608741457e-16 -2.6469814311576715e-23 0 -1.502202608741457e-16 1 -2.2630752523691844e-13 0
		 2.6469782757140506e-23 2.2630752523691844e-13 1 0 -8.9110879898071289 1.8880810737609863 12.955187797546387 1;
	setAttr ".LeftShoulderGX" -type "matrix" 1 -3.9443045261050599e-31 8.8817841970012523e-16 0 -3.9443045261050599e-31 1 8.8817841970012523e-16 0
		 -8.8817841970012523e-16 -8.8817841970012523e-16 1 0 7.0000004768371582 146.58854675292969 3.5887783088155156e-14 1;
	setAttr ".RightShoulderGX" -type "matrix" 1 -3.9443045261050599e-31 8.8817841970012523e-16 0 -3.9443045261050599e-31 1 8.8817841970012523e-16 0
		 -8.8817841970012523e-16 -8.8817841970012523e-16 1 0 -6.9999995231628418 146.58854675292969 2.3453283518287509e-14 1;
	setAttr ".NeckGX" -type "matrix" 1 -6.1629758220391547e-31 1.1102230246251565e-15 0 -6.1629758220391547e-31 1 1.1102230246251565e-15 0
		 -1.1102230246251565e-15 -1.1102230246251565e-15 1 0 -9.3825980490543685e-30 145 2.8259619511551527e-14 1;
	setAttr ".Spine1GX" -type "matrix" 1 -2.2186712959340957e-31 6.6613381477509392e-16 0 -2.2186712959340957e-31 1 6.6613381477509392e-16 0
		 -6.6613381477509392e-16 -6.6613381477509392e-16 1 0 -1.5761603777859393e-30 119.66666412353516 8.5716617180889298e-15 1;
	setAttr ".Spine2GX" -type "matrix" 1 -3.9443045261050599e-31 8.8817841970012523e-16 0 -3.9443045261050599e-31 1 8.8817841970012523e-16 0
		 -8.8817841970012523e-16 -8.8817841970012523e-16 1 0 -4.3864766003194094e-30 132.33332824707031 1.7009355011174225e-14 1;
	setAttr ".LeftHandThumb1GX" -type "matrix" 1 -9.0205620750793969e-17 9.7144514654701197e-16 0 9.0205620750793969e-17 1 5.5337678883660146e-16 0
		 -9.7144514654701197e-16 -5.5337678883660146e-16 1 0 76.058624267578125 145.79017639160156 4.2824339866638184 1;
	setAttr ".LeftHandThumb2GX" -type "matrix" 1 -9.020392668489946e-17 9.7144429951406472e-16 0 9.020392668489946e-17 1 5.5337678883660146e-16 0
		 -9.7144429951406472e-16 -5.5337678883660146e-16 1 0 78.571212768554688 145.25408935546875 4.9898881912231445 1;
	setAttr ".LeftHandThumb3GX" -type "matrix" 1 -9.0204350201373087e-17 9.7144429951406472e-16 0 9.0204350201373087e-17 1 5.5337678883660146e-16 0
		 -9.7144429951406472e-16 -5.5337678883660146e-16 1 0 81.114349365234375 145.25407409667969 4.9898977279663086 1;
	setAttr ".LeftHandThumb4GX" -type "matrix" 1 -2.1266858547363664e-16 9.3682585120154465e-16 0 2.1266858547363664e-16 1 5.5337678883660146e-16 0
		 -9.3682585120154465e-16 -5.5337678883660146e-16 1 0 83.781097412109375 145.25407409667969 4.9898896217346191 1;
	setAttr ".LeftHandIndex1GX" -type "matrix" 1 4.2660814388462837e-18 9.0205620750793969e-16 0 -4.2660814388462837e-18 1 1.1384834318773488e-15 0
		 -9.0205620750793969e-16 -1.1384834318773488e-15 1 0 80.531837463378906 146.78840637207031 3.4716694355010986 1;
	setAttr ".LeftHandIndex2GX" -type "matrix" 1 -1.2705494208814505e-21 8.9511731360403246e-16 0 1.2705494208814505e-21 1 1.0027515901566493e-15 0
		 -8.9511731360403246e-16 -1.0027515901566493e-15 1 0 84.754592895507812 146.78839111328125 3.618868350982666 1;
	setAttr ".LeftHandIndex3GX" -type "matrix" 1 4.2660814388462837e-18 8.7430063189231078e-16 0 -4.2660814388462837e-18 1 1.2476443794382733e-15 0
		 -8.7430063189231078e-16 -1.2476443794382733e-15 1 0 87.40692138671875 146.78837585449219 3.7113244533538818 1;
	setAttr ".LeftHandIndex4GX" -type "matrix" 1 -1.7967728745279209e-16 8.5348490309265475e-16 0 1.7967728745279209e-16 1 1.4988383526936405e-15 0
		 -8.5348490309265475e-16 -1.4988383526936405e-15 1 0 89.36395263671875 146.78836059570312 3.779543399810791 1;
	setAttr ".LeftHandMiddle1GX" -type "matrix" 1 -7.6157864684968032e-21 8.8817841970012523e-16 0 7.6157864684968032e-21 1 6.4324904918309166e-16 0
		 -8.8817841970012523e-16 -6.4324904918309166e-16 1 0 80.519744873046875 147.08956909179688 1.3046844005584717 1;
	setAttr ".LeftHandMiddle2GX" -type "matrix" 1 -1.5223475614278536e-20 8.8817841970012523e-16 0 1.5223475614278536e-20 1 3.9831970513583769e-16 0
		 -8.8817841970012523e-16 -3.9831970513583769e-16 1 0 85.38299560546875 147.08956909179688 1.304986834526062 1;
	setAttr ".LeftHandMiddle3GX" -type "matrix" 1 -2.2771768506876274e-20 8.8817841970012523e-16 0 2.2771768506876274e-20 1 1.5339033461880412e-16 0
		 -8.8817841970012523e-16 -1.5339033461880412e-16 1 0 88.148231506347656 147.08956909179688 1.3051586151123047 1;
	setAttr ".LeftHandMiddle4GX" -type "matrix" 1 -2.2771768506876274e-20 1.1331132429917568e-15 0 2.2771768506876274e-20 1 1.5339033461880412e-16 0
		 -1.1331132429917568e-15 -1.5339033461880412e-16 1 0 90.153861999511719 147.08956909179688 1.3052822351455688 1;
	setAttr ".LeftHandRing1GX" -type "matrix" 1 -3.9443045261050599e-31 8.8817841970012523e-16 0 -1.7688947136654058e-31 1 6.4324904918309166e-16 0
		 -8.8817841970012523e-16 -6.4324904918309166e-16 1 0 80.603622436523438 146.96859741210938 -0.7931588888168335 1;
	setAttr ".LeftHandRing2GX" -type "matrix" 1 6.3348895181008016e-24 8.8817841970012523e-16 0 -6.3348903069617068e-24 1 6.4324904918309166e-16 0
		 -8.8817841970012523e-16 -6.4324904918309166e-16 1 0 85.141380310058594 146.96859741210938 -0.79315882921218872 1;
	setAttr ".LeftHandRing3GX" -type "matrix" 1 5.9467509411842479e-23 8.8817841970012523e-16 0 -5.9467509411842479e-23 1 6.4324904918309166e-16 0
		 -8.8817841970012523e-16 -6.4324904918309166e-16 1 0 87.445907592773438 146.96859741210938 -0.79315894842147827 1;
	setAttr ".LeftHandRing4GX" -type "matrix" 1 5.9467509411842479e-23 1.1331077372775996e-15 0 -5.9467509411842479e-23 1 6.4324904918309166e-16 0
		 -1.1331077372775996e-15 -6.4324904918309166e-16 1 0 89.369255065917969 146.96859741210938 -0.79315978288650513 1;
	setAttr ".LeftHandPinky1GX" -type "matrix" 1 -3.9443186320372689e-31 8.8818021964513815e-16 0 -1.7688924802261392e-31 1 6.4324904918309166e-16 0
		 -8.8818021964513815e-16 -6.4324904918309166e-16 1 0 80.592140197753906 146.27565002441406 -2.4903564453125 1;
	setAttr ".LeftHandPinky2GX" -type "matrix" 1 -4.18086386844152e-07 8.881887958537291e-16 0 4.18086386844152e-07 1 -4.9803558629588074e-14 0
		 -8.8816799060696216e-16 4.9803558629588074e-14 1 0 83.636238098144531 146.27569580078125 -2.4903564453125 1;
	setAttr ".LeftHandPinky3GX" -type "matrix" 1 -4.18086386844152e-07 8.8819017228226839e-16 0 4.18086386844152e-07 1 -4.992767944954693e-14 0
		 -8.8816926115638305e-16 4.992767944954693e-14 1 0 85.610740661621094 146.27572631835938 -2.4903566837310791 1;
	setAttr ".LeftHandPinky4GX" -type "matrix" 1 -4.18086386844152e-07 1.1091362813538293e-15 0 4.18086386844152e-07 1 5.1891138955206806e-12 0
		 -1.1113057444899843e-15 -5.1891138955206806e-12 1 0 87.277351379394531 146.27574157714844 -2.4903557300567627 1;
	setAttr ".RightHandThumb1GX" -type "matrix" 1 -2.1267030600931075e-16 1.0522764419123058e-15 0 2.1267030600931075e-16 1 7.7715611723760958e-16 0
		 -1.0522764419123058e-15 -7.7715611723760958e-16 1 0 -76.058242797851562 145.79048156738281 4.2828145027160645 1;
	setAttr ".RightHandThumb2GX" -type "matrix" 1 -3.8961210055894508e-16 1.1598292974228678e-15 0 3.8961210055894508e-16 1 6.6613381477509392e-16 0
		 -1.1598292974228678e-15 -6.6613381477509392e-16 1 0 -78.570770263671875 145.25437927246094 4.9904913902282715 1;
	setAttr ".RightHandThumb3GX" -type "matrix" 1 -4.451232253204233e-16 1.1771765321826359e-15 0 4.451232253204233e-16 1 7.7715611723760958e-16 0
		 -1.1771765321826359e-15 -7.7715611723760958e-16 1 0 -81.112358093261719 145.25440979003906 5.0793118476867676 1;
	setAttr ".RightHandThumb4GX" -type "matrix" 1 -4.4859267227237692e-16 1.1771765321826359e-15 0 4.4859267227237692e-16 1 8.8812420959150096e-16 0
		 -1.1771765321826359e-15 -8.8812420959150096e-16 1 0 -83.777481079101562 145.25442504882812 5.1724491119384766 1;
	setAttr ".RightHandIndex1GX" -type "matrix" 1 -1.2253917121831596e-16 1.0106430784888624e-15 0 1.2253917121831596e-16 1 8.8390762664050985e-16 0
		 -1.0106430784888624e-15 -8.8390762664050985e-16 1 0 -80.531532287597656 146.78871154785156 3.4724442958831787 1;
	setAttr ".RightHandIndex2GX" -type "matrix" 1 -1.2261365717811514e-16 1.0106430784888624e-15 0 1.2261365717811514e-16 1 8.7963688652045366e-16 0
		 -1.0106430784888624e-15 -8.7963688652045366e-16 1 0 -84.754287719726562 146.78871154785156 3.3250925540924072 1;
	setAttr ".RightHandIndex3GX" -type "matrix" 1 -1.2268815637280411e-16 1.0106430784888624e-15 0 1.2268815637280411e-16 1 8.7536609346083828e-16 0
		 -1.0106430784888624e-15 -8.7536609346083828e-16 1 0 -87.406608581542969 146.78871154785156 3.2325403690338135 1;
	setAttr ".RightHandIndex4GX" -type "matrix" 1 -1.2268815637280411e-16 1.0106430784888624e-15 0 1.2268815637280411e-16 1 8.7536609346083828e-16 0
		 -1.0106430784888624e-15 -8.7536609346083828e-16 1 0 -89.363639831542969 146.78871154785156 3.1642501354217529 1;
	setAttr ".RightHandMiddle1GX" -type "matrix" 1 -1.2253917121831596e-16 1.0106430784888624e-15 0 1.2253917121831596e-16 1 8.8390762664050985e-16 0
		 -1.0106430784888624e-15 -8.8390762664050985e-16 1 0 -80.519630432128906 147.08987426757812 1.3054584264755249 1;
	setAttr ".RightHandMiddle2GX" -type "matrix" 1 -1.2261364394322533e-16 1.0106430784888624e-15 0 1.2261364394322533e-16 1 8.7963693946001287e-16 0
		 -1.0106430784888624e-15 -8.7963693946001287e-16 1 0 -85.379920959472656 147.08987426757812 1.1358597278594971 1;
	setAttr ".RightHandMiddle3GX" -type "matrix" 1 -1.2268814313791431e-16 1.0106430784888624e-15 0 1.2268814313791431e-16 1 8.7536614640039748e-16 0
		 -1.0106430784888624e-15 -8.7536614640039748e-16 1 0 -88.143478393554688 147.08987426757812 1.0394260883331299 1;
	setAttr ".RightHandMiddle4GX" -type "matrix" 1 -1.2268814313791431e-16 1.0106430784888624e-15 0 1.2268814313791431e-16 1 8.7536614640039748e-16 0
		 -1.0106430784888624e-15 -8.7536614640039748e-16 1 0 -90.14788818359375 147.08987426757812 0.9694826602935791 1;
	setAttr ".RightHandRing1GX" -type "matrix" 1 -1.2253917121831596e-16 1.0106430784888624e-15 0 1.2253917121831596e-16 1 8.8390762664050985e-16 0
		 -1.0106430784888624e-15 -8.8390762664050985e-16 1 0 -80.603691101074219 146.96890258789062 -0.79237675666809082 1;
	setAttr ".RightHandRing2GX" -type "matrix" 1 -1.2261365717811514e-16 1.0106430784888624e-15 0 1.2261365717811514e-16 1 8.7963688652045366e-16 0
		 -1.0106430784888624e-15 -8.7963688652045366e-16 1 0 -85.138694763183594 146.96890258789062 -0.95062440633773804 1;
	setAttr ".RightHandRing3GX" -type "matrix" 1 -1.2268815637280411e-16 9.9676529068104796e-16 0 1.2268815637280411e-16 1 8.7536609346083828e-16 0
		 -9.9676529068104796e-16 -8.7536609346083828e-16 1 0 -87.441818237304688 146.96890258789062 -1.0309914350509644 1;
	setAttr ".RightHandRing4GX" -type "matrix" 1 -1.2268815637280411e-16 1.0037041845849552e-15 0 1.2268815637280411e-16 1 8.7536609346083828e-16 0
		 -1.0037041845849552e-15 -8.7536609346083828e-16 1 0 -89.363998413085938 146.96890258789062 -1.0980652570724487 1;
	setAttr ".RightHandPinky1GX" -type "matrix" 1 -8.0206178432775239e-17 1.0106430784888624e-15 0 8.0206178432775239e-17 1 8.8579137497564421e-16 0
		 -1.0106430784888624e-15 -8.8579137497564421e-16 1 0 -80.592353820800781 146.27595520019531 -2.4895741939544678 1;
	setAttr ".RightHandPinky2GX" -type "matrix" 1 9.5895793492672965e-06 -1.6034454580066138e-12 0 -9.5895793492672965e-06 1 -3.3462490023339342e-07 0
		 -1.6054666276965612e-12 3.3462490023339342e-07 1 0 -83.638298034667969 146.27587890625 -2.5958616733551025 1;
	setAttr ".RightHandPinky3GX" -type "matrix" 1 9.5895793492672965e-06 -1.6034593357944216e-12 0 -9.5895793492672965e-06 1 -3.3462490023339342e-07 0
		 -1.6054527499087534e-12 3.3462490023339342e-07 1 0 -85.613998413085938 146.27583312988281 -2.6648030281066895 1;
	setAttr ".RightHandPinky4GX" -type "matrix" 1 9.5895793492672965e-06 -1.6034662746883255e-12 0 -9.5895793492672965e-06 1 -3.3462490023339342e-07 0
		 -1.6054458110148495e-12 3.3462490023339342e-07 1 0 -87.281623840332031 146.27577209472656 -2.722994327545166 1;
createNode HIKState2FK -n "HIKState2FK2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001011";
	setAttr ".ihi" 0;
createNode HIKEffectorFromCharacter -n "HIKEffectorFromCharacter1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001012";
	setAttr ".ihi" 0;
createNode HIKEffectorFromCharacter -n "HIKEffectorFromCharacter2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001013";
	setAttr ".ihi" 0;
createNode HIKState2Effector -n "HIKState2Effector1";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001014";
	setAttr ".ihi" 0;
	setAttr ".HipsEffectorGXM[0]" -type "matrix" 1 -2.4651903288156619e-32 2.2204460492503131e-16 0 -2.4651903288156619e-32 1 2.2204460492503131e-16 0
		 -2.2204460492503131e-16 -2.2204460492503131e-16 1 0 0 93.729995727539062 0 1;
	setAttr ".LeftAnkleEffectorGXM[0]" -type "matrix" 1 -8.3266726846886741e-17 -1.1102229584507075e-16 0 8.3266726846886741e-17 1 -4.6222314991873814e-33 0
		 1.1102229584507075e-16 -4.6222314991873814e-33 1 0 8.9100008010864258 8.1503982543945312 -2.2737367544323206e-13 1;
	setAttr ".RightAnkleEffectorGXM[0]" -type "matrix" 1 2.7755575615628914e-17 -2.6469839555125682e-23 0 -2.7755575615628914e-17 1 -2.2642998587230068e-13 0
		 2.6469833244238441e-23 2.2642998587230068e-13 1 0 -8.9100027084350586 8.1503982543945312 0.00043902400648221374 1;
	setAttr ".LeftWristEffectorGXM[0]" -type "matrix" 1 -3.9443045261050599e-31 8.8817841970012523e-16 0 -3.9443045261050599e-31 1 8.8817841970012523e-16 0
		 -8.8817841970012523e-16 -8.8817841970012523e-16 1 0 71.709861755371094 146.58868408203125 9.3361801037535053e-14 1;
	setAttr ".RightWristEffectorGXM[0]" -type "matrix" 1 -1.2246468525851679e-16 1.0106430784888624e-15 0 1.2246468525851679e-16 1 8.8817841970012523e-16 0
		 -1.0106430784888624e-15 -8.8817841970012523e-16 1 0 -71.709861755371094 146.58897399902344 -3.4020238069785297e-14 1;
	setAttr ".LeftKneeEffectorGXM[0]" -type "matrix" 1 -3.6928289223838082e-23 4.4408920985006262e-16 0 1.0587911840678754e-22 1 -1.5526347851846367e-07 0
		 -4.4408920985006262e-16 1.5526347851846367e-07 1 0 8.9100008010864258 48.851356506347656 -3.7318886825232767e-06 1;
	setAttr ".RightKneeEffectorGXM[0]" -type "matrix" 1 -3.3306690738754696e-16 3.3306690738754696e-16 0 3.3306696032710617e-16 1 -1.1920928955078125e-07 0
		 -3.3306685444798776e-16 1.1920928955078125e-07 1 0 -8.910003662109375 48.851356506347656 0.00043902400648221374 1;
	setAttr ".LeftElbowEffectorGXM[0]" -type "matrix" 1 1.4973569528214313e-22 -1.6858740536918049e-07 0 0 1 8.8817841970012523e-16 0
		 1.6858740536918049e-07 -8.8817841970012523e-16 1 0 45.012718200683594 146.58868408203125 6.9649974264625325e-14 1;
	setAttr ".RightElbowEffectorGXM[0]" -type "matrix" 1 1.0048592410634785e-14 1.6858740536918049e-07 0 1.0048592410634785e-14 1 -1.1920928955078125e-07 0
		 -1.6858740536918049e-07 1.1920928955078125e-07 1 0 -45.012874603271484 146.58897399902344 -1.0308551904344813e-14 1;
	setAttr ".ChestOriginEffectorGXM[0]" -type "matrix" 1 -9.8607613152626476e-32 4.4408920985006262e-16 0 -9.8607613152626476e-32 1 4.4408920985006262e-16 0
		 -4.4408920985006262e-16 -4.4408920985006262e-16 1 0 -3.2713086195813217e-31 107 2.9465328560320664e-15 1;
	setAttr ".ChestEndEffectorGXM[0]" -type "matrix" 1 -3.9443045261050599e-31 8.8817841970012523e-16 0 -3.9443045261050599e-31 1 8.8817841970012523e-16 0
		 -8.8817841970012523e-16 -8.8817841970012523e-16 1 0 4.76837158203125e-07 146.58854675292969 2.967053415025428e-14 1;
	setAttr ".LeftFootEffectorGXM[0]" -type "matrix" 1 3.9197958411630045e-17 -1.1102229584507075e-16 0 -3.9197958411630045e-17 1 1.2246468525851679e-16 0
		 1.1102229584507075e-16 -1.2246468525851679e-16 1 0 8.9100093841552734 1.8880810737609863 12.954720497131348 1;
	setAttr ".RightFootEffectorGXM[0]" -type "matrix" 1 1.502202608741457e-16 -2.6469814311576715e-23 0 -1.502202608741457e-16 1 -2.2630752523691844e-13 0
		 2.6469782757140506e-23 2.2630752523691844e-13 1 0 -8.9110879898071289 1.8880810737609863 12.955187797546387 1;
	setAttr ".LeftShoulderEffectorGXM[0]" -type "matrix" 1 -1.1920928244535389e-07 2.6822090148925781e-07 0
		 1.1920928955078125e-07 1 -2.9802306400483758e-08 0 -2.6822090148925781e-07 2.9802336598550028e-08 1 0 17.707250595092773 146.58868408203125 4.5397852279716391e-14 1
		;
	setAttr ".RightShoulderEffectorGXM[0]" -type "matrix" 1 1.1920928955078125e-07 -8.9406967163085938e-08 0
		 -1.1920928955078125e-07 1 -1.4901154976598718e-08 0 8.9406967163085938e-08 1.4901164746561335e-08 1 0 -17.707275390625 146.58897399902344 1.3943692053308525e-14 1
		;
	setAttr ".HeadEffectorGXM[0]" -type "matrix" 1 -8.8746851837363828e-31 1.3322676295501878e-15 0 -8.8746851837363828e-31 1 1.3322676295501878e-15 0
		 -1.3322676295501878e-15 -1.3322676295501878e-15 1 0 -2.1708549693132678e-29 165 5.0464078309988766e-14 1;
	setAttr ".LeftHipEffectorGXM[0]" -type "matrix" 1 0 2.2204460492503131e-16 0 -1.8716961910267892e-23 1 8.4293702684590244e-08 0
		 -2.2204460492503131e-16 -8.4293702684590244e-08 1 0 8.9100008010864258 93.729995727539062 1.9784176077589479e-15 1;
	setAttr ".RightHipEffectorGXM[0]" -type "matrix" 1 5.9580937517011989e-08 1.5357729310494506e-08 0 -5.9580937517011989e-08 1 7.3338924266863614e-08 0
		 -1.5357725757780827e-08 -7.3338924266863614e-08 1 0 -8.9100008010864258 93.729995727539062 -1.9784176077589479e-15 1;
	setAttr ".LeftHandThumbEffectorGXM[0]" -type "matrix" 1 -9.0204350201373087e-17 9.7144429951406472e-16 0
		 9.0204350201373087e-17 1 5.5337678883660146e-16 0 -9.7144429951406472e-16 -5.5337678883660146e-16 1 0 83.781097412109375 145.25407409667969 4.9898896217346191 1
		;
	setAttr ".LeftHandIndexEffectorGXM[0]" -type "matrix" 1 4.2660814388462837e-18 8.7430063189231078e-16 0
		 -4.2660814388462837e-18 1 1.2476443794382733e-15 0 -8.7430063189231078e-16 -1.2476443794382733e-15 1 0 89.36395263671875 146.78836059570312 3.779543399810791 1
		;
	setAttr ".LeftHandMiddleEffectorGXM[0]" -type "matrix" 1 -2.2771768506876274e-20 8.8817841970012523e-16 0
		 2.2771768506876274e-20 1 1.5339033461880412e-16 0 -8.8817841970012523e-16 -1.5339033461880412e-16 1 0 90.153861999511719 147.08956909179688 1.3052822351455688 1
		;
	setAttr ".LeftHandRingEffectorGXM[0]" -type "matrix" 1 5.9467509411842479e-23 8.8817841970012523e-16 0
		 -5.9467509411842479e-23 1 6.4324904918309166e-16 0 -8.8817841970012523e-16 -6.4324904918309166e-16 1 0 89.369255065917969 146.96859741210938 -0.79315978288650513 1
		;
	setAttr ".LeftHandPinkyEffectorGXM[0]" -type "matrix" 1 -4.18086386844152e-07 8.8819017228226839e-16 0
		 4.18086386844152e-07 1 -4.992767944954693e-14 0 -8.8816926115638305e-16 4.992767944954693e-14 1 0 87.277351379394531 146.27574157714844 -2.4903557300567627 1
		;
	setAttr ".RightHandThumbEffectorGXM[0]" -type "matrix" 1 -4.451232253204233e-16 1.1771765321826359e-15 0
		 4.451232253204233e-16 1 7.7715611723760958e-16 0 -1.1771765321826359e-15 -7.7715611723760958e-16 1 0 -83.777481079101562 145.25442504882812 5.1724491119384766 1
		;
	setAttr ".RightHandIndexEffectorGXM[0]" -type "matrix" 1 -1.2268815637280411e-16 1.0106430784888624e-15 0
		 1.2268815637280411e-16 1 8.7536609346083828e-16 0 -1.0106430784888624e-15 -8.7536609346083828e-16 1 0 -89.363639831542969 146.78871154785156 3.1642501354217529 1
		;
	setAttr ".RightHandMiddleEffectorGXM[0]" -type "matrix" 1 -1.2268814313791431e-16 1.0106430784888624e-15 0
		 1.2268814313791431e-16 1 8.7536614640039748e-16 0 -1.0106430784888624e-15 -8.7536614640039748e-16 1 0 -90.14788818359375 147.08987426757812 0.9694826602935791 1
		;
	setAttr ".RightHandRingEffectorGXM[0]" -type "matrix" 1 -1.2268815637280411e-16 9.9676529068104796e-16 0
		 1.2268815637280411e-16 1 8.7536609346083828e-16 0 -9.9676529068104796e-16 -8.7536609346083828e-16 1 0 -89.363998413085938 146.96890258789062 -1.0980652570724487 1
		;
	setAttr ".RightHandPinkyEffectorGXM[0]" -type "matrix" 1 9.5895793492672965e-06 -1.6034593357944216e-12 0
		 -9.5895793492672965e-06 1 -3.3462490023339342e-07 0 -1.6054527499087534e-12 3.3462490023339342e-07 1 0 -87.281623840332031 146.27577209472656 -2.722994327545166 1
		;
createNode HIKState2Effector -n "HIKState2Effector2";
	rename -uid "C812DC00-0017-6481-5EE2-21A200001015";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C812DC00-0017-6481-5EE2-226E0000107F";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2001\n            -height 1186\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2001\\n    -height 1186\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2001\\n    -height 1186\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C812DC00-0017-6481-5EE2-226E00001080";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyNormal -n "polyNormal1";
	rename -uid "C812DC00-0017-6481-5EE2-23660000115D";
	setAttr ".ics" -type "componentList" 1 "f[55:84]";
	setAttr ".nm" 4;
createNode groupId -n "groupId1";
	rename -uid "C812DC00-0017-6481-5EE2-23660000115F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "C812DC00-0017-6481-5EE2-236600001160";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:84]";
createNode skinCluster -n "skinCluster1";
	rename -uid "C812DC00-0017-6481-5EE2-237500001161";
	setAttr -s 110 ".wl";
	setAttr ".wl[0:109].w"
		2 0 0.5 5 0.5
		2 0 0.5 1 0.5
		2 36 0.72277608805894311 37 0.27722391194105689
		2 12 0.72277530960781389 13 0.27722469039218611
		2 36 0.72277608805894089 37 0.27722391194105911
		2 12 0.72277530960781067 13 0.27722469039218928
		2 0 0.5 5 0.5
		2 0 0.5 1 0.5
		2 9 0.47181416395537218 10 0.52818583604462777
		2 9 0.47181416395537218 10 0.52818583604462777
		2 9 0.47181416395537251 10 0.52818583604462754
		2 9 0.47181416395537251 10 0.52818583604462754
		2 0 0.47756287754902538 9 0.52243712245097462
		2 0 0.47756287754902538 9 0.52243712245097462
		2 0 0.47756287754902527 9 0.52243712245097473
		2 0 0.47756287754902527 9 0.52243712245097473
		2 11 0.5804490342907872 36 0.41955096570921285
		2 11 0.58043827956751304 12 0.41956172043248691
		2 11 0.5804382795675127 12 0.41956172043248724
		2 11 0.58044903429078776 36 0.4195509657092123
		2 11 0.29397912091649553 60 0.70602087908350453
		2 11 0.29397911266072424 60 0.7060208873392757
		2 60 0.5 61 0.5
		2 60 0.5 61 0.5
		2 60 0.5 61 0.5
		2 60 0.5 61 0.5
		2 11 0.085666942940732196 60 0.91433305705926782
		2 60 0.50000000388632582 61 0.49999999611367424
		2 11 0.085666936845941857 60 0.91433306315405816
		2 60 0.50000000388632582 61 0.49999999611367424
		2 13 0.49967669760321376 14 0.50032330239678624
		2 13 0.49967669951929999 14 0.50032330048070006
		2 12 0.72479933796488172 13 0.27520066203511828
		2 12 0.72478791644759122 13 0.27521208355240873
		2 12 0.72479933796487839 13 0.27520066203512172
		2 12 0.72478791644758778 13 0.27521208355241217
		2 13 0.49967669760321387 14 0.50032330239678624
		2 13 0.49967669951929994 14 0.50032330048070006
		2 15 0.95549774492348272 16 0.044502255076517269
		2 14 0.13623643731129173 15 0.86376356268870824
		2 13 0.66801707867145554 14 0.3319829213285444
		2 13 0.66801707867145554 14 0.3319829213285444
		2 13 0.66801707867144933 14 0.33198292132855067
		2 13 0.66801707867144933 14 0.33198292132855067
		2 14 0.16218928132057281 15 0.83781071867942714
		2 14 0.1974406910682886 15 0.80255930893171146
		2 1 0.83207997097386233 2 0.1679200290261377
		2 1 0.83207994245939643 2 0.1679200575406036
		2 0 0.88925094238036417 1 0.11074905761963588
		2 0 0.5 1 0.5
		2 0 0.88925094238036384 1 0.11074905761963617
		2 0 0.5 1 0.5
		2 1 0.83208034452697099 2 0.16791965547302906
		2 1 0.83208031601244925 2 0.16791968398755072
		2 2 0.24695491719802523 3 0.7530450828019748
		2 2 0.24695425278722249 3 0.75304574721277751
		2 1 0.69230761157093446 2 0.30769238842906554
		2 1 0.69230763150863284 2 0.30769236849136716
		2 1 0.69230754376088177 2 0.30769245623911817
		2 1 0.69230756369857349 2 0.30769243630142651
		2 2 0.5 3 0.5
		2 2 0.5 3 0.5
		2 3 0.5 4 0.5
		2 3 0.5 4 0.5
		2 3 0.5 4 0.5
		2 3 0.5 4 0.5
		2 2 0.73949011082974769 3 0.26050988917025225
		2 2 0.73949011082974769 3 0.26050988917025225
		2 2 0.5 3 0.5
		2 2 0.5 3 0.5
		2 37 0.4996778250721427 38 0.50032217492785724
		2 37 0.49967775441615897 38 0.50032224558384109
		2 36 0.72480032804082883 37 0.27519967195917111
		2 36 0.72479093368198055 37 0.2752090663180195
		2 36 0.72480032804082672 37 0.27519967195917333
		2 36 0.72479093368197856 37 0.27520906631802144
		2 37 0.4996778250721427 38 0.50032217492785724
		2 37 0.49967775441615891 38 0.5003222455838412
		2 39 0.9554706718025715 40 0.044529328197428587
		2 38 0.13617887545479615 39 0.86382112454520388
		2 37 0.66801967771162685 38 0.33198032228837315
		2 37 0.66804867548240343 38 0.33195132451759662
		2 37 0.66801967771162751 38 0.33198032228837254
		2 37 0.66804867548240388 38 0.33195132451759612
		2 38 0.16225108335459479 39 0.83774891664540518
		2 38 0.19743764995806423 39 0.80256235004193577
		2 5 0.8321019870379931 6 0.16789801296200688
		2 5 0.8321023019741387 6 0.16789769802586127
		2 0 0.88925094238036406 5 0.11074905761963601
		2 0 0.5 5 0.5
		2 0 0.88925094238036406 5 0.11074905761963603
		2 0 0.5 5 0.5
		2 5 0.83205804182484655 6 0.16794195817515339
		2 5 0.83205835668074757 6 0.16794164331925243
		2 6 0.24704469367360374 7 0.75295530632639629
		2 6 0.24695372892608125 7 0.75304627107391875
		2 5 0.69232182929556185 6 0.30767817070443815
		2 5 0.69232203420328031 6 0.30767796579671969
		2 5 0.69229314238158701 6 0.3077068576184131
		2 5 0.69229334721454805 6 0.30770665278545201
		2 6 0.5 7 0.5
		2 6 0.5 7 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 6 0.73946869041277219 7 0.26053130958722787
		2 6 0.73946898712207088 7 0.26053101287792912
		2 6 0.5 7 0.5
		2 6 0.5 7 0.5;
	setAttr -s 62 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 1.5456753894103583e-31 -100 -1.3922206215568472e-15 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -8.9100008010864258 -93.729995727539062 -1.9784176077589479e-15 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -8.9100008010864258 -48.851356506347656 3.7318886825232767e-06 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -8.9100008010864258 -8.1503982543945241 2.2737367544323206e-13 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 -8.9100093841552734 -1.8880810737609863 -12.954720497131348 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 8.9100008010864258 -93.729995727539062 1.9784176077589479e-15 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 8.910003662109375 -48.851356506347656 -0.00043902400648221374 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999649024296 0 -8.3782542493901572e-05 0 0 1 0 0
		 8.3782542493901572e-05 0 0.99999999649024296 0 8.9100026403805668 -8.150398254394533 -0.0011855266854815846 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999649024296 -4.2590299619172464e-09 -8.3782542385649081e-05 0 0 0.99999999870793521 -5.0834336547225907e-05 0
		 8.3782542493901572e-05 5.0834336368809727e-05 0.99999999519817806 0 8.9100025399592102 -1.8887396776482765 -12.955838349596357 1;
	setAttr ".pm[9]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 3.2713086195813217e-31 -107 -2.9465328560320664e-15 1;
	setAttr ".pm[10]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 1.5761603777859393e-30 -119.66666412353514 -8.5716617180889298e-15 1;
	setAttr ".pm[11]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 4.3864766003194094e-30 -132.33332824707031 -1.7009355011174225e-14 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999991765587 -1.2833092113249327e-05 0 0 1.2833092113249327e-05 0.99999999991765587 0 0
		 0 0 1 0 -7.0018816605839769 -146.58845690920808 -3.5887783088155156e-14 1;
	setAttr ".pm[13]" -type "matrix" 1 -2.8295262149752223e-13 0 0 2.8295262149752223e-13 1 0 0
		 0 0 1 0 -17.707250595134251 -146.58868408202622 -4.5397852279716398e-14 1;
	setAttr ".pm[14]" -type "matrix" 1 -2.8295262149752223e-13 0 0 2.8295262149752223e-13 1 0 0
		 0 0 1 0 -45.012718200725068 -146.58868408201852 -6.9649974264625325e-14 1;
	setAttr ".pm[15]" -type "matrix" 1 -2.8295262149752223e-13 0 0 2.8295262149752223e-13 1 0 0
		 0 0 1 0 -71.709861755412575 -146.58868408201093 -9.336180103753504e-14 1;
	setAttr ".pm[16]" -type "matrix" 1 -2.8295262149752223e-13 0 0 2.8295262149752223e-13 1 0 0
		 0 0 1 0 -76.058624267619379 -145.79017639158002 -4.2824339866638184 1;
	setAttr ".pm[17]" -type "matrix" 0.99999999998648692 5.1986726248073008e-06 0 0 -5.1986726248073008e-06 0.99999999998648692 0 0
		 0 0 1 0 -78.570457639034984 -145.25449781951883 -4.9898881912231445 1;
	setAttr ".pm[18]" -type "matrix" 1 8.255366063057018e-15 0 0 -8.255366063057018e-15 1 0 0
		 0 0 1 0 -81.114349365233167 -145.25407409668037 -4.9898977279663086 1;
	setAttr ".pm[19]" -type "matrix" 1 8.255366063057018e-15 0 0 -8.255366063057018e-15 1 0 0
		 0 0 1 0 -83.781097412108167 -145.25407409668037 -4.9898896217346183 1;
	setAttr ".pm[20]" -type "matrix" 0.99939082706240379 5.2244861264383476e-06 -0.034899495071260507 0 -5.2213035109485335e-06 0.99999999998635225 1.8233192782199237e-07 0
		 0.0348994950717368 0 0.9993908270760431 0 -80.60317273091475 -146.78882710753459 -0.65906088806043506 1;
	setAttr ".pm[21]" -type "matrix" 0.99939082706240379 5.2244861266066505e-06 -0.034899495071260514 0 -5.2213035111167347e-06 0.99999999998635225 1.8233192782786609e-07 0
		 0.034899495071736807 2.646977960169688e-23 0.9993908270760431 0 -84.828492942617345 -146.78883391047268 -0.6587981015547516 1;
	setAttr ".pm[22]" -type "matrix" 0.99939082706240379 5.2244861265519254e-06 -0.034899495071260528 0 -5.2213035110620426e-06 0.99999999998635225 1.8233192782595633e-07 0
		 0.03489949507173682 0 0.9993908270760431 0 -87.482432378458569 -146.78883250873702 -0.65863295706258584 1;
	setAttr ".pm[23]" -type "matrix" 0.99939082706240379 5.2244861267331498e-06 -0.034899495071260521 0 -5.2213035112431569e-06 0.99999999998635225 1.8233192783228091e-07 0
		 0.034899495071736814 0 0.9993908270760431 0 -89.440652264848339 -146.78882747443055 -0.65851094391795184 1;
	setAttr ".pm[24]" -type "matrix" 0.9999999980660832 -2.8295262149752223e-13 -6.2191909699101761e-05 0 2.8295262095031539e-13 1 -1.7597363885298023e-17 0
		 6.2191909699101761e-05 0 0.9999999980660832 0 -80.519825858184447 -147.08956909177408 -1.2996767213331788 1;
	setAttr ".pm[25]" -type "matrix" 0.9999999980660832 -2.8295262149752223e-13 -6.2191909699102913e-05 0 2.8295262095031539e-13 1 -1.7597363885298349e-17 0
		 6.2191909699102913e-05 0 0.9999999980660832 0 -85.383076600010142 -147.08956909177272 -1.2996767004497896 1;
	setAttr ".pm[26]" -type "matrix" 0.9999999980660832 -2.8295262149752223e-13 -6.2191909699102331e-05 0 2.8295262095031539e-13 1 -1.7597363885298183e-17 0
		 6.2191909699102331e-05 0 0.9999999980660832 0 -88.148312506224642 -147.08956909177192 -1.2996765057342552 1;
	setAttr ".pm[27]" -type "matrix" 0.9999999980660832 -2.8295262149752223e-13 -6.2191909699102276e-05 0 2.8295262095031539e-13 1 -1.7597363885298168e-17 0
		 6.2191909699102276e-05 0 0.9999999980660832 0 -90.153943003198179 -147.08956909177135 -1.2996753917767603 1;
	setAttr ".pm[28]" -type "matrix" 0.99999999806587159 -2.8295262149752228e-13 -6.219531484724544e-05 0 2.8295262095025551e-13 1 -1.7598327380891862e-17 0
		 6.219531484724544e-05 0 0.99999999806587159 0 -80.603572949900439 -146.96859741208658 0.79817205495803301 1;
	setAttr ".pm[29]" -type "matrix" 0.99999999806587159 -2.8295262149752228e-13 -6.2195314847244342e-05 0 2.8295262095025551e-13 1 -1.7598327380891551e-17 0
		 6.2195314847244342e-05 0 0.99999999806587159 0 -85.141330814662737 -146.96859741208527 0.79845422263303334 1;
	setAttr ".pm[30]" -type "matrix" 0.99999999806587159 -2.8295262149752228e-13 -6.2195314847244816e-05 0 2.8295262095025551e-13 1 -1.7598327380891686e-17 0
		 6.2195314847244816e-05 0 0.99999999806587159 0 -87.445858092912857 -146.96859741208459 0.79859767264224535 1;
	setAttr ".pm[31]" -type "matrix" 0.99999999806587159 -2.8295262149752228e-13 -6.2195314847245928e-05 0 2.8295262095025551e-13 1 -1.7598327380892001e-17 0
		 6.2195314847245928e-05 0 0.99999999806587159 0 -89.369205562285515 -146.96859741208408 0.79871813030892336 1;
	setAttr ".pm[32]" -type "matrix" 0.9999999999113246 -1.3317316187477278e-05 0 0 1.3317316187477278e-05 0.9999999999113246 0 0
		 0 0 1 0 -80.594088189689273 -146.27457674042975 2.4903564453125 1;
	setAttr ".pm[33]" -type "matrix" 0.99999999991680477 -1.2899229658757472e-05 0 0 1.2899229658757472e-05 0.99999999991680477 0 0
		 0 0 1 0 -83.638124934980041 -146.27461694556879 2.4903564453124996 1;
	setAttr ".pm[34]" -type "matrix" 0.99999999991680477 -1.2899229658236545e-05 0 0 1.2899229658236545e-05 0.99999999991680477 0 0
		 0 0 1 0 -85.61262749868591 -146.2746219935849 2.4903566837310787 1;
	setAttr ".pm[35]" -type "matrix" 0.99999999991680477 -1.2899229658641732e-05 0 0 1.2899229658641732e-05 0.99999999991680477 0 0
		 0 0 1 0 -87.279238216517584 -146.2746157543796 2.4903557300567623 1;
	setAttr ".pm[36]" -type "matrix" 0.9999999991813715 4.0463033622999833e-05 0 0 -4.0463033622999833e-05 0.9999999991813715 0 0
		 0 0 1 0 7.0059309347284531 -146.58826339171205 -2.3453283518287509e-14 1;
	setAttr ".pm[37]" -type "matrix" 1 9.3421295954123837e-13 0 0 -9.3421295954123837e-13 1 0 0
		 0 0 1 0 17.707275390761946 -146.58897399900687 -1.3943692053308522e-14 1;
	setAttr ".pm[38]" -type "matrix" 1 9.3421295954123837e-13 0 0 -9.3421295954123837e-13 1 0 0
		 0 0 1 0 45.012874603408427 -146.5889739989814 1.0308551904344817e-14 1;
	setAttr ".pm[39]" -type "matrix" 1 9.3421295954123837e-13 0 0 -9.3421295954123837e-13 1 0 0
		 0 0 1 0 71.709861755508044 -146.58897399895645 3.4020238069785297e-14 1;
	setAttr ".pm[40]" -type "matrix" 1 9.3421295954123837e-13 0 0 -9.3421295954123837e-13 1 0 0
		 0 0 1 0 76.058242797987731 -145.79048156731176 -4.2828145027160645 1;
	setAttr ".pm[41]" -type "matrix" 0.99999999994478694 1.0508382728710234e-05 0 0 -1.0508382728710234e-05 0.99999999994478694 0 0
		 0 0 1 0 78.572296647944157 -145.25355361271579 -4.9904913902282715 1;
	setAttr ".pm[42]" -type "matrix" 0.99999999997665601 6.8328595261762754e-06 0 0 -6.8328595261762754e-06 0.99999999997665601 0 0
		 0 0 1 0 81.113350594345874 -145.25385555729957 -5.0793118476867667 1;
	setAttr ".pm[43]" -type "matrix" 0.99999999997665601 6.8328595260943054e-06 0 0 -6.8328595260943054e-06 0.99999999997665601 0 0
		 0 0 1 0 83.778473580227782 -145.25385260567768 -5.1724491119384775 1;
	setAttr ".pm[44]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.034900622460286364 0 -9.3364382552119571e-13 1 3.260461379845554e-14 0
		 0.034900622460286364 -6.3108872417680944e-30 0.99939078770613277 0 80.361281020836131 -146.7887115477763 -6.2809294446509503 1;
	setAttr ".pm[45]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.034900622460286378 0 -9.3364382552119571e-13 1 3.2604613798455553e-14 0
		 0.034900622460286378 -6.3108872417680944e-30 0.99939078770613277 0 84.586606565950902 -146.78871154777232 -6.2810442644316558 1;
	setAttr ".pm[46]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.034900622460286336 0 -9.3364382552119571e-13 1 3.2604613798455515e-14 0
		 0.034900622460286336 -6.3108872417680944e-30 0.99939078770613277 0 87.240541730159634 -146.78871154776988 -6.2811161123438168 1;
	setAttr ".pm[47]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.034900622460286357 0 -9.3364382552119571e-13 1 3.2604613798455534e-14 0
		 0.034900622460286357 -6.3108872417680944e-30 0.99939078770613277 0 89.198764104323644 -146.78871154776806 -6.2811690907808568 1;
	setAttr ".pm[48]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.034900622460286364 0 -9.3364382552119571e-13 1 3.260461379845554e-14 0
		 0.034900622460286364 -6.3108872417680944e-30 0.99939078770613277 0 80.425015571829306 -147.08987426750292 -4.1148483475112947 1;
	setAttr ".pm[49]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.034900622460286364 0 -9.3364382552119571e-13 1 3.260461379845554e-14 0
		 0.034900622460286364 -6.3108872417680944e-30 0.99939078770613277 0 85.288264250582202 -147.08987426749837 -4.1149801352496196 1;
	setAttr ".pm[50]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.03490062246028635 0 -9.3364382552119571e-13 1 3.2604613798455527e-14 0
		 0.03490062246028635 -6.3108872417680944e-30 0.99939078770613277 0 88.053503685546161 -147.08987426749579 -4.1150551189362066 1;
	setAttr ".pm[51]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.034900622460286364 0 -9.3364382552119571e-13 1 3.260461379845554e-14 0
		 0.034900622460286364 -6.3108872417680944e-30 0.99939078770613277 0 90.059133433674774 -147.08987426749391 -4.1151094506307491 1;
	setAttr ".pm[52]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.034900622460286364 0 -9.3364382552119571e-13 1 3.260461379845554e-14 0
		 0.034900622460286364 -6.3108872417680944e-30 0.99939078770613277 0 80.582240783692356 -146.96890258781528 -2.0212249610223725 1;
	setAttr ".pm[53]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.034900622460286364 0 -9.3364382552119571e-13 1 3.260461379845554e-14 0
		 0.034900622460286364 -6.3108872417680944e-30 0.99939078770613277 0 85.120004607294391 -146.96890258781107 -2.021348168433676 1;
	setAttr ".pm[54]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.034900622460286357 0 -9.3364382552119571e-13 1 3.2604613798455534e-14 0
		 0.034900622460286357 -6.3108872417680944e-30 0.99939078770613277 0 87.424529849608163 -146.96890258780891 -2.0214105431520859 1;
	setAttr ".pm[55]" -type "matrix" 0.99939078770613277 9.3421295954123837e-13 -0.034900622460286357 0 -9.3364382552119571e-13 1 3.2604613798455534e-14 0
		 0.034900622460286357 -6.3108872417680944e-30 0.99939078770613277 0 89.347879927734638 -146.96890258780712 -2.0214628679431623 1;
	setAttr ".pm[56]" -type "matrix" 0.99939078747191235 -2.1663288486502847e-05 -0.034900622443917548 0 2.1650090944837464e-05 0.99999999976535092 -7.5606225253851107e-07 0
		 0.034900622452106948 -1.0587911840678754e-22 0.99939078770641843 0 80.626976750461651 -146.27770106128247 -0.32455520408847516 1;
	setAttr ".pm[57]" -type "matrix" 0.999390787218289 -3.126455366478396e-05 -0.034900622426192754 0 3.1245506913657693e-05 0.99999999951126362 -1.0911524030698995e-06 0
		 0.034900622443249943 1.9770592845489069e-14 0.99939078770672762 0 83.673371238655719 -146.27849374881694 -0.32458880828848707 1;
	setAttr ".pm[58]" -type "matrix" 0.999390787218289 -3.126455366497589e-05 -0.034900622426192747 0 3.1245506913849522e-05 0.99999999951126362 -1.0911524030765985e-06 0
		 0.034900622443249936 1.9770592845489069e-14 0.99939078770672762 0 85.650274092773486 -146.27850974184028 -0.32464262644212821 1;
	setAttr ".pm[59]" -type "matrix" 0.999390787218289 -3.1264553664979373e-05 -0.03490062242619274 0 3.1245506913852999e-05 0.99999999951126362 -1.0911524030767199e-06 0
		 0.034900622443249929 1.9770592845489069e-14 0.99939078770672762 0 87.318914495772461 -146.27850084424875 -0.32468794330986389 1;
	setAttr ".pm[60]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 9.3825980490543685e-30 -145 -2.8259619511551527e-14 1;
	setAttr ".pm[61]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 2.1708549693132678e-29 -165 -5.0464078309988766e-14 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr -s 24 ".ma";
	setAttr -s 62 ".dpf[0:61]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 24 ".lw";
	setAttr ".mmi" yes;
	setAttr ".ucm" yes;
	setAttr -s 24 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "C812DC00-0017-6481-5EE2-237500001163";
createNode objectSet -n "skinCluster1Set";
	rename -uid "C812DC00-0017-6481-5EE2-237500001164";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "C812DC00-0017-6481-5EE2-237500001165";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "C812DC00-0017-6481-5EE2-237500001166";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "C812DC00-0017-6481-5EE2-237500001167";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId3";
	rename -uid "C812DC00-0017-6481-5EE2-237500001168";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "C812DC00-0017-6481-5EE2-237500001169";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "C812DC00-0017-6481-5EE2-23750000116A";
	setAttr -s 53 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr -s 63 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5456753894103583e-31
		 100 1.3922206215568472e-15 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.9100008010864258
		 -6.2700042724609375 5.8619698620210085e-16 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0
		 -44.878639221191406 -3.7318886845016941e-06 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0
		 -40.700958251953132 3.7318884551496012e-06 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.58306884765625e-06
		 -6.2623171806335378 12.954720497131575 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.9100008010864258
		 -6.2700042724609375 -3.3706382293157951e-15 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.86102294921875e-06
		 -44.878639221191406 0.00043902400648419213 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 -8.3782542591920347e-05 0 0 9.5367431640625e-07
		 -40.700958251953125 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 5.0834336569119656e-05 -8.3782541066640498e-05 0 0 1.0042135656362916e-07
		 -6.262317180633544 12.954748818999514 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 4.1891270521067911e-05 0 0.99999999912256077 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7256332301709635e-31
		 7 1.5543122344752194e-15 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2490295158278072e-30
		 12.666664123535142 5.6251288620568635e-15 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8103162225334704e-30
		 12.666664123535156 8.4376932930852952e-15 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 1.2833092113601569e-05 0 7.0000004768371582
		 14.255218505859375 1.8878428076980931e-14 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.707250119136292
		 -7.8025522043390083e-08 9.5100691915612414e-15 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 -6.4165459152804434e-06 0.99999999997941402 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 27.305467605590817
		 -7.702283255639486e-12 2.4252121984908934e-14 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 26.6971435546875
		 -7.58859641791787e-12 2.3711826772909715e-14 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.3487625122068039
		 -0.79850769043090963 4.2824339866637251 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 -5.1986729077833386e-06 0 2.5125885009764062
		 -0.53608703613349462 0.70745420455932617 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5431365967246364
		 -2.0378544434151991e-06 9.5367431640625e-06 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 2.5993363082847486e-06 0.9999999999966217 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.666748046875
		 2.8421709430404007e-14 -8.1062316903413034e-06 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 -0.034906583408128404 -5.224486409414736e-06 0 8.8219757080078693
		 0.19972229003658981 3.4716694355010054 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 -0.034906584778087217 -5.2244860363806518e-06 0 4.2253202117026376
		 6.8029381168344116e-06 -0.00026278650568356543 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 4.5589926523003553e-08 0.017452406306344214 2.6118451608448307e-06 0.99984769515526439 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 -0.034906584778087217 -5.2244860361576221e-06 0 2.6539394358412238
		 -1.4017356591011776e-06 -0.00016514449216420424 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 4.5589926523003494e-08 0.017452406306344211 2.6118451608448299e-06 0.99984769515526439 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 -0.034906584778087196 -5.2244860363935708e-06 0 1.9582198863897986
		 -5.0343064401658921e-06 -0.00012201314463433643 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 4.5589926523003514e-08 0.017452406306344211 2.6118451608448299e-06 0.99984769515526439 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 -6.2191909739193078e-05 0 0 8.8098831176759234
		 0.50088500976315231 1.3046844005583784 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 -6.2191910648260793e-05 0 0 4.8632507418256949
		 -1.3642420526593924e-12 -2.0883389240111683e-08 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 3.1095955319118408e-05 0 0.99999999951652074 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 -6.2191910648259045e-05 0 0 2.7652359062145138
		 -7.9580786405131221e-13 -1.9471553414085463e-07 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 3.1095955319118401e-05 0 0.99999999951652074 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 -6.2191910648259574e-05 0 0 2.0056304969735237
		 -5.6843418860808015e-13 -1.1139574951357645e-06 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 3.1095955319118401e-05 0 0.99999999951652074 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 -6.2195314887343342e-05 0 0 8.8937606811524574
		 0.37991333007562389 -0.79315888881692687 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 -6.2195314040299905e-05 0 0 4.537757864762284
		 -1.2789769243681803e-12 -0.00028216767500044426 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 3.1097657015138262e-05 0 0.9999999995164679 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 -6.2195314040301491e-05 0 0 2.3045272782501343
		 -6.8212102632969618e-13 -0.00014345000921189843 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 3.1097657015138269e-05 0 0.9999999995164679 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 -6.2195314040302128e-05 0 0 1.9233474693726578
		 -5.1159076974727213e-13 -0.00012045766667789781 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 3.1097657015138269e-05 0 0.9999999995164679 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 1.3317315904918296e-05 0 8.8822784423827272
		 -0.31303405761968861 -2.4903564453125933 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 1.2899229449566522e-05 0 3.0440979007303213
		 5.2371529761785496e-06 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 -6.6586579891119196e-06 0.99999999997783118 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 1.3317315977801326e-05 0 1.9745025637059257
		 5.048016078035289e-06 -2.384185791015625e-07 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 -6.6586579891119213e-06 0.99999999997783118 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 1.3317315978727439e-05 0 1.666610717831631
		 -6.2392052768700523e-06 9.5367431640625e-07 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 -6.6586579891119213e-06 0.99999999997783118 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 -4.0463033634041226e-05 0 -6.9999995231628418
		 14.255218505859375 6.4439285071132835e-15 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.70727587598455
		 -6.0027700499176717e-06 -9.5095914649789868e-15 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 2.0231516348533957e-05 0.99999999979534282 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 -27.305599212646481
		 -2.5465851649641991e-11 -2.4252243957653338e-14 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -26.696987152099602
		 -2.4982682589325123e-11 -2.3711686165440477e-14 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.3483810424797014
		 -0.7984924316446893 4.2828145027160982 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 -1.0508381794690674e-05 0 -2.5125274658198435
		 -0.536102294924234 0.70767688751220703 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 -6.8328598774883817e-06 0 -2.5415878297701937
		 3.8096004857379739e-06 0.088820457458496094 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 5.2541915400571102e-06 0.99999999998619671 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 -6.8328593017207097e-06 0 -2.6651229858819221
		 -2.9516219228753471e-06 0.093137264251708984 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 3.4164296508946936e-06 0.999999999994164 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 -0.034907711483893378 0 0 -8.821670532226733
		 0.1997375488198827 3.4724442958832129 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 -0.03490771353487436 0 0 -4.2253255451147709
		 -3.979039320256561e-12 0.00011481978070371213 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0.017452970598836985 0 0.99984768530875545 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 -0.034907713150901867 0 0 -2.6539351642087325
		 -2.4442670110147446e-12 7.1847912165523553e-05 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0.017452970406880011 0 0.99984768531210622 1
		 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 -0.03490771315090193 0 0 -1.9582223741640092
		 -1.8189894035458565e-12 5.297843703822025e-05 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0.017452970406880011 0 0.99984768531210622 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 -0.034907711483893378 0 0 -8.8097686767582672
		 0.5009002685464452 1.3054584264755589 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 -0.034907713534874346 0 0 -4.8632486787528961
		 -4.5474735088646412e-12 0.00013178773832489554 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0.017452970598836985 0 0.99984768530875545 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 -0.034907713150901895 0 0 -2.7652394349639593
		 -2.5863755581667647e-12 7.4983686588758758e-05 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0.017452970406880011 0 0.99984768531210622 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 -0.034907713150901923 0 0 -2.0056297481286123
		 -1.9042545318370685e-12 5.4331694540721287e-05 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0.017452970406880011 0 0.99984768531210622 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 -0.034907711483893378 0 0 -8.8938293457034661
		 0.37992858885885994 -0.79237675666805685 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 -0.034907713534874346 0 0 -4.5377638236020488
		 -4.2064129956997931e-12 0.00012320741130356083 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0.017452970598836985 0 0.99984768530875545 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 -0.034907713150901902 0 0 -2.3045252423137583
		 -2.1600499167107046e-12 6.2374718410307395e-05 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0.017452970406880011 0 0.99984768531210622 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 -0.034907713150901909 0 0 -1.9233500781264752
		 -1.7905676941154525e-12 5.2324791076419075e-05 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0.017452970406880011 0 0.99984768531210622 1
		 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 -0.034907711475708973 2.1663289422410225e-05 0 -8.8824920654293749
		 -0.31301879883642414 -2.4895741939544336 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 -0.034907713526011949 3.1264553656821504e-05 0 -3.0477980873339874
		 -1.0308777063983143e-05 8.2621289568096667e-05 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 -1.8904436841168736e-07 0.017452970597813155 -1.0829994418811231e-05 0.99984768525010215 1
		 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 -0.034907713150901916 2.1663288475333352e-05 0 -1.9769028541178102
		 1.5993023311011711e-05 5.3818153642304356e-05 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 -1.8904436633247739e-07 0.017452970405856187 -1.0829994418847516e-05 0.99984768525345291 1
		 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 -0.034907713150901902 2.1663288475144897e-05 0 -1.6686404029989745
		 -8.8975915275568696e-06 4.5316867736622246e-05 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 -1.8904436633247741e-07 0.01745297040585618 -1.0829994418847516e-05 0.99984768525345291 1
		 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.9961214487349591e-30
		 12.666671752929688 1.1250264500377305e-14 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2325951644078309e-29
		 20 2.2204458798437236e-14 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr -s 53 ".m";
	setAttr -s 53 ".p";
	setAttr -s 63 ".g[0:62]" yes no no no no no no no no no no no no no 
		no no no no yes yes no yes yes yes no yes yes yes no yes yes yes no yes yes yes no 
		no no no no no yes yes no yes yes yes no yes yes yes no yes yes yes no yes yes yes 
		no no no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
connectAttr "HIKState2SK1.HipsSx" "Character1_Hips.sx";
connectAttr "HIKState2SK1.HipsSy" "Character1_Hips.sy";
connectAttr "HIKState2SK1.HipsSz" "Character1_Hips.sz";
connectAttr "HIKState2SK1.HipsTx" "Character1_Hips.tx";
connectAttr "HIKState2SK1.HipsTy" "Character1_Hips.ty";
connectAttr "HIKState2SK1.HipsTz" "Character1_Hips.tz";
connectAttr "HIKState2SK1.HipsRx" "Character1_Hips.rx";
connectAttr "HIKState2SK1.HipsRy" "Character1_Hips.ry";
connectAttr "HIKState2SK1.HipsRz" "Character1_Hips.rz";
connectAttr "Character1_Hips.s" "Character1_LeftUpLeg.is";
connectAttr "HIKState2SK1.LeftUpLegSx" "Character1_LeftUpLeg.sx";
connectAttr "HIKState2SK1.LeftUpLegSy" "Character1_LeftUpLeg.sy";
connectAttr "HIKState2SK1.LeftUpLegSz" "Character1_LeftUpLeg.sz";
connectAttr "HIKState2SK1.LeftUpLegTx" "Character1_LeftUpLeg.tx";
connectAttr "HIKState2SK1.LeftUpLegTy" "Character1_LeftUpLeg.ty";
connectAttr "HIKState2SK1.LeftUpLegTz" "Character1_LeftUpLeg.tz";
connectAttr "HIKState2SK1.LeftUpLegRx" "Character1_LeftUpLeg.rx";
connectAttr "HIKState2SK1.LeftUpLegRy" "Character1_LeftUpLeg.ry";
connectAttr "HIKState2SK1.LeftUpLegRz" "Character1_LeftUpLeg.rz";
connectAttr "Character1_LeftUpLeg.s" "Character1_LeftLeg.is";
connectAttr "HIKState2SK1.LeftLegSx" "Character1_LeftLeg.sx";
connectAttr "HIKState2SK1.LeftLegSy" "Character1_LeftLeg.sy";
connectAttr "HIKState2SK1.LeftLegSz" "Character1_LeftLeg.sz";
connectAttr "HIKState2SK1.LeftLegTx" "Character1_LeftLeg.tx";
connectAttr "HIKState2SK1.LeftLegTy" "Character1_LeftLeg.ty";
connectAttr "HIKState2SK1.LeftLegTz" "Character1_LeftLeg.tz";
connectAttr "HIKState2SK1.LeftLegRx" "Character1_LeftLeg.rx";
connectAttr "HIKState2SK1.LeftLegRy" "Character1_LeftLeg.ry";
connectAttr "HIKState2SK1.LeftLegRz" "Character1_LeftLeg.rz";
connectAttr "Character1_LeftLeg.s" "Character1_LeftFoot.is";
connectAttr "HIKState2SK1.LeftFootSx" "Character1_LeftFoot.sx";
connectAttr "HIKState2SK1.LeftFootSy" "Character1_LeftFoot.sy";
connectAttr "HIKState2SK1.LeftFootSz" "Character1_LeftFoot.sz";
connectAttr "HIKState2SK1.LeftFootTx" "Character1_LeftFoot.tx";
connectAttr "HIKState2SK1.LeftFootTy" "Character1_LeftFoot.ty";
connectAttr "HIKState2SK1.LeftFootTz" "Character1_LeftFoot.tz";
connectAttr "HIKState2SK1.LeftFootRx" "Character1_LeftFoot.rx";
connectAttr "HIKState2SK1.LeftFootRy" "Character1_LeftFoot.ry";
connectAttr "HIKState2SK1.LeftFootRz" "Character1_LeftFoot.rz";
connectAttr "Character1_LeftFoot.s" "Character1_LeftToeBase.is";
connectAttr "HIKState2SK1.LeftToeBaseTx" "Character1_LeftToeBase.tx";
connectAttr "HIKState2SK1.LeftToeBaseTy" "Character1_LeftToeBase.ty";
connectAttr "HIKState2SK1.LeftToeBaseTz" "Character1_LeftToeBase.tz";
connectAttr "HIKState2SK1.LeftToeBaseRx" "Character1_LeftToeBase.rx";
connectAttr "HIKState2SK1.LeftToeBaseRy" "Character1_LeftToeBase.ry";
connectAttr "HIKState2SK1.LeftToeBaseRz" "Character1_LeftToeBase.rz";
connectAttr "HIKState2SK1.LeftToeBaseSx" "Character1_LeftToeBase.sx";
connectAttr "HIKState2SK1.LeftToeBaseSy" "Character1_LeftToeBase.sy";
connectAttr "HIKState2SK1.LeftToeBaseSz" "Character1_LeftToeBase.sz";
connectAttr "Character1_Hips.s" "Character1_RightUpLeg.is";
connectAttr "HIKState2SK1.RightUpLegSx" "Character1_RightUpLeg.sx";
connectAttr "HIKState2SK1.RightUpLegSy" "Character1_RightUpLeg.sy";
connectAttr "HIKState2SK1.RightUpLegSz" "Character1_RightUpLeg.sz";
connectAttr "HIKState2SK1.RightUpLegTx" "Character1_RightUpLeg.tx";
connectAttr "HIKState2SK1.RightUpLegTy" "Character1_RightUpLeg.ty";
connectAttr "HIKState2SK1.RightUpLegTz" "Character1_RightUpLeg.tz";
connectAttr "HIKState2SK1.RightUpLegRx" "Character1_RightUpLeg.rx";
connectAttr "HIKState2SK1.RightUpLegRy" "Character1_RightUpLeg.ry";
connectAttr "HIKState2SK1.RightUpLegRz" "Character1_RightUpLeg.rz";
connectAttr "Character1_RightUpLeg.s" "Character1_RightLeg.is";
connectAttr "HIKState2SK1.RightLegSx" "Character1_RightLeg.sx";
connectAttr "HIKState2SK1.RightLegSy" "Character1_RightLeg.sy";
connectAttr "HIKState2SK1.RightLegSz" "Character1_RightLeg.sz";
connectAttr "HIKState2SK1.RightLegTx" "Character1_RightLeg.tx";
connectAttr "HIKState2SK1.RightLegTy" "Character1_RightLeg.ty";
connectAttr "HIKState2SK1.RightLegTz" "Character1_RightLeg.tz";
connectAttr "HIKState2SK1.RightLegRx" "Character1_RightLeg.rx";
connectAttr "HIKState2SK1.RightLegRy" "Character1_RightLeg.ry";
connectAttr "HIKState2SK1.RightLegRz" "Character1_RightLeg.rz";
connectAttr "Character1_RightLeg.s" "Character1_RightFoot.is";
connectAttr "HIKState2SK1.RightFootSx" "Character1_RightFoot.sx";
connectAttr "HIKState2SK1.RightFootSy" "Character1_RightFoot.sy";
connectAttr "HIKState2SK1.RightFootSz" "Character1_RightFoot.sz";
connectAttr "HIKState2SK1.RightFootTx" "Character1_RightFoot.tx";
connectAttr "HIKState2SK1.RightFootTy" "Character1_RightFoot.ty";
connectAttr "HIKState2SK1.RightFootTz" "Character1_RightFoot.tz";
connectAttr "HIKState2SK1.RightFootRx" "Character1_RightFoot.rx";
connectAttr "HIKState2SK1.RightFootRy" "Character1_RightFoot.ry";
connectAttr "HIKState2SK1.RightFootRz" "Character1_RightFoot.rz";
connectAttr "Character1_RightFoot.s" "Character1_RightToeBase.is";
connectAttr "HIKState2SK1.RightToeBaseTx" "Character1_RightToeBase.tx";
connectAttr "HIKState2SK1.RightToeBaseTy" "Character1_RightToeBase.ty";
connectAttr "HIKState2SK1.RightToeBaseTz" "Character1_RightToeBase.tz";
connectAttr "HIKState2SK1.RightToeBaseRx" "Character1_RightToeBase.rx";
connectAttr "HIKState2SK1.RightToeBaseRy" "Character1_RightToeBase.ry";
connectAttr "HIKState2SK1.RightToeBaseRz" "Character1_RightToeBase.rz";
connectAttr "HIKState2SK1.RightToeBaseSx" "Character1_RightToeBase.sx";
connectAttr "HIKState2SK1.RightToeBaseSy" "Character1_RightToeBase.sy";
connectAttr "HIKState2SK1.RightToeBaseSz" "Character1_RightToeBase.sz";
connectAttr "Character1_Hips.s" "Character1_Spine.is";
connectAttr "HIKState2SK1.SpineSx" "Character1_Spine.sx";
connectAttr "HIKState2SK1.SpineSy" "Character1_Spine.sy";
connectAttr "HIKState2SK1.SpineSz" "Character1_Spine.sz";
connectAttr "HIKState2SK1.SpineTx" "Character1_Spine.tx";
connectAttr "HIKState2SK1.SpineTy" "Character1_Spine.ty";
connectAttr "HIKState2SK1.SpineTz" "Character1_Spine.tz";
connectAttr "HIKState2SK1.SpineRx" "Character1_Spine.rx";
connectAttr "HIKState2SK1.SpineRy" "Character1_Spine.ry";
connectAttr "HIKState2SK1.SpineRz" "Character1_Spine.rz";
connectAttr "Character1_Spine.s" "Character1_Spine1.is";
connectAttr "HIKState2SK1.Spine1Sx" "Character1_Spine1.sx";
connectAttr "HIKState2SK1.Spine1Sy" "Character1_Spine1.sy";
connectAttr "HIKState2SK1.Spine1Sz" "Character1_Spine1.sz";
connectAttr "HIKState2SK1.Spine1Tx" "Character1_Spine1.tx";
connectAttr "HIKState2SK1.Spine1Ty" "Character1_Spine1.ty";
connectAttr "HIKState2SK1.Spine1Tz" "Character1_Spine1.tz";
connectAttr "HIKState2SK1.Spine1Rx" "Character1_Spine1.rx";
connectAttr "HIKState2SK1.Spine1Ry" "Character1_Spine1.ry";
connectAttr "HIKState2SK1.Spine1Rz" "Character1_Spine1.rz";
connectAttr "Character1_Spine1.s" "Character1_Spine2.is";
connectAttr "HIKState2SK1.Spine2Sx" "Character1_Spine2.sx";
connectAttr "HIKState2SK1.Spine2Sy" "Character1_Spine2.sy";
connectAttr "HIKState2SK1.Spine2Sz" "Character1_Spine2.sz";
connectAttr "HIKState2SK1.Spine2Tx" "Character1_Spine2.tx";
connectAttr "HIKState2SK1.Spine2Ty" "Character1_Spine2.ty";
connectAttr "HIKState2SK1.Spine2Tz" "Character1_Spine2.tz";
connectAttr "HIKState2SK1.Spine2Rx" "Character1_Spine2.rx";
connectAttr "HIKState2SK1.Spine2Ry" "Character1_Spine2.ry";
connectAttr "HIKState2SK1.Spine2Rz" "Character1_Spine2.rz";
connectAttr "Character1_Spine2.s" "Character1_LeftShoulder.is";
connectAttr "HIKState2SK1.LeftShoulderSx" "Character1_LeftShoulder.sx";
connectAttr "HIKState2SK1.LeftShoulderSy" "Character1_LeftShoulder.sy";
connectAttr "HIKState2SK1.LeftShoulderSz" "Character1_LeftShoulder.sz";
connectAttr "HIKState2SK1.LeftShoulderTx" "Character1_LeftShoulder.tx";
connectAttr "HIKState2SK1.LeftShoulderTy" "Character1_LeftShoulder.ty";
connectAttr "HIKState2SK1.LeftShoulderTz" "Character1_LeftShoulder.tz";
connectAttr "HIKState2SK1.LeftShoulderRx" "Character1_LeftShoulder.rx";
connectAttr "HIKState2SK1.LeftShoulderRy" "Character1_LeftShoulder.ry";
connectAttr "HIKState2SK1.LeftShoulderRz" "Character1_LeftShoulder.rz";
connectAttr "Character1_LeftShoulder.s" "Character1_LeftArm.is";
connectAttr "HIKState2SK1.LeftArmSx" "Character1_LeftArm.sx";
connectAttr "HIKState2SK1.LeftArmSy" "Character1_LeftArm.sy";
connectAttr "HIKState2SK1.LeftArmSz" "Character1_LeftArm.sz";
connectAttr "HIKState2SK1.LeftArmTx" "Character1_LeftArm.tx";
connectAttr "HIKState2SK1.LeftArmTy" "Character1_LeftArm.ty";
connectAttr "HIKState2SK1.LeftArmTz" "Character1_LeftArm.tz";
connectAttr "HIKState2SK1.LeftArmRx" "Character1_LeftArm.rx";
connectAttr "HIKState2SK1.LeftArmRy" "Character1_LeftArm.ry";
connectAttr "HIKState2SK1.LeftArmRz" "Character1_LeftArm.rz";
connectAttr "Character1_LeftArm.s" "Character1_LeftForeArm.is";
connectAttr "HIKState2SK1.LeftForeArmSx" "Character1_LeftForeArm.sx";
connectAttr "HIKState2SK1.LeftForeArmSy" "Character1_LeftForeArm.sy";
connectAttr "HIKState2SK1.LeftForeArmSz" "Character1_LeftForeArm.sz";
connectAttr "HIKState2SK1.LeftForeArmTx" "Character1_LeftForeArm.tx";
connectAttr "HIKState2SK1.LeftForeArmTy" "Character1_LeftForeArm.ty";
connectAttr "HIKState2SK1.LeftForeArmTz" "Character1_LeftForeArm.tz";
connectAttr "HIKState2SK1.LeftForeArmRx" "Character1_LeftForeArm.rx";
connectAttr "HIKState2SK1.LeftForeArmRy" "Character1_LeftForeArm.ry";
connectAttr "HIKState2SK1.LeftForeArmRz" "Character1_LeftForeArm.rz";
connectAttr "Character1_LeftForeArm.s" "Character1_LeftHand.is";
connectAttr "HIKState2SK1.LeftHandSx" "Character1_LeftHand.sx";
connectAttr "HIKState2SK1.LeftHandSy" "Character1_LeftHand.sy";
connectAttr "HIKState2SK1.LeftHandSz" "Character1_LeftHand.sz";
connectAttr "HIKState2SK1.LeftHandTx" "Character1_LeftHand.tx";
connectAttr "HIKState2SK1.LeftHandTy" "Character1_LeftHand.ty";
connectAttr "HIKState2SK1.LeftHandTz" "Character1_LeftHand.tz";
connectAttr "HIKState2SK1.LeftHandRx" "Character1_LeftHand.rx";
connectAttr "HIKState2SK1.LeftHandRy" "Character1_LeftHand.ry";
connectAttr "HIKState2SK1.LeftHandRz" "Character1_LeftHand.rz";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandThumb1.is";
connectAttr "HIKState2SK1.LeftHandThumb1Sx" "Character1_LeftHandThumb1.sx";
connectAttr "HIKState2SK1.LeftHandThumb1Sy" "Character1_LeftHandThumb1.sy";
connectAttr "HIKState2SK1.LeftHandThumb1Sz" "Character1_LeftHandThumb1.sz";
connectAttr "HIKState2SK1.LeftHandThumb1Tx" "Character1_LeftHandThumb1.tx";
connectAttr "HIKState2SK1.LeftHandThumb1Ty" "Character1_LeftHandThumb1.ty";
connectAttr "HIKState2SK1.LeftHandThumb1Tz" "Character1_LeftHandThumb1.tz";
connectAttr "HIKState2SK1.LeftHandThumb1Rx" "Character1_LeftHandThumb1.rx";
connectAttr "HIKState2SK1.LeftHandThumb1Ry" "Character1_LeftHandThumb1.ry";
connectAttr "HIKState2SK1.LeftHandThumb1Rz" "Character1_LeftHandThumb1.rz";
connectAttr "Character1_LeftHandThumb1.s" "Character1_LeftHandThumb2.is";
connectAttr "HIKState2SK1.LeftHandThumb2Sx" "Character1_LeftHandThumb2.sx";
connectAttr "HIKState2SK1.LeftHandThumb2Sy" "Character1_LeftHandThumb2.sy";
connectAttr "HIKState2SK1.LeftHandThumb2Sz" "Character1_LeftHandThumb2.sz";
connectAttr "HIKState2SK1.LeftHandThumb2Tx" "Character1_LeftHandThumb2.tx";
connectAttr "HIKState2SK1.LeftHandThumb2Ty" "Character1_LeftHandThumb2.ty";
connectAttr "HIKState2SK1.LeftHandThumb2Tz" "Character1_LeftHandThumb2.tz";
connectAttr "HIKState2SK1.LeftHandThumb2Rx" "Character1_LeftHandThumb2.rx";
connectAttr "HIKState2SK1.LeftHandThumb2Ry" "Character1_LeftHandThumb2.ry";
connectAttr "HIKState2SK1.LeftHandThumb2Rz" "Character1_LeftHandThumb2.rz";
connectAttr "Character1_LeftHandThumb2.s" "Character1_LeftHandThumb3.is";
connectAttr "HIKState2SK1.LeftHandThumb3Sx" "Character1_LeftHandThumb3.sx";
connectAttr "HIKState2SK1.LeftHandThumb3Sy" "Character1_LeftHandThumb3.sy";
connectAttr "HIKState2SK1.LeftHandThumb3Sz" "Character1_LeftHandThumb3.sz";
connectAttr "HIKState2SK1.LeftHandThumb3Tx" "Character1_LeftHandThumb3.tx";
connectAttr "HIKState2SK1.LeftHandThumb3Ty" "Character1_LeftHandThumb3.ty";
connectAttr "HIKState2SK1.LeftHandThumb3Tz" "Character1_LeftHandThumb3.tz";
connectAttr "HIKState2SK1.LeftHandThumb3Rx" "Character1_LeftHandThumb3.rx";
connectAttr "HIKState2SK1.LeftHandThumb3Ry" "Character1_LeftHandThumb3.ry";
connectAttr "HIKState2SK1.LeftHandThumb3Rz" "Character1_LeftHandThumb3.rz";
connectAttr "Character1_LeftHandThumb3.s" "Character1_LeftHandThumb4.is";
connectAttr "HIKState2SK1.LeftHandThumb4Tx" "Character1_LeftHandThumb4.tx";
connectAttr "HIKState2SK1.LeftHandThumb4Ty" "Character1_LeftHandThumb4.ty";
connectAttr "HIKState2SK1.LeftHandThumb4Tz" "Character1_LeftHandThumb4.tz";
connectAttr "HIKState2SK1.LeftHandThumb4Rx" "Character1_LeftHandThumb4.rx";
connectAttr "HIKState2SK1.LeftHandThumb4Ry" "Character1_LeftHandThumb4.ry";
connectAttr "HIKState2SK1.LeftHandThumb4Rz" "Character1_LeftHandThumb4.rz";
connectAttr "HIKState2SK1.LeftHandThumb4Sx" "Character1_LeftHandThumb4.sx";
connectAttr "HIKState2SK1.LeftHandThumb4Sy" "Character1_LeftHandThumb4.sy";
connectAttr "HIKState2SK1.LeftHandThumb4Sz" "Character1_LeftHandThumb4.sz";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandIndex1.is";
connectAttr "HIKState2SK1.LeftHandIndex1Sx" "Character1_LeftHandIndex1.sx";
connectAttr "HIKState2SK1.LeftHandIndex1Sy" "Character1_LeftHandIndex1.sy";
connectAttr "HIKState2SK1.LeftHandIndex1Sz" "Character1_LeftHandIndex1.sz";
connectAttr "HIKState2SK1.LeftHandIndex1Tx" "Character1_LeftHandIndex1.tx";
connectAttr "HIKState2SK1.LeftHandIndex1Ty" "Character1_LeftHandIndex1.ty";
connectAttr "HIKState2SK1.LeftHandIndex1Tz" "Character1_LeftHandIndex1.tz";
connectAttr "HIKState2SK1.LeftHandIndex1Rx" "Character1_LeftHandIndex1.rx";
connectAttr "HIKState2SK1.LeftHandIndex1Ry" "Character1_LeftHandIndex1.ry";
connectAttr "HIKState2SK1.LeftHandIndex1Rz" "Character1_LeftHandIndex1.rz";
connectAttr "Character1_LeftHandIndex1.s" "Character1_LeftHandIndex2.is";
connectAttr "HIKState2SK1.LeftHandIndex2Sx" "Character1_LeftHandIndex2.sx";
connectAttr "HIKState2SK1.LeftHandIndex2Sy" "Character1_LeftHandIndex2.sy";
connectAttr "HIKState2SK1.LeftHandIndex2Sz" "Character1_LeftHandIndex2.sz";
connectAttr "HIKState2SK1.LeftHandIndex2Tx" "Character1_LeftHandIndex2.tx";
connectAttr "HIKState2SK1.LeftHandIndex2Ty" "Character1_LeftHandIndex2.ty";
connectAttr "HIKState2SK1.LeftHandIndex2Tz" "Character1_LeftHandIndex2.tz";
connectAttr "HIKState2SK1.LeftHandIndex2Rx" "Character1_LeftHandIndex2.rx";
connectAttr "HIKState2SK1.LeftHandIndex2Ry" "Character1_LeftHandIndex2.ry";
connectAttr "HIKState2SK1.LeftHandIndex2Rz" "Character1_LeftHandIndex2.rz";
connectAttr "Character1_LeftHandIndex2.s" "Character1_LeftHandIndex3.is";
connectAttr "HIKState2SK1.LeftHandIndex3Sx" "Character1_LeftHandIndex3.sx";
connectAttr "HIKState2SK1.LeftHandIndex3Sy" "Character1_LeftHandIndex3.sy";
connectAttr "HIKState2SK1.LeftHandIndex3Sz" "Character1_LeftHandIndex3.sz";
connectAttr "HIKState2SK1.LeftHandIndex3Tx" "Character1_LeftHandIndex3.tx";
connectAttr "HIKState2SK1.LeftHandIndex3Ty" "Character1_LeftHandIndex3.ty";
connectAttr "HIKState2SK1.LeftHandIndex3Tz" "Character1_LeftHandIndex3.tz";
connectAttr "HIKState2SK1.LeftHandIndex3Rx" "Character1_LeftHandIndex3.rx";
connectAttr "HIKState2SK1.LeftHandIndex3Ry" "Character1_LeftHandIndex3.ry";
connectAttr "HIKState2SK1.LeftHandIndex3Rz" "Character1_LeftHandIndex3.rz";
connectAttr "Character1_LeftHandIndex3.s" "Character1_LeftHandIndex4.is";
connectAttr "HIKState2SK1.LeftHandIndex4Tx" "Character1_LeftHandIndex4.tx";
connectAttr "HIKState2SK1.LeftHandIndex4Ty" "Character1_LeftHandIndex4.ty";
connectAttr "HIKState2SK1.LeftHandIndex4Tz" "Character1_LeftHandIndex4.tz";
connectAttr "HIKState2SK1.LeftHandIndex4Rx" "Character1_LeftHandIndex4.rx";
connectAttr "HIKState2SK1.LeftHandIndex4Ry" "Character1_LeftHandIndex4.ry";
connectAttr "HIKState2SK1.LeftHandIndex4Rz" "Character1_LeftHandIndex4.rz";
connectAttr "HIKState2SK1.LeftHandIndex4Sx" "Character1_LeftHandIndex4.sx";
connectAttr "HIKState2SK1.LeftHandIndex4Sy" "Character1_LeftHandIndex4.sy";
connectAttr "HIKState2SK1.LeftHandIndex4Sz" "Character1_LeftHandIndex4.sz";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandMiddle1.is";
connectAttr "HIKState2SK1.LeftHandMiddle1Sx" "Character1_LeftHandMiddle1.sx";
connectAttr "HIKState2SK1.LeftHandMiddle1Sy" "Character1_LeftHandMiddle1.sy";
connectAttr "HIKState2SK1.LeftHandMiddle1Sz" "Character1_LeftHandMiddle1.sz";
connectAttr "HIKState2SK1.LeftHandMiddle1Tx" "Character1_LeftHandMiddle1.tx";
connectAttr "HIKState2SK1.LeftHandMiddle1Ty" "Character1_LeftHandMiddle1.ty";
connectAttr "HIKState2SK1.LeftHandMiddle1Tz" "Character1_LeftHandMiddle1.tz";
connectAttr "HIKState2SK1.LeftHandMiddle1Rx" "Character1_LeftHandMiddle1.rx";
connectAttr "HIKState2SK1.LeftHandMiddle1Ry" "Character1_LeftHandMiddle1.ry";
connectAttr "HIKState2SK1.LeftHandMiddle1Rz" "Character1_LeftHandMiddle1.rz";
connectAttr "Character1_LeftHandMiddle1.s" "Character1_LeftHandMiddle2.is";
connectAttr "HIKState2SK1.LeftHandMiddle2Sx" "Character1_LeftHandMiddle2.sx";
connectAttr "HIKState2SK1.LeftHandMiddle2Sy" "Character1_LeftHandMiddle2.sy";
connectAttr "HIKState2SK1.LeftHandMiddle2Sz" "Character1_LeftHandMiddle2.sz";
connectAttr "HIKState2SK1.LeftHandMiddle2Tx" "Character1_LeftHandMiddle2.tx";
connectAttr "HIKState2SK1.LeftHandMiddle2Ty" "Character1_LeftHandMiddle2.ty";
connectAttr "HIKState2SK1.LeftHandMiddle2Tz" "Character1_LeftHandMiddle2.tz";
connectAttr "HIKState2SK1.LeftHandMiddle2Rx" "Character1_LeftHandMiddle2.rx";
connectAttr "HIKState2SK1.LeftHandMiddle2Ry" "Character1_LeftHandMiddle2.ry";
connectAttr "HIKState2SK1.LeftHandMiddle2Rz" "Character1_LeftHandMiddle2.rz";
connectAttr "Character1_LeftHandMiddle2.s" "Character1_LeftHandMiddle3.is";
connectAttr "HIKState2SK1.LeftHandMiddle3Sx" "Character1_LeftHandMiddle3.sx";
connectAttr "HIKState2SK1.LeftHandMiddle3Sy" "Character1_LeftHandMiddle3.sy";
connectAttr "HIKState2SK1.LeftHandMiddle3Sz" "Character1_LeftHandMiddle3.sz";
connectAttr "HIKState2SK1.LeftHandMiddle3Tx" "Character1_LeftHandMiddle3.tx";
connectAttr "HIKState2SK1.LeftHandMiddle3Ty" "Character1_LeftHandMiddle3.ty";
connectAttr "HIKState2SK1.LeftHandMiddle3Tz" "Character1_LeftHandMiddle3.tz";
connectAttr "HIKState2SK1.LeftHandMiddle3Rx" "Character1_LeftHandMiddle3.rx";
connectAttr "HIKState2SK1.LeftHandMiddle3Ry" "Character1_LeftHandMiddle3.ry";
connectAttr "HIKState2SK1.LeftHandMiddle3Rz" "Character1_LeftHandMiddle3.rz";
connectAttr "Character1_LeftHandMiddle3.s" "Character1_LeftHandMiddle4.is";
connectAttr "HIKState2SK1.LeftHandMiddle4Tx" "Character1_LeftHandMiddle4.tx";
connectAttr "HIKState2SK1.LeftHandMiddle4Ty" "Character1_LeftHandMiddle4.ty";
connectAttr "HIKState2SK1.LeftHandMiddle4Tz" "Character1_LeftHandMiddle4.tz";
connectAttr "HIKState2SK1.LeftHandMiddle4Rx" "Character1_LeftHandMiddle4.rx";
connectAttr "HIKState2SK1.LeftHandMiddle4Ry" "Character1_LeftHandMiddle4.ry";
connectAttr "HIKState2SK1.LeftHandMiddle4Rz" "Character1_LeftHandMiddle4.rz";
connectAttr "HIKState2SK1.LeftHandMiddle4Sx" "Character1_LeftHandMiddle4.sx";
connectAttr "HIKState2SK1.LeftHandMiddle4Sy" "Character1_LeftHandMiddle4.sy";
connectAttr "HIKState2SK1.LeftHandMiddle4Sz" "Character1_LeftHandMiddle4.sz";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandRing1.is";
connectAttr "HIKState2SK1.LeftHandRing1Sx" "Character1_LeftHandRing1.sx";
connectAttr "HIKState2SK1.LeftHandRing1Sy" "Character1_LeftHandRing1.sy";
connectAttr "HIKState2SK1.LeftHandRing1Sz" "Character1_LeftHandRing1.sz";
connectAttr "HIKState2SK1.LeftHandRing1Tx" "Character1_LeftHandRing1.tx";
connectAttr "HIKState2SK1.LeftHandRing1Ty" "Character1_LeftHandRing1.ty";
connectAttr "HIKState2SK1.LeftHandRing1Tz" "Character1_LeftHandRing1.tz";
connectAttr "HIKState2SK1.LeftHandRing1Rx" "Character1_LeftHandRing1.rx";
connectAttr "HIKState2SK1.LeftHandRing1Ry" "Character1_LeftHandRing1.ry";
connectAttr "HIKState2SK1.LeftHandRing1Rz" "Character1_LeftHandRing1.rz";
connectAttr "Character1_LeftHandRing1.s" "Character1_LeftHandRing2.is";
connectAttr "HIKState2SK1.LeftHandRing2Sx" "Character1_LeftHandRing2.sx";
connectAttr "HIKState2SK1.LeftHandRing2Sy" "Character1_LeftHandRing2.sy";
connectAttr "HIKState2SK1.LeftHandRing2Sz" "Character1_LeftHandRing2.sz";
connectAttr "HIKState2SK1.LeftHandRing2Tx" "Character1_LeftHandRing2.tx";
connectAttr "HIKState2SK1.LeftHandRing2Ty" "Character1_LeftHandRing2.ty";
connectAttr "HIKState2SK1.LeftHandRing2Tz" "Character1_LeftHandRing2.tz";
connectAttr "HIKState2SK1.LeftHandRing2Rx" "Character1_LeftHandRing2.rx";
connectAttr "HIKState2SK1.LeftHandRing2Ry" "Character1_LeftHandRing2.ry";
connectAttr "HIKState2SK1.LeftHandRing2Rz" "Character1_LeftHandRing2.rz";
connectAttr "Character1_LeftHandRing2.s" "Character1_LeftHandRing3.is";
connectAttr "HIKState2SK1.LeftHandRing3Sx" "Character1_LeftHandRing3.sx";
connectAttr "HIKState2SK1.LeftHandRing3Sy" "Character1_LeftHandRing3.sy";
connectAttr "HIKState2SK1.LeftHandRing3Sz" "Character1_LeftHandRing3.sz";
connectAttr "HIKState2SK1.LeftHandRing3Tx" "Character1_LeftHandRing3.tx";
connectAttr "HIKState2SK1.LeftHandRing3Ty" "Character1_LeftHandRing3.ty";
connectAttr "HIKState2SK1.LeftHandRing3Tz" "Character1_LeftHandRing3.tz";
connectAttr "HIKState2SK1.LeftHandRing3Rx" "Character1_LeftHandRing3.rx";
connectAttr "HIKState2SK1.LeftHandRing3Ry" "Character1_LeftHandRing3.ry";
connectAttr "HIKState2SK1.LeftHandRing3Rz" "Character1_LeftHandRing3.rz";
connectAttr "Character1_LeftHandRing3.s" "Character1_LeftHandRing4.is";
connectAttr "HIKState2SK1.LeftHandRing4Tx" "Character1_LeftHandRing4.tx";
connectAttr "HIKState2SK1.LeftHandRing4Ty" "Character1_LeftHandRing4.ty";
connectAttr "HIKState2SK1.LeftHandRing4Tz" "Character1_LeftHandRing4.tz";
connectAttr "HIKState2SK1.LeftHandRing4Rx" "Character1_LeftHandRing4.rx";
connectAttr "HIKState2SK1.LeftHandRing4Ry" "Character1_LeftHandRing4.ry";
connectAttr "HIKState2SK1.LeftHandRing4Rz" "Character1_LeftHandRing4.rz";
connectAttr "HIKState2SK1.LeftHandRing4Sx" "Character1_LeftHandRing4.sx";
connectAttr "HIKState2SK1.LeftHandRing4Sy" "Character1_LeftHandRing4.sy";
connectAttr "HIKState2SK1.LeftHandRing4Sz" "Character1_LeftHandRing4.sz";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandPinky1.is";
connectAttr "HIKState2SK1.LeftHandPinky1Sx" "Character1_LeftHandPinky1.sx";
connectAttr "HIKState2SK1.LeftHandPinky1Sy" "Character1_LeftHandPinky1.sy";
connectAttr "HIKState2SK1.LeftHandPinky1Sz" "Character1_LeftHandPinky1.sz";
connectAttr "HIKState2SK1.LeftHandPinky1Tx" "Character1_LeftHandPinky1.tx";
connectAttr "HIKState2SK1.LeftHandPinky1Ty" "Character1_LeftHandPinky1.ty";
connectAttr "HIKState2SK1.LeftHandPinky1Tz" "Character1_LeftHandPinky1.tz";
connectAttr "HIKState2SK1.LeftHandPinky1Rx" "Character1_LeftHandPinky1.rx";
connectAttr "HIKState2SK1.LeftHandPinky1Ry" "Character1_LeftHandPinky1.ry";
connectAttr "HIKState2SK1.LeftHandPinky1Rz" "Character1_LeftHandPinky1.rz";
connectAttr "Character1_LeftHandPinky1.s" "Character1_LeftHandPinky2.is";
connectAttr "HIKState2SK1.LeftHandPinky2Sx" "Character1_LeftHandPinky2.sx";
connectAttr "HIKState2SK1.LeftHandPinky2Sy" "Character1_LeftHandPinky2.sy";
connectAttr "HIKState2SK1.LeftHandPinky2Sz" "Character1_LeftHandPinky2.sz";
connectAttr "HIKState2SK1.LeftHandPinky2Tx" "Character1_LeftHandPinky2.tx";
connectAttr "HIKState2SK1.LeftHandPinky2Ty" "Character1_LeftHandPinky2.ty";
connectAttr "HIKState2SK1.LeftHandPinky2Tz" "Character1_LeftHandPinky2.tz";
connectAttr "HIKState2SK1.LeftHandPinky2Rx" "Character1_LeftHandPinky2.rx";
connectAttr "HIKState2SK1.LeftHandPinky2Ry" "Character1_LeftHandPinky2.ry";
connectAttr "HIKState2SK1.LeftHandPinky2Rz" "Character1_LeftHandPinky2.rz";
connectAttr "Character1_LeftHandPinky2.s" "Character1_LeftHandPinky3.is";
connectAttr "HIKState2SK1.LeftHandPinky3Sx" "Character1_LeftHandPinky3.sx";
connectAttr "HIKState2SK1.LeftHandPinky3Sy" "Character1_LeftHandPinky3.sy";
connectAttr "HIKState2SK1.LeftHandPinky3Sz" "Character1_LeftHandPinky3.sz";
connectAttr "HIKState2SK1.LeftHandPinky3Tx" "Character1_LeftHandPinky3.tx";
connectAttr "HIKState2SK1.LeftHandPinky3Ty" "Character1_LeftHandPinky3.ty";
connectAttr "HIKState2SK1.LeftHandPinky3Tz" "Character1_LeftHandPinky3.tz";
connectAttr "HIKState2SK1.LeftHandPinky3Rx" "Character1_LeftHandPinky3.rx";
connectAttr "HIKState2SK1.LeftHandPinky3Ry" "Character1_LeftHandPinky3.ry";
connectAttr "HIKState2SK1.LeftHandPinky3Rz" "Character1_LeftHandPinky3.rz";
connectAttr "Character1_LeftHandPinky3.s" "Character1_LeftHandPinky4.is";
connectAttr "HIKState2SK1.LeftHandPinky4Tx" "Character1_LeftHandPinky4.tx";
connectAttr "HIKState2SK1.LeftHandPinky4Ty" "Character1_LeftHandPinky4.ty";
connectAttr "HIKState2SK1.LeftHandPinky4Tz" "Character1_LeftHandPinky4.tz";
connectAttr "HIKState2SK1.LeftHandPinky4Rx" "Character1_LeftHandPinky4.rx";
connectAttr "HIKState2SK1.LeftHandPinky4Ry" "Character1_LeftHandPinky4.ry";
connectAttr "HIKState2SK1.LeftHandPinky4Rz" "Character1_LeftHandPinky4.rz";
connectAttr "HIKState2SK1.LeftHandPinky4Sx" "Character1_LeftHandPinky4.sx";
connectAttr "HIKState2SK1.LeftHandPinky4Sy" "Character1_LeftHandPinky4.sy";
connectAttr "HIKState2SK1.LeftHandPinky4Sz" "Character1_LeftHandPinky4.sz";
connectAttr "Character1_Spine2.s" "Character1_RightShoulder.is";
connectAttr "HIKState2SK1.RightShoulderSx" "Character1_RightShoulder.sx";
connectAttr "HIKState2SK1.RightShoulderSy" "Character1_RightShoulder.sy";
connectAttr "HIKState2SK1.RightShoulderSz" "Character1_RightShoulder.sz";
connectAttr "HIKState2SK1.RightShoulderTx" "Character1_RightShoulder.tx";
connectAttr "HIKState2SK1.RightShoulderTy" "Character1_RightShoulder.ty";
connectAttr "HIKState2SK1.RightShoulderTz" "Character1_RightShoulder.tz";
connectAttr "HIKState2SK1.RightShoulderRx" "Character1_RightShoulder.rx";
connectAttr "HIKState2SK1.RightShoulderRy" "Character1_RightShoulder.ry";
connectAttr "HIKState2SK1.RightShoulderRz" "Character1_RightShoulder.rz";
connectAttr "Character1_RightShoulder.s" "Character1_RightArm.is";
connectAttr "HIKState2SK1.RightArmSx" "Character1_RightArm.sx";
connectAttr "HIKState2SK1.RightArmSy" "Character1_RightArm.sy";
connectAttr "HIKState2SK1.RightArmSz" "Character1_RightArm.sz";
connectAttr "HIKState2SK1.RightArmTx" "Character1_RightArm.tx";
connectAttr "HIKState2SK1.RightArmTy" "Character1_RightArm.ty";
connectAttr "HIKState2SK1.RightArmTz" "Character1_RightArm.tz";
connectAttr "HIKState2SK1.RightArmRx" "Character1_RightArm.rx";
connectAttr "HIKState2SK1.RightArmRy" "Character1_RightArm.ry";
connectAttr "HIKState2SK1.RightArmRz" "Character1_RightArm.rz";
connectAttr "Character1_RightArm.s" "Character1_RightForeArm.is";
connectAttr "HIKState2SK1.RightForeArmSx" "Character1_RightForeArm.sx";
connectAttr "HIKState2SK1.RightForeArmSy" "Character1_RightForeArm.sy";
connectAttr "HIKState2SK1.RightForeArmSz" "Character1_RightForeArm.sz";
connectAttr "HIKState2SK1.RightForeArmTx" "Character1_RightForeArm.tx";
connectAttr "HIKState2SK1.RightForeArmTy" "Character1_RightForeArm.ty";
connectAttr "HIKState2SK1.RightForeArmTz" "Character1_RightForeArm.tz";
connectAttr "HIKState2SK1.RightForeArmRx" "Character1_RightForeArm.rx";
connectAttr "HIKState2SK1.RightForeArmRy" "Character1_RightForeArm.ry";
connectAttr "HIKState2SK1.RightForeArmRz" "Character1_RightForeArm.rz";
connectAttr "Character1_RightForeArm.s" "Character1_RightHand.is";
connectAttr "HIKState2SK1.RightHandSx" "Character1_RightHand.sx";
connectAttr "HIKState2SK1.RightHandSy" "Character1_RightHand.sy";
connectAttr "HIKState2SK1.RightHandSz" "Character1_RightHand.sz";
connectAttr "HIKState2SK1.RightHandTx" "Character1_RightHand.tx";
connectAttr "HIKState2SK1.RightHandTy" "Character1_RightHand.ty";
connectAttr "HIKState2SK1.RightHandTz" "Character1_RightHand.tz";
connectAttr "HIKState2SK1.RightHandRx" "Character1_RightHand.rx";
connectAttr "HIKState2SK1.RightHandRy" "Character1_RightHand.ry";
connectAttr "HIKState2SK1.RightHandRz" "Character1_RightHand.rz";
connectAttr "Character1_RightHand.s" "Character1_RightHandThumb1.is";
connectAttr "HIKState2SK1.RightHandThumb1Sx" "Character1_RightHandThumb1.sx";
connectAttr "HIKState2SK1.RightHandThumb1Sy" "Character1_RightHandThumb1.sy";
connectAttr "HIKState2SK1.RightHandThumb1Sz" "Character1_RightHandThumb1.sz";
connectAttr "HIKState2SK1.RightHandThumb1Tx" "Character1_RightHandThumb1.tx";
connectAttr "HIKState2SK1.RightHandThumb1Ty" "Character1_RightHandThumb1.ty";
connectAttr "HIKState2SK1.RightHandThumb1Tz" "Character1_RightHandThumb1.tz";
connectAttr "HIKState2SK1.RightHandThumb1Rx" "Character1_RightHandThumb1.rx";
connectAttr "HIKState2SK1.RightHandThumb1Ry" "Character1_RightHandThumb1.ry";
connectAttr "HIKState2SK1.RightHandThumb1Rz" "Character1_RightHandThumb1.rz";
connectAttr "Character1_RightHandThumb1.s" "Character1_RightHandThumb2.is";
connectAttr "HIKState2SK1.RightHandThumb2Sx" "Character1_RightHandThumb2.sx";
connectAttr "HIKState2SK1.RightHandThumb2Sy" "Character1_RightHandThumb2.sy";
connectAttr "HIKState2SK1.RightHandThumb2Sz" "Character1_RightHandThumb2.sz";
connectAttr "HIKState2SK1.RightHandThumb2Tx" "Character1_RightHandThumb2.tx";
connectAttr "HIKState2SK1.RightHandThumb2Ty" "Character1_RightHandThumb2.ty";
connectAttr "HIKState2SK1.RightHandThumb2Tz" "Character1_RightHandThumb2.tz";
connectAttr "HIKState2SK1.RightHandThumb2Rx" "Character1_RightHandThumb2.rx";
connectAttr "HIKState2SK1.RightHandThumb2Ry" "Character1_RightHandThumb2.ry";
connectAttr "HIKState2SK1.RightHandThumb2Rz" "Character1_RightHandThumb2.rz";
connectAttr "Character1_RightHandThumb2.s" "Character1_RightHandThumb3.is";
connectAttr "HIKState2SK1.RightHandThumb3Sx" "Character1_RightHandThumb3.sx";
connectAttr "HIKState2SK1.RightHandThumb3Sy" "Character1_RightHandThumb3.sy";
connectAttr "HIKState2SK1.RightHandThumb3Sz" "Character1_RightHandThumb3.sz";
connectAttr "HIKState2SK1.RightHandThumb3Tx" "Character1_RightHandThumb3.tx";
connectAttr "HIKState2SK1.RightHandThumb3Ty" "Character1_RightHandThumb3.ty";
connectAttr "HIKState2SK1.RightHandThumb3Tz" "Character1_RightHandThumb3.tz";
connectAttr "HIKState2SK1.RightHandThumb3Rx" "Character1_RightHandThumb3.rx";
connectAttr "HIKState2SK1.RightHandThumb3Ry" "Character1_RightHandThumb3.ry";
connectAttr "HIKState2SK1.RightHandThumb3Rz" "Character1_RightHandThumb3.rz";
connectAttr "Character1_RightHandThumb3.s" "Character1_RightHandThumb4.is";
connectAttr "HIKState2SK1.RightHandThumb4Tx" "Character1_RightHandThumb4.tx";
connectAttr "HIKState2SK1.RightHandThumb4Ty" "Character1_RightHandThumb4.ty";
connectAttr "HIKState2SK1.RightHandThumb4Tz" "Character1_RightHandThumb4.tz";
connectAttr "HIKState2SK1.RightHandThumb4Rx" "Character1_RightHandThumb4.rx";
connectAttr "HIKState2SK1.RightHandThumb4Ry" "Character1_RightHandThumb4.ry";
connectAttr "HIKState2SK1.RightHandThumb4Rz" "Character1_RightHandThumb4.rz";
connectAttr "HIKState2SK1.RightHandThumb4Sx" "Character1_RightHandThumb4.sx";
connectAttr "HIKState2SK1.RightHandThumb4Sy" "Character1_RightHandThumb4.sy";
connectAttr "HIKState2SK1.RightHandThumb4Sz" "Character1_RightHandThumb4.sz";
connectAttr "Character1_RightHand.s" "Character1_RightHandIndex1.is";
connectAttr "HIKState2SK1.RightHandIndex1Sx" "Character1_RightHandIndex1.sx";
connectAttr "HIKState2SK1.RightHandIndex1Sy" "Character1_RightHandIndex1.sy";
connectAttr "HIKState2SK1.RightHandIndex1Sz" "Character1_RightHandIndex1.sz";
connectAttr "HIKState2SK1.RightHandIndex1Tx" "Character1_RightHandIndex1.tx";
connectAttr "HIKState2SK1.RightHandIndex1Ty" "Character1_RightHandIndex1.ty";
connectAttr "HIKState2SK1.RightHandIndex1Tz" "Character1_RightHandIndex1.tz";
connectAttr "HIKState2SK1.RightHandIndex1Rx" "Character1_RightHandIndex1.rx";
connectAttr "HIKState2SK1.RightHandIndex1Ry" "Character1_RightHandIndex1.ry";
connectAttr "HIKState2SK1.RightHandIndex1Rz" "Character1_RightHandIndex1.rz";
connectAttr "Character1_RightHandIndex1.s" "Character1_RightHandIndex2.is";
connectAttr "HIKState2SK1.RightHandIndex2Sx" "Character1_RightHandIndex2.sx";
connectAttr "HIKState2SK1.RightHandIndex2Sy" "Character1_RightHandIndex2.sy";
connectAttr "HIKState2SK1.RightHandIndex2Sz" "Character1_RightHandIndex2.sz";
connectAttr "HIKState2SK1.RightHandIndex2Tx" "Character1_RightHandIndex2.tx";
connectAttr "HIKState2SK1.RightHandIndex2Ty" "Character1_RightHandIndex2.ty";
connectAttr "HIKState2SK1.RightHandIndex2Tz" "Character1_RightHandIndex2.tz";
connectAttr "HIKState2SK1.RightHandIndex2Rx" "Character1_RightHandIndex2.rx";
connectAttr "HIKState2SK1.RightHandIndex2Ry" "Character1_RightHandIndex2.ry";
connectAttr "HIKState2SK1.RightHandIndex2Rz" "Character1_RightHandIndex2.rz";
connectAttr "Character1_RightHandIndex2.s" "Character1_RightHandIndex3.is";
connectAttr "HIKState2SK1.RightHandIndex3Sx" "Character1_RightHandIndex3.sx";
connectAttr "HIKState2SK1.RightHandIndex3Sy" "Character1_RightHandIndex3.sy";
connectAttr "HIKState2SK1.RightHandIndex3Sz" "Character1_RightHandIndex3.sz";
connectAttr "HIKState2SK1.RightHandIndex3Tx" "Character1_RightHandIndex3.tx";
connectAttr "HIKState2SK1.RightHandIndex3Ty" "Character1_RightHandIndex3.ty";
connectAttr "HIKState2SK1.RightHandIndex3Tz" "Character1_RightHandIndex3.tz";
connectAttr "HIKState2SK1.RightHandIndex3Rx" "Character1_RightHandIndex3.rx";
connectAttr "HIKState2SK1.RightHandIndex3Ry" "Character1_RightHandIndex3.ry";
connectAttr "HIKState2SK1.RightHandIndex3Rz" "Character1_RightHandIndex3.rz";
connectAttr "Character1_RightHandIndex3.s" "Character1_RightHandIndex4.is";
connectAttr "HIKState2SK1.RightHandIndex4Tx" "Character1_RightHandIndex4.tx";
connectAttr "HIKState2SK1.RightHandIndex4Ty" "Character1_RightHandIndex4.ty";
connectAttr "HIKState2SK1.RightHandIndex4Tz" "Character1_RightHandIndex4.tz";
connectAttr "HIKState2SK1.RightHandIndex4Rx" "Character1_RightHandIndex4.rx";
connectAttr "HIKState2SK1.RightHandIndex4Ry" "Character1_RightHandIndex4.ry";
connectAttr "HIKState2SK1.RightHandIndex4Rz" "Character1_RightHandIndex4.rz";
connectAttr "HIKState2SK1.RightHandIndex4Sx" "Character1_RightHandIndex4.sx";
connectAttr "HIKState2SK1.RightHandIndex4Sy" "Character1_RightHandIndex4.sy";
connectAttr "HIKState2SK1.RightHandIndex4Sz" "Character1_RightHandIndex4.sz";
connectAttr "Character1_RightHand.s" "Character1_RightHandMiddle1.is";
connectAttr "HIKState2SK1.RightHandMiddle1Sx" "Character1_RightHandMiddle1.sx";
connectAttr "HIKState2SK1.RightHandMiddle1Sy" "Character1_RightHandMiddle1.sy";
connectAttr "HIKState2SK1.RightHandMiddle1Sz" "Character1_RightHandMiddle1.sz";
connectAttr "HIKState2SK1.RightHandMiddle1Tx" "Character1_RightHandMiddle1.tx";
connectAttr "HIKState2SK1.RightHandMiddle1Ty" "Character1_RightHandMiddle1.ty";
connectAttr "HIKState2SK1.RightHandMiddle1Tz" "Character1_RightHandMiddle1.tz";
connectAttr "HIKState2SK1.RightHandMiddle1Rx" "Character1_RightHandMiddle1.rx";
connectAttr "HIKState2SK1.RightHandMiddle1Ry" "Character1_RightHandMiddle1.ry";
connectAttr "HIKState2SK1.RightHandMiddle1Rz" "Character1_RightHandMiddle1.rz";
connectAttr "Character1_RightHandMiddle1.s" "Character1_RightHandMiddle2.is";
connectAttr "HIKState2SK1.RightHandMiddle2Sx" "Character1_RightHandMiddle2.sx";
connectAttr "HIKState2SK1.RightHandMiddle2Sy" "Character1_RightHandMiddle2.sy";
connectAttr "HIKState2SK1.RightHandMiddle2Sz" "Character1_RightHandMiddle2.sz";
connectAttr "HIKState2SK1.RightHandMiddle2Tx" "Character1_RightHandMiddle2.tx";
connectAttr "HIKState2SK1.RightHandMiddle2Ty" "Character1_RightHandMiddle2.ty";
connectAttr "HIKState2SK1.RightHandMiddle2Tz" "Character1_RightHandMiddle2.tz";
connectAttr "HIKState2SK1.RightHandMiddle2Rx" "Character1_RightHandMiddle2.rx";
connectAttr "HIKState2SK1.RightHandMiddle2Ry" "Character1_RightHandMiddle2.ry";
connectAttr "HIKState2SK1.RightHandMiddle2Rz" "Character1_RightHandMiddle2.rz";
connectAttr "Character1_RightHandMiddle2.s" "Character1_RightHandMiddle3.is";
connectAttr "HIKState2SK1.RightHandMiddle3Sx" "Character1_RightHandMiddle3.sx";
connectAttr "HIKState2SK1.RightHandMiddle3Sy" "Character1_RightHandMiddle3.sy";
connectAttr "HIKState2SK1.RightHandMiddle3Sz" "Character1_RightHandMiddle3.sz";
connectAttr "HIKState2SK1.RightHandMiddle3Tx" "Character1_RightHandMiddle3.tx";
connectAttr "HIKState2SK1.RightHandMiddle3Ty" "Character1_RightHandMiddle3.ty";
connectAttr "HIKState2SK1.RightHandMiddle3Tz" "Character1_RightHandMiddle3.tz";
connectAttr "HIKState2SK1.RightHandMiddle3Rx" "Character1_RightHandMiddle3.rx";
connectAttr "HIKState2SK1.RightHandMiddle3Ry" "Character1_RightHandMiddle3.ry";
connectAttr "HIKState2SK1.RightHandMiddle3Rz" "Character1_RightHandMiddle3.rz";
connectAttr "Character1_RightHandMiddle3.s" "Character1_RightHandMiddle4.is";
connectAttr "HIKState2SK1.RightHandMiddle4Tx" "Character1_RightHandMiddle4.tx";
connectAttr "HIKState2SK1.RightHandMiddle4Ty" "Character1_RightHandMiddle4.ty";
connectAttr "HIKState2SK1.RightHandMiddle4Tz" "Character1_RightHandMiddle4.tz";
connectAttr "HIKState2SK1.RightHandMiddle4Rx" "Character1_RightHandMiddle4.rx";
connectAttr "HIKState2SK1.RightHandMiddle4Ry" "Character1_RightHandMiddle4.ry";
connectAttr "HIKState2SK1.RightHandMiddle4Rz" "Character1_RightHandMiddle4.rz";
connectAttr "HIKState2SK1.RightHandMiddle4Sx" "Character1_RightHandMiddle4.sx";
connectAttr "HIKState2SK1.RightHandMiddle4Sy" "Character1_RightHandMiddle4.sy";
connectAttr "HIKState2SK1.RightHandMiddle4Sz" "Character1_RightHandMiddle4.sz";
connectAttr "Character1_RightHand.s" "Character1_RightHandRing1.is";
connectAttr "HIKState2SK1.RightHandRing1Sx" "Character1_RightHandRing1.sx";
connectAttr "HIKState2SK1.RightHandRing1Sy" "Character1_RightHandRing1.sy";
connectAttr "HIKState2SK1.RightHandRing1Sz" "Character1_RightHandRing1.sz";
connectAttr "HIKState2SK1.RightHandRing1Tx" "Character1_RightHandRing1.tx";
connectAttr "HIKState2SK1.RightHandRing1Ty" "Character1_RightHandRing1.ty";
connectAttr "HIKState2SK1.RightHandRing1Tz" "Character1_RightHandRing1.tz";
connectAttr "HIKState2SK1.RightHandRing1Rx" "Character1_RightHandRing1.rx";
connectAttr "HIKState2SK1.RightHandRing1Ry" "Character1_RightHandRing1.ry";
connectAttr "HIKState2SK1.RightHandRing1Rz" "Character1_RightHandRing1.rz";
connectAttr "Character1_RightHandRing1.s" "Character1_RightHandRing2.is";
connectAttr "HIKState2SK1.RightHandRing2Sx" "Character1_RightHandRing2.sx";
connectAttr "HIKState2SK1.RightHandRing2Sy" "Character1_RightHandRing2.sy";
connectAttr "HIKState2SK1.RightHandRing2Sz" "Character1_RightHandRing2.sz";
connectAttr "HIKState2SK1.RightHandRing2Tx" "Character1_RightHandRing2.tx";
connectAttr "HIKState2SK1.RightHandRing2Ty" "Character1_RightHandRing2.ty";
connectAttr "HIKState2SK1.RightHandRing2Tz" "Character1_RightHandRing2.tz";
connectAttr "HIKState2SK1.RightHandRing2Rx" "Character1_RightHandRing2.rx";
connectAttr "HIKState2SK1.RightHandRing2Ry" "Character1_RightHandRing2.ry";
connectAttr "HIKState2SK1.RightHandRing2Rz" "Character1_RightHandRing2.rz";
connectAttr "Character1_RightHandRing2.s" "Character1_RightHandRing3.is";
connectAttr "HIKState2SK1.RightHandRing3Sx" "Character1_RightHandRing3.sx";
connectAttr "HIKState2SK1.RightHandRing3Sy" "Character1_RightHandRing3.sy";
connectAttr "HIKState2SK1.RightHandRing3Sz" "Character1_RightHandRing3.sz";
connectAttr "HIKState2SK1.RightHandRing3Tx" "Character1_RightHandRing3.tx";
connectAttr "HIKState2SK1.RightHandRing3Ty" "Character1_RightHandRing3.ty";
connectAttr "HIKState2SK1.RightHandRing3Tz" "Character1_RightHandRing3.tz";
connectAttr "HIKState2SK1.RightHandRing3Rx" "Character1_RightHandRing3.rx";
connectAttr "HIKState2SK1.RightHandRing3Ry" "Character1_RightHandRing3.ry";
connectAttr "HIKState2SK1.RightHandRing3Rz" "Character1_RightHandRing3.rz";
connectAttr "Character1_RightHandRing3.s" "Character1_RightHandRing4.is";
connectAttr "HIKState2SK1.RightHandRing4Tx" "Character1_RightHandRing4.tx";
connectAttr "HIKState2SK1.RightHandRing4Ty" "Character1_RightHandRing4.ty";
connectAttr "HIKState2SK1.RightHandRing4Tz" "Character1_RightHandRing4.tz";
connectAttr "HIKState2SK1.RightHandRing4Rx" "Character1_RightHandRing4.rx";
connectAttr "HIKState2SK1.RightHandRing4Ry" "Character1_RightHandRing4.ry";
connectAttr "HIKState2SK1.RightHandRing4Rz" "Character1_RightHandRing4.rz";
connectAttr "HIKState2SK1.RightHandRing4Sx" "Character1_RightHandRing4.sx";
connectAttr "HIKState2SK1.RightHandRing4Sy" "Character1_RightHandRing4.sy";
connectAttr "HIKState2SK1.RightHandRing4Sz" "Character1_RightHandRing4.sz";
connectAttr "Character1_RightHand.s" "Character1_RightHandPinky1.is";
connectAttr "HIKState2SK1.RightHandPinky1Sx" "Character1_RightHandPinky1.sx";
connectAttr "HIKState2SK1.RightHandPinky1Sy" "Character1_RightHandPinky1.sy";
connectAttr "HIKState2SK1.RightHandPinky1Sz" "Character1_RightHandPinky1.sz";
connectAttr "HIKState2SK1.RightHandPinky1Tx" "Character1_RightHandPinky1.tx";
connectAttr "HIKState2SK1.RightHandPinky1Ty" "Character1_RightHandPinky1.ty";
connectAttr "HIKState2SK1.RightHandPinky1Tz" "Character1_RightHandPinky1.tz";
connectAttr "HIKState2SK1.RightHandPinky1Rx" "Character1_RightHandPinky1.rx";
connectAttr "HIKState2SK1.RightHandPinky1Ry" "Character1_RightHandPinky1.ry";
connectAttr "HIKState2SK1.RightHandPinky1Rz" "Character1_RightHandPinky1.rz";
connectAttr "Character1_RightHandPinky1.s" "Character1_RightHandPinky2.is";
connectAttr "HIKState2SK1.RightHandPinky2Sx" "Character1_RightHandPinky2.sx";
connectAttr "HIKState2SK1.RightHandPinky2Sy" "Character1_RightHandPinky2.sy";
connectAttr "HIKState2SK1.RightHandPinky2Sz" "Character1_RightHandPinky2.sz";
connectAttr "HIKState2SK1.RightHandPinky2Tx" "Character1_RightHandPinky2.tx";
connectAttr "HIKState2SK1.RightHandPinky2Ty" "Character1_RightHandPinky2.ty";
connectAttr "HIKState2SK1.RightHandPinky2Tz" "Character1_RightHandPinky2.tz";
connectAttr "HIKState2SK1.RightHandPinky2Rx" "Character1_RightHandPinky2.rx";
connectAttr "HIKState2SK1.RightHandPinky2Ry" "Character1_RightHandPinky2.ry";
connectAttr "HIKState2SK1.RightHandPinky2Rz" "Character1_RightHandPinky2.rz";
connectAttr "Character1_RightHandPinky2.s" "Character1_RightHandPinky3.is";
connectAttr "HIKState2SK1.RightHandPinky3Sx" "Character1_RightHandPinky3.sx";
connectAttr "HIKState2SK1.RightHandPinky3Sy" "Character1_RightHandPinky3.sy";
connectAttr "HIKState2SK1.RightHandPinky3Sz" "Character1_RightHandPinky3.sz";
connectAttr "HIKState2SK1.RightHandPinky3Tx" "Character1_RightHandPinky3.tx";
connectAttr "HIKState2SK1.RightHandPinky3Ty" "Character1_RightHandPinky3.ty";
connectAttr "HIKState2SK1.RightHandPinky3Tz" "Character1_RightHandPinky3.tz";
connectAttr "HIKState2SK1.RightHandPinky3Rx" "Character1_RightHandPinky3.rx";
connectAttr "HIKState2SK1.RightHandPinky3Ry" "Character1_RightHandPinky3.ry";
connectAttr "HIKState2SK1.RightHandPinky3Rz" "Character1_RightHandPinky3.rz";
connectAttr "Character1_RightHandPinky3.s" "Character1_RightHandPinky4.is";
connectAttr "HIKState2SK1.RightHandPinky4Tx" "Character1_RightHandPinky4.tx";
connectAttr "HIKState2SK1.RightHandPinky4Ty" "Character1_RightHandPinky4.ty";
connectAttr "HIKState2SK1.RightHandPinky4Tz" "Character1_RightHandPinky4.tz";
connectAttr "HIKState2SK1.RightHandPinky4Rx" "Character1_RightHandPinky4.rx";
connectAttr "HIKState2SK1.RightHandPinky4Ry" "Character1_RightHandPinky4.ry";
connectAttr "HIKState2SK1.RightHandPinky4Rz" "Character1_RightHandPinky4.rz";
connectAttr "HIKState2SK1.RightHandPinky4Sx" "Character1_RightHandPinky4.sx";
connectAttr "HIKState2SK1.RightHandPinky4Sy" "Character1_RightHandPinky4.sy";
connectAttr "HIKState2SK1.RightHandPinky4Sz" "Character1_RightHandPinky4.sz";
connectAttr "Character1_Spine2.s" "Character1_Neck.is";
connectAttr "HIKState2SK1.NeckSx" "Character1_Neck.sx";
connectAttr "HIKState2SK1.NeckSy" "Character1_Neck.sy";
connectAttr "HIKState2SK1.NeckSz" "Character1_Neck.sz";
connectAttr "HIKState2SK1.NeckTx" "Character1_Neck.tx";
connectAttr "HIKState2SK1.NeckTy" "Character1_Neck.ty";
connectAttr "HIKState2SK1.NeckTz" "Character1_Neck.tz";
connectAttr "HIKState2SK1.NeckRx" "Character1_Neck.rx";
connectAttr "HIKState2SK1.NeckRy" "Character1_Neck.ry";
connectAttr "HIKState2SK1.NeckRz" "Character1_Neck.rz";
connectAttr "Character1_Neck.s" "Character1_Head.is";
connectAttr "HIKState2SK1.HeadTx" "Character1_Head.tx";
connectAttr "HIKState2SK1.HeadTy" "Character1_Head.ty";
connectAttr "HIKState2SK1.HeadTz" "Character1_Head.tz";
connectAttr "HIKState2SK1.HeadRx" "Character1_Head.rx";
connectAttr "HIKState2SK1.HeadRy" "Character1_Head.ry";
connectAttr "HIKState2SK1.HeadRz" "Character1_Head.rz";
connectAttr "HIKState2SK1.HeadSx" "Character1_Head.sx";
connectAttr "HIKState2SK1.HeadSy" "Character1_Head.sy";
connectAttr "HIKState2SK1.HeadSz" "Character1_Head.sz";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_HipsEffector.uagx";
connectAttr "HIKState2Effector1.HipsEffectorGXM[0]" "Character1_Ctrl_HipsEffector.agx"
		;
connectAttr "HIKState2Effector2.HipsEffectorGXM[0]" "Character1_Ctrl_HipsEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftAnkleEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftAnkleEffectorGXM[0]" "Character1_Ctrl_LeftAnkleEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftAnkleEffectorGXM[0]" "Character1_Ctrl_LeftAnkleEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightAnkleEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightAnkleEffectorGXM[0]" "Character1_Ctrl_RightAnkleEffector.agx"
		;
connectAttr "HIKState2Effector2.RightAnkleEffectorGXM[0]" "Character1_Ctrl_RightAnkleEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftWristEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftWristEffectorGXM[0]" "Character1_Ctrl_LeftWristEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftWristEffectorGXM[0]" "Character1_Ctrl_LeftWristEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightWristEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightWristEffectorGXM[0]" "Character1_Ctrl_RightWristEffector.agx"
		;
connectAttr "HIKState2Effector2.RightWristEffectorGXM[0]" "Character1_Ctrl_RightWristEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftKneeEffector.uagx";
connectAttr "HIKState2Effector1.LeftKneeEffectorGXM[0]" "Character1_Ctrl_LeftKneeEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftKneeEffectorGXM[0]" "Character1_Ctrl_LeftKneeEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightKneeEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightKneeEffectorGXM[0]" "Character1_Ctrl_RightKneeEffector.agx"
		;
connectAttr "HIKState2Effector2.RightKneeEffectorGXM[0]" "Character1_Ctrl_RightKneeEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftElbowEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftElbowEffectorGXM[0]" "Character1_Ctrl_LeftElbowEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftElbowEffectorGXM[0]" "Character1_Ctrl_LeftElbowEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightElbowEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightElbowEffectorGXM[0]" "Character1_Ctrl_RightElbowEffector.agx"
		;
connectAttr "HIKState2Effector2.RightElbowEffectorGXM[0]" "Character1_Ctrl_RightElbowEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_ChestOriginEffector.uagx"
		;
connectAttr "HIKState2Effector1.ChestOriginEffectorGXM[0]" "Character1_Ctrl_ChestOriginEffector.agx"
		;
connectAttr "HIKState2Effector2.ChestOriginEffectorGXM[0]" "Character1_Ctrl_ChestOriginEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_ChestEndEffector.uagx";
connectAttr "HIKState2Effector1.ChestEndEffectorGXM[0]" "Character1_Ctrl_ChestEndEffector.agx"
		;
connectAttr "HIKState2Effector2.ChestEndEffectorGXM[0]" "Character1_Ctrl_ChestEndEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftFootEffector.uagx";
connectAttr "HIKState2Effector1.LeftFootEffectorGXM[0]" "Character1_Ctrl_LeftFootEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftFootEffectorGXM[0]" "Character1_Ctrl_LeftFootEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightFootEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightFootEffectorGXM[0]" "Character1_Ctrl_RightFootEffector.agx"
		;
connectAttr "HIKState2Effector2.RightFootEffectorGXM[0]" "Character1_Ctrl_RightFootEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftShoulderEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftShoulderEffectorGXM[0]" "Character1_Ctrl_LeftShoulderEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftShoulderEffectorGXM[0]" "Character1_Ctrl_LeftShoulderEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightShoulderEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightShoulderEffectorGXM[0]" "Character1_Ctrl_RightShoulderEffector.agx"
		;
connectAttr "HIKState2Effector2.RightShoulderEffectorGXM[0]" "Character1_Ctrl_RightShoulderEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_HeadEffector.uagx";
connectAttr "HIKState2Effector1.HeadEffectorGXM[0]" "Character1_Ctrl_HeadEffector.agx"
		;
connectAttr "HIKState2Effector2.HeadEffectorGXM[0]" "Character1_Ctrl_HeadEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHipEffector.uagx";
connectAttr "HIKState2Effector1.LeftHipEffectorGXM[0]" "Character1_Ctrl_LeftHipEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHipEffectorGXM[0]" "Character1_Ctrl_LeftHipEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHipEffector.uagx";
connectAttr "HIKState2Effector1.RightHipEffectorGXM[0]" "Character1_Ctrl_RightHipEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHipEffectorGXM[0]" "Character1_Ctrl_RightHipEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandThumbEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandThumbEffectorGXM[0]" "Character1_Ctrl_LeftHandThumbEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandThumbEffectorGXM[0]" "Character1_Ctrl_LeftHandThumbEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandIndexEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandIndexEffectorGXM[0]" "Character1_Ctrl_LeftHandIndexEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandIndexEffectorGXM[0]" "Character1_Ctrl_LeftHandIndexEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandMiddleEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandMiddleEffectorGXM[0]" "Character1_Ctrl_LeftHandMiddleEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandMiddleEffectorGXM[0]" "Character1_Ctrl_LeftHandMiddleEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandRingEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandRingEffectorGXM[0]" "Character1_Ctrl_LeftHandRingEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandRingEffectorGXM[0]" "Character1_Ctrl_LeftHandRingEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandPinkyEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandPinkyEffectorGXM[0]" "Character1_Ctrl_LeftHandPinkyEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandPinkyEffectorGXM[0]" "Character1_Ctrl_LeftHandPinkyEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandThumbEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandThumbEffectorGXM[0]" "Character1_Ctrl_RightHandThumbEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandThumbEffectorGXM[0]" "Character1_Ctrl_RightHandThumbEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandIndexEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandIndexEffectorGXM[0]" "Character1_Ctrl_RightHandIndexEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandIndexEffectorGXM[0]" "Character1_Ctrl_RightHandIndexEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandMiddleEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandMiddleEffectorGXM[0]" "Character1_Ctrl_RightHandMiddleEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandMiddleEffectorGXM[0]" "Character1_Ctrl_RightHandMiddleEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandRingEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandRingEffectorGXM[0]" "Character1_Ctrl_RightHandRingEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandRingEffectorGXM[0]" "Character1_Ctrl_RightHandRingEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandPinkyEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandPinkyEffectorGXM[0]" "Character1_Ctrl_RightHandPinkyEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandPinkyEffectorGXM[0]" "Character1_Ctrl_RightHandPinkyEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Hips.uagx";
connectAttr "HIKState2FK1.HipsGX" "Character1_Ctrl_Hips.agx";
connectAttr "HIKState2FK2.HipsGX" "Character1_Ctrl_Hips.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftUpLeg.uagx";
connectAttr "Character1_Ctrl_Hips.s" "Character1_Ctrl_LeftUpLeg.is";
connectAttr "HIKState2FK1.LeftUpLegGX" "Character1_Ctrl_LeftUpLeg.agx";
connectAttr "HIKState2FK2.LeftUpLegGX" "Character1_Ctrl_LeftUpLeg.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftLeg.uagx";
connectAttr "Character1_Ctrl_LeftUpLeg.s" "Character1_Ctrl_LeftLeg.is";
connectAttr "HIKState2FK1.LeftLegGX" "Character1_Ctrl_LeftLeg.agx";
connectAttr "HIKState2FK2.LeftLegGX" "Character1_Ctrl_LeftLeg.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftFoot.uagx";
connectAttr "Character1_Ctrl_LeftLeg.s" "Character1_Ctrl_LeftFoot.is";
connectAttr "HIKState2FK1.LeftFootGX" "Character1_Ctrl_LeftFoot.agx";
connectAttr "HIKState2FK2.LeftFootGX" "Character1_Ctrl_LeftFoot.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftToeBase.uagx";
connectAttr "Character1_Ctrl_LeftFoot.s" "Character1_Ctrl_LeftToeBase.is";
connectAttr "HIKState2FK1.LeftToeBaseGX" "Character1_Ctrl_LeftToeBase.agx";
connectAttr "HIKState2FK2.LeftToeBaseGX" "Character1_Ctrl_LeftToeBase.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightUpLeg.uagx";
connectAttr "Character1_Ctrl_Hips.s" "Character1_Ctrl_RightUpLeg.is";
connectAttr "HIKState2FK1.RightUpLegGX" "Character1_Ctrl_RightUpLeg.agx";
connectAttr "HIKState2FK2.RightUpLegGX" "Character1_Ctrl_RightUpLeg.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightLeg.uagx";
connectAttr "Character1_Ctrl_RightUpLeg.s" "Character1_Ctrl_RightLeg.is";
connectAttr "HIKState2FK1.RightLegGX" "Character1_Ctrl_RightLeg.agx";
connectAttr "HIKState2FK2.RightLegGX" "Character1_Ctrl_RightLeg.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightFoot.uagx";
connectAttr "Character1_Ctrl_RightLeg.s" "Character1_Ctrl_RightFoot.is";
connectAttr "HIKState2FK1.RightFootGX" "Character1_Ctrl_RightFoot.agx";
connectAttr "HIKState2FK2.RightFootGX" "Character1_Ctrl_RightFoot.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightToeBase.uagx";
connectAttr "Character1_Ctrl_RightFoot.s" "Character1_Ctrl_RightToeBase.is";
connectAttr "HIKState2FK1.RightToeBaseGX" "Character1_Ctrl_RightToeBase.agx";
connectAttr "HIKState2FK2.RightToeBaseGX" "Character1_Ctrl_RightToeBase.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Spine.uagx";
connectAttr "Character1_Ctrl_Hips.s" "Character1_Ctrl_Spine.is";
connectAttr "HIKState2FK1.SpineGX" "Character1_Ctrl_Spine.agx";
connectAttr "HIKState2FK2.SpineGX" "Character1_Ctrl_Spine.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Spine1.uagx";
connectAttr "Character1_Ctrl_Spine.s" "Character1_Ctrl_Spine1.is";
connectAttr "HIKState2FK1.Spine1GX" "Character1_Ctrl_Spine1.agx";
connectAttr "HIKState2FK2.Spine1GX" "Character1_Ctrl_Spine1.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Spine2.uagx";
connectAttr "Character1_Ctrl_Spine1.s" "Character1_Ctrl_Spine2.is";
connectAttr "HIKState2FK1.Spine2GX" "Character1_Ctrl_Spine2.agx";
connectAttr "HIKState2FK2.Spine2GX" "Character1_Ctrl_Spine2.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftShoulder.uagx";
connectAttr "Character1_Ctrl_Spine2.s" "Character1_Ctrl_LeftShoulder.is";
connectAttr "HIKState2FK1.LeftShoulderGX" "Character1_Ctrl_LeftShoulder.agx";
connectAttr "HIKState2FK2.LeftShoulderGX" "Character1_Ctrl_LeftShoulder.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftArm.uagx";
connectAttr "Character1_Ctrl_LeftShoulder.s" "Character1_Ctrl_LeftArm.is";
connectAttr "HIKState2FK1.LeftArmGX" "Character1_Ctrl_LeftArm.agx";
connectAttr "HIKState2FK2.LeftArmGX" "Character1_Ctrl_LeftArm.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftForeArm.uagx";
connectAttr "Character1_Ctrl_LeftArm.s" "Character1_Ctrl_LeftForeArm.is";
connectAttr "HIKState2FK1.LeftForeArmGX" "Character1_Ctrl_LeftForeArm.agx";
connectAttr "HIKState2FK2.LeftForeArmGX" "Character1_Ctrl_LeftForeArm.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHand.uagx";
connectAttr "Character1_Ctrl_LeftForeArm.s" "Character1_Ctrl_LeftHand.is";
connectAttr "HIKState2FK1.LeftHandGX" "Character1_Ctrl_LeftHand.agx";
connectAttr "HIKState2FK2.LeftHandGX" "Character1_Ctrl_LeftHand.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandThumb1.uagx";
connectAttr "Character1_Ctrl_LeftHand.s" "Character1_Ctrl_LeftHandThumb1.is";
connectAttr "HIKState2FK1.LeftHandThumb1GX" "Character1_Ctrl_LeftHandThumb1.agx"
		;
connectAttr "HIKState2FK2.LeftHandThumb1GX" "Character1_Ctrl_LeftHandThumb1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandThumb2.uagx";
connectAttr "Character1_Ctrl_LeftHandThumb1.s" "Character1_Ctrl_LeftHandThumb2.is"
		;
connectAttr "HIKState2FK1.LeftHandThumb2GX" "Character1_Ctrl_LeftHandThumb2.agx"
		;
connectAttr "HIKState2FK2.LeftHandThumb2GX" "Character1_Ctrl_LeftHandThumb2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandThumb3.uagx";
connectAttr "Character1_Ctrl_LeftHandThumb2.s" "Character1_Ctrl_LeftHandThumb3.is"
		;
connectAttr "HIKState2FK1.LeftHandThumb3GX" "Character1_Ctrl_LeftHandThumb3.agx"
		;
connectAttr "HIKState2FK2.LeftHandThumb3GX" "Character1_Ctrl_LeftHandThumb3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandThumb4.uagx";
connectAttr "Character1_Ctrl_LeftHandThumb3.s" "Character1_Ctrl_LeftHandThumb4.is"
		;
connectAttr "HIKState2FK1.LeftHandThumb4GX" "Character1_Ctrl_LeftHandThumb4.agx"
		;
connectAttr "HIKState2FK2.LeftHandThumb4GX" "Character1_Ctrl_LeftHandThumb4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandIndex1.uagx";
connectAttr "Character1_Ctrl_LeftHand.s" "Character1_Ctrl_LeftHandIndex1.is";
connectAttr "HIKState2FK1.LeftHandIndex1GX" "Character1_Ctrl_LeftHandIndex1.agx"
		;
connectAttr "HIKState2FK2.LeftHandIndex1GX" "Character1_Ctrl_LeftHandIndex1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandIndex2.uagx";
connectAttr "Character1_Ctrl_LeftHandIndex1.s" "Character1_Ctrl_LeftHandIndex2.is"
		;
connectAttr "HIKState2FK1.LeftHandIndex2GX" "Character1_Ctrl_LeftHandIndex2.agx"
		;
connectAttr "HIKState2FK2.LeftHandIndex2GX" "Character1_Ctrl_LeftHandIndex2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandIndex3.uagx";
connectAttr "Character1_Ctrl_LeftHandIndex2.s" "Character1_Ctrl_LeftHandIndex3.is"
		;
connectAttr "HIKState2FK1.LeftHandIndex3GX" "Character1_Ctrl_LeftHandIndex3.agx"
		;
connectAttr "HIKState2FK2.LeftHandIndex3GX" "Character1_Ctrl_LeftHandIndex3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandIndex4.uagx";
connectAttr "Character1_Ctrl_LeftHandIndex3.s" "Character1_Ctrl_LeftHandIndex4.is"
		;
connectAttr "HIKState2FK1.LeftHandIndex4GX" "Character1_Ctrl_LeftHandIndex4.agx"
		;
connectAttr "HIKState2FK2.LeftHandIndex4GX" "Character1_Ctrl_LeftHandIndex4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandMiddle1.uagx";
connectAttr "Character1_Ctrl_LeftHand.s" "Character1_Ctrl_LeftHandMiddle1.is";
connectAttr "HIKState2FK1.LeftHandMiddle1GX" "Character1_Ctrl_LeftHandMiddle1.agx"
		;
connectAttr "HIKState2FK2.LeftHandMiddle1GX" "Character1_Ctrl_LeftHandMiddle1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandMiddle2.uagx";
connectAttr "Character1_Ctrl_LeftHandMiddle1.s" "Character1_Ctrl_LeftHandMiddle2.is"
		;
connectAttr "HIKState2FK1.LeftHandMiddle2GX" "Character1_Ctrl_LeftHandMiddle2.agx"
		;
connectAttr "HIKState2FK2.LeftHandMiddle2GX" "Character1_Ctrl_LeftHandMiddle2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandMiddle3.uagx";
connectAttr "Character1_Ctrl_LeftHandMiddle2.s" "Character1_Ctrl_LeftHandMiddle3.is"
		;
connectAttr "HIKState2FK1.LeftHandMiddle3GX" "Character1_Ctrl_LeftHandMiddle3.agx"
		;
connectAttr "HIKState2FK2.LeftHandMiddle3GX" "Character1_Ctrl_LeftHandMiddle3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandMiddle4.uagx";
connectAttr "Character1_Ctrl_LeftHandMiddle3.s" "Character1_Ctrl_LeftHandMiddle4.is"
		;
connectAttr "HIKState2FK1.LeftHandMiddle4GX" "Character1_Ctrl_LeftHandMiddle4.agx"
		;
connectAttr "HIKState2FK2.LeftHandMiddle4GX" "Character1_Ctrl_LeftHandMiddle4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandRing1.uagx";
connectAttr "Character1_Ctrl_LeftHand.s" "Character1_Ctrl_LeftHandRing1.is";
connectAttr "HIKState2FK1.LeftHandRing1GX" "Character1_Ctrl_LeftHandRing1.agx";
connectAttr "HIKState2FK2.LeftHandRing1GX" "Character1_Ctrl_LeftHandRing1.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandRing2.uagx";
connectAttr "Character1_Ctrl_LeftHandRing1.s" "Character1_Ctrl_LeftHandRing2.is"
		;
connectAttr "HIKState2FK1.LeftHandRing2GX" "Character1_Ctrl_LeftHandRing2.agx";
connectAttr "HIKState2FK2.LeftHandRing2GX" "Character1_Ctrl_LeftHandRing2.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandRing3.uagx";
connectAttr "Character1_Ctrl_LeftHandRing2.s" "Character1_Ctrl_LeftHandRing3.is"
		;
connectAttr "HIKState2FK1.LeftHandRing3GX" "Character1_Ctrl_LeftHandRing3.agx";
connectAttr "HIKState2FK2.LeftHandRing3GX" "Character1_Ctrl_LeftHandRing3.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandRing4.uagx";
connectAttr "Character1_Ctrl_LeftHandRing3.s" "Character1_Ctrl_LeftHandRing4.is"
		;
connectAttr "HIKState2FK1.LeftHandRing4GX" "Character1_Ctrl_LeftHandRing4.agx";
connectAttr "HIKState2FK2.LeftHandRing4GX" "Character1_Ctrl_LeftHandRing4.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandPinky1.uagx";
connectAttr "Character1_Ctrl_LeftHand.s" "Character1_Ctrl_LeftHandPinky1.is";
connectAttr "HIKState2FK1.LeftHandPinky1GX" "Character1_Ctrl_LeftHandPinky1.agx"
		;
connectAttr "HIKState2FK2.LeftHandPinky1GX" "Character1_Ctrl_LeftHandPinky1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandPinky2.uagx";
connectAttr "Character1_Ctrl_LeftHandPinky1.s" "Character1_Ctrl_LeftHandPinky2.is"
		;
connectAttr "HIKState2FK1.LeftHandPinky2GX" "Character1_Ctrl_LeftHandPinky2.agx"
		;
connectAttr "HIKState2FK2.LeftHandPinky2GX" "Character1_Ctrl_LeftHandPinky2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandPinky3.uagx";
connectAttr "Character1_Ctrl_LeftHandPinky2.s" "Character1_Ctrl_LeftHandPinky3.is"
		;
connectAttr "HIKState2FK1.LeftHandPinky3GX" "Character1_Ctrl_LeftHandPinky3.agx"
		;
connectAttr "HIKState2FK2.LeftHandPinky3GX" "Character1_Ctrl_LeftHandPinky3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandPinky4.uagx";
connectAttr "Character1_Ctrl_LeftHandPinky3.s" "Character1_Ctrl_LeftHandPinky4.is"
		;
connectAttr "HIKState2FK1.LeftHandPinky4GX" "Character1_Ctrl_LeftHandPinky4.agx"
		;
connectAttr "HIKState2FK2.LeftHandPinky4GX" "Character1_Ctrl_LeftHandPinky4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightShoulder.uagx";
connectAttr "Character1_Ctrl_Spine2.s" "Character1_Ctrl_RightShoulder.is";
connectAttr "HIKState2FK1.RightShoulderGX" "Character1_Ctrl_RightShoulder.agx";
connectAttr "HIKState2FK2.RightShoulderGX" "Character1_Ctrl_RightShoulder.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightArm.uagx";
connectAttr "Character1_Ctrl_RightShoulder.s" "Character1_Ctrl_RightArm.is";
connectAttr "HIKState2FK1.RightArmGX" "Character1_Ctrl_RightArm.agx";
connectAttr "HIKState2FK2.RightArmGX" "Character1_Ctrl_RightArm.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightForeArm.uagx";
connectAttr "Character1_Ctrl_RightArm.s" "Character1_Ctrl_RightForeArm.is";
connectAttr "HIKState2FK1.RightForeArmGX" "Character1_Ctrl_RightForeArm.agx";
connectAttr "HIKState2FK2.RightForeArmGX" "Character1_Ctrl_RightForeArm.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHand.uagx";
connectAttr "Character1_Ctrl_RightForeArm.s" "Character1_Ctrl_RightHand.is";
connectAttr "HIKState2FK1.RightHandGX" "Character1_Ctrl_RightHand.agx";
connectAttr "HIKState2FK2.RightHandGX" "Character1_Ctrl_RightHand.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandThumb1.uagx";
connectAttr "Character1_Ctrl_RightHand.s" "Character1_Ctrl_RightHandThumb1.is";
connectAttr "HIKState2FK1.RightHandThumb1GX" "Character1_Ctrl_RightHandThumb1.agx"
		;
connectAttr "HIKState2FK2.RightHandThumb1GX" "Character1_Ctrl_RightHandThumb1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandThumb2.uagx";
connectAttr "Character1_Ctrl_RightHandThumb1.s" "Character1_Ctrl_RightHandThumb2.is"
		;
connectAttr "HIKState2FK1.RightHandThumb2GX" "Character1_Ctrl_RightHandThumb2.agx"
		;
connectAttr "HIKState2FK2.RightHandThumb2GX" "Character1_Ctrl_RightHandThumb2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandThumb3.uagx";
connectAttr "Character1_Ctrl_RightHandThumb2.s" "Character1_Ctrl_RightHandThumb3.is"
		;
connectAttr "HIKState2FK1.RightHandThumb3GX" "Character1_Ctrl_RightHandThumb3.agx"
		;
connectAttr "HIKState2FK2.RightHandThumb3GX" "Character1_Ctrl_RightHandThumb3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandThumb4.uagx";
connectAttr "Character1_Ctrl_RightHandThumb3.s" "Character1_Ctrl_RightHandThumb4.is"
		;
connectAttr "HIKState2FK1.RightHandThumb4GX" "Character1_Ctrl_RightHandThumb4.agx"
		;
connectAttr "HIKState2FK2.RightHandThumb4GX" "Character1_Ctrl_RightHandThumb4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandIndex1.uagx";
connectAttr "Character1_Ctrl_RightHand.s" "Character1_Ctrl_RightHandIndex1.is";
connectAttr "HIKState2FK1.RightHandIndex1GX" "Character1_Ctrl_RightHandIndex1.agx"
		;
connectAttr "HIKState2FK2.RightHandIndex1GX" "Character1_Ctrl_RightHandIndex1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandIndex2.uagx";
connectAttr "Character1_Ctrl_RightHandIndex1.s" "Character1_Ctrl_RightHandIndex2.is"
		;
connectAttr "HIKState2FK1.RightHandIndex2GX" "Character1_Ctrl_RightHandIndex2.agx"
		;
connectAttr "HIKState2FK2.RightHandIndex2GX" "Character1_Ctrl_RightHandIndex2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandIndex3.uagx";
connectAttr "Character1_Ctrl_RightHandIndex2.s" "Character1_Ctrl_RightHandIndex3.is"
		;
connectAttr "HIKState2FK1.RightHandIndex3GX" "Character1_Ctrl_RightHandIndex3.agx"
		;
connectAttr "HIKState2FK2.RightHandIndex3GX" "Character1_Ctrl_RightHandIndex3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandIndex4.uagx";
connectAttr "Character1_Ctrl_RightHandIndex3.s" "Character1_Ctrl_RightHandIndex4.is"
		;
connectAttr "HIKState2FK1.RightHandIndex4GX" "Character1_Ctrl_RightHandIndex4.agx"
		;
connectAttr "HIKState2FK2.RightHandIndex4GX" "Character1_Ctrl_RightHandIndex4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandMiddle1.uagx";
connectAttr "Character1_Ctrl_RightHand.s" "Character1_Ctrl_RightHandMiddle1.is";
connectAttr "HIKState2FK1.RightHandMiddle1GX" "Character1_Ctrl_RightHandMiddle1.agx"
		;
connectAttr "HIKState2FK2.RightHandMiddle1GX" "Character1_Ctrl_RightHandMiddle1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandMiddle2.uagx";
connectAttr "Character1_Ctrl_RightHandMiddle1.s" "Character1_Ctrl_RightHandMiddle2.is"
		;
connectAttr "HIKState2FK1.RightHandMiddle2GX" "Character1_Ctrl_RightHandMiddle2.agx"
		;
connectAttr "HIKState2FK2.RightHandMiddle2GX" "Character1_Ctrl_RightHandMiddle2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandMiddle3.uagx";
connectAttr "Character1_Ctrl_RightHandMiddle2.s" "Character1_Ctrl_RightHandMiddle3.is"
		;
connectAttr "HIKState2FK1.RightHandMiddle3GX" "Character1_Ctrl_RightHandMiddle3.agx"
		;
connectAttr "HIKState2FK2.RightHandMiddle3GX" "Character1_Ctrl_RightHandMiddle3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandMiddle4.uagx";
connectAttr "Character1_Ctrl_RightHandMiddle3.s" "Character1_Ctrl_RightHandMiddle4.is"
		;
connectAttr "HIKState2FK1.RightHandMiddle4GX" "Character1_Ctrl_RightHandMiddle4.agx"
		;
connectAttr "HIKState2FK2.RightHandMiddle4GX" "Character1_Ctrl_RightHandMiddle4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandRing1.uagx";
connectAttr "Character1_Ctrl_RightHand.s" "Character1_Ctrl_RightHandRing1.is";
connectAttr "HIKState2FK1.RightHandRing1GX" "Character1_Ctrl_RightHandRing1.agx"
		;
connectAttr "HIKState2FK2.RightHandRing1GX" "Character1_Ctrl_RightHandRing1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandRing2.uagx";
connectAttr "Character1_Ctrl_RightHandRing1.s" "Character1_Ctrl_RightHandRing2.is"
		;
connectAttr "HIKState2FK1.RightHandRing2GX" "Character1_Ctrl_RightHandRing2.agx"
		;
connectAttr "HIKState2FK2.RightHandRing2GX" "Character1_Ctrl_RightHandRing2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandRing3.uagx";
connectAttr "Character1_Ctrl_RightHandRing2.s" "Character1_Ctrl_RightHandRing3.is"
		;
connectAttr "HIKState2FK1.RightHandRing3GX" "Character1_Ctrl_RightHandRing3.agx"
		;
connectAttr "HIKState2FK2.RightHandRing3GX" "Character1_Ctrl_RightHandRing3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandRing4.uagx";
connectAttr "Character1_Ctrl_RightHandRing3.s" "Character1_Ctrl_RightHandRing4.is"
		;
connectAttr "HIKState2FK1.RightHandRing4GX" "Character1_Ctrl_RightHandRing4.agx"
		;
connectAttr "HIKState2FK2.RightHandRing4GX" "Character1_Ctrl_RightHandRing4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandPinky1.uagx";
connectAttr "Character1_Ctrl_RightHand.s" "Character1_Ctrl_RightHandPinky1.is";
connectAttr "HIKState2FK1.RightHandPinky1GX" "Character1_Ctrl_RightHandPinky1.agx"
		;
connectAttr "HIKState2FK2.RightHandPinky1GX" "Character1_Ctrl_RightHandPinky1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandPinky2.uagx";
connectAttr "Character1_Ctrl_RightHandPinky1.s" "Character1_Ctrl_RightHandPinky2.is"
		;
connectAttr "HIKState2FK1.RightHandPinky2GX" "Character1_Ctrl_RightHandPinky2.agx"
		;
connectAttr "HIKState2FK2.RightHandPinky2GX" "Character1_Ctrl_RightHandPinky2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandPinky3.uagx";
connectAttr "Character1_Ctrl_RightHandPinky2.s" "Character1_Ctrl_RightHandPinky3.is"
		;
connectAttr "HIKState2FK1.RightHandPinky3GX" "Character1_Ctrl_RightHandPinky3.agx"
		;
connectAttr "HIKState2FK2.RightHandPinky3GX" "Character1_Ctrl_RightHandPinky3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandPinky4.uagx";
connectAttr "Character1_Ctrl_RightHandPinky3.s" "Character1_Ctrl_RightHandPinky4.is"
		;
connectAttr "HIKState2FK1.RightHandPinky4GX" "Character1_Ctrl_RightHandPinky4.agx"
		;
connectAttr "HIKState2FK2.RightHandPinky4GX" "Character1_Ctrl_RightHandPinky4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Neck.uagx";
connectAttr "Character1_Ctrl_Spine2.s" "Character1_Ctrl_Neck.is";
connectAttr "HIKState2FK1.NeckGX" "Character1_Ctrl_Neck.agx";
connectAttr "HIKState2FK2.NeckGX" "Character1_Ctrl_Neck.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Head.uagx";
connectAttr "Character1_Ctrl_Neck.s" "Character1_Ctrl_Head.is";
connectAttr "HIKState2FK1.HeadGX" "Character1_Ctrl_Head.agx";
connectAttr "HIKState2FK2.HeadGX" "Character1_Ctrl_Head.atx";
connectAttr "skinCluster1.og[0]" "pCube8Shape.i";
connectAttr "groupId1.id" "pCube8Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube8Shape.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "pCube8Shape.iog.og[1].gid";
connectAttr "skinCluster1Set.mwc" "pCube8Shape.iog.og[1].gco";
connectAttr "groupId3.id" "pCube8Shape.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "pCube8Shape.iog.og[2].gco";
connectAttr "tweak1.vl[0].vt[0]" "pCube8Shape.twl";
connectAttr "polyNormal1.out" "pCube8ShapeOrig.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "HIKproperties1.msg" "Character1.propertyState";
connectAttr "HIKSkeletonGeneratorNode1.CharacterNode" "Character1.SkeletonGenerator"
		;
connectAttr "Character1_Reference.ch" "Character1.Reference";
connectAttr "Character1_Hips.ch" "Character1.Hips";
connectAttr "Character1_LeftUpLeg.ch" "Character1.LeftUpLeg";
connectAttr "Character1_LeftLeg.ch" "Character1.LeftLeg";
connectAttr "Character1_LeftFoot.ch" "Character1.LeftFoot";
connectAttr "Character1_RightUpLeg.ch" "Character1.RightUpLeg";
connectAttr "Character1_RightLeg.ch" "Character1.RightLeg";
connectAttr "Character1_RightFoot.ch" "Character1.RightFoot";
connectAttr "Character1_Spine.ch" "Character1.Spine";
connectAttr "Character1_LeftArm.ch" "Character1.LeftArm";
connectAttr "Character1_LeftForeArm.ch" "Character1.LeftForeArm";
connectAttr "Character1_LeftHand.ch" "Character1.LeftHand";
connectAttr "Character1_RightArm.ch" "Character1.RightArm";
connectAttr "Character1_RightForeArm.ch" "Character1.RightForeArm";
connectAttr "Character1_RightHand.ch" "Character1.RightHand";
connectAttr "Character1_Head.ch" "Character1.Head";
connectAttr "Character1_LeftToeBase.ch" "Character1.LeftToeBase";
connectAttr "Character1_RightToeBase.ch" "Character1.RightToeBase";
connectAttr "Character1_LeftShoulder.ch" "Character1.LeftShoulder";
connectAttr "Character1_RightShoulder.ch" "Character1.RightShoulder";
connectAttr "Character1_Neck.ch" "Character1.Neck";
connectAttr "Character1_Spine1.ch" "Character1.Spine1";
connectAttr "Character1_Spine2.ch" "Character1.Spine2";
connectAttr "Character1_LeftHandThumb1.ch" "Character1.LeftHandThumb1";
connectAttr "Character1_LeftHandThumb2.ch" "Character1.LeftHandThumb2";
connectAttr "Character1_LeftHandThumb3.ch" "Character1.LeftHandThumb3";
connectAttr "Character1_LeftHandThumb4.ch" "Character1.LeftHandThumb4";
connectAttr "Character1_LeftHandIndex1.ch" "Character1.LeftHandIndex1";
connectAttr "Character1_LeftHandIndex2.ch" "Character1.LeftHandIndex2";
connectAttr "Character1_LeftHandIndex3.ch" "Character1.LeftHandIndex3";
connectAttr "Character1_LeftHandIndex4.ch" "Character1.LeftHandIndex4";
connectAttr "Character1_LeftHandMiddle1.ch" "Character1.LeftHandMiddle1";
connectAttr "Character1_LeftHandMiddle2.ch" "Character1.LeftHandMiddle2";
connectAttr "Character1_LeftHandMiddle3.ch" "Character1.LeftHandMiddle3";
connectAttr "Character1_LeftHandMiddle4.ch" "Character1.LeftHandMiddle4";
connectAttr "Character1_LeftHandRing1.ch" "Character1.LeftHandRing1";
connectAttr "Character1_LeftHandRing2.ch" "Character1.LeftHandRing2";
connectAttr "Character1_LeftHandRing3.ch" "Character1.LeftHandRing3";
connectAttr "Character1_LeftHandRing4.ch" "Character1.LeftHandRing4";
connectAttr "Character1_LeftHandPinky1.ch" "Character1.LeftHandPinky1";
connectAttr "Character1_LeftHandPinky2.ch" "Character1.LeftHandPinky2";
connectAttr "Character1_LeftHandPinky3.ch" "Character1.LeftHandPinky3";
connectAttr "Character1_LeftHandPinky4.ch" "Character1.LeftHandPinky4";
connectAttr "Character1_RightHandThumb1.ch" "Character1.RightHandThumb1";
connectAttr "Character1_RightHandThumb2.ch" "Character1.RightHandThumb2";
connectAttr "Character1_RightHandThumb3.ch" "Character1.RightHandThumb3";
connectAttr "Character1_RightHandThumb4.ch" "Character1.RightHandThumb4";
connectAttr "Character1_RightHandIndex1.ch" "Character1.RightHandIndex1";
connectAttr "Character1_RightHandIndex2.ch" "Character1.RightHandIndex2";
connectAttr "Character1_RightHandIndex3.ch" "Character1.RightHandIndex3";
connectAttr "Character1_RightHandIndex4.ch" "Character1.RightHandIndex4";
connectAttr "Character1_RightHandMiddle1.ch" "Character1.RightHandMiddle1";
connectAttr "Character1_RightHandMiddle2.ch" "Character1.RightHandMiddle2";
connectAttr "Character1_RightHandMiddle3.ch" "Character1.RightHandMiddle3";
connectAttr "Character1_RightHandMiddle4.ch" "Character1.RightHandMiddle4";
connectAttr "Character1_RightHandRing1.ch" "Character1.RightHandRing1";
connectAttr "Character1_RightHandRing2.ch" "Character1.RightHandRing2";
connectAttr "Character1_RightHandRing3.ch" "Character1.RightHandRing3";
connectAttr "Character1_RightHandRing4.ch" "Character1.RightHandRing4";
connectAttr "Character1_RightHandPinky1.ch" "Character1.RightHandPinky1";
connectAttr "Character1_RightHandPinky2.ch" "Character1.RightHandPinky2";
connectAttr "Character1_RightHandPinky3.ch" "Character1.RightHandPinky3";
connectAttr "Character1_RightHandPinky4.ch" "Character1.RightHandPinky4";
connectAttr "Character1_Ctrl_HipsEffector.pull" "HIKproperties1.CtrlResistHipsPosition"
		;
connectAttr "Character1_Ctrl_HipsEffector.stiffness" "HIKproperties1.CtrlResistHipsOrientation"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.pull" "HIKproperties1.CtrlPullLeftFoot"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.pull" "HIKproperties1.CtrlPullRightFoot"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.pull" "HIKproperties1.CtrlChestPullLeftHand"
		;
connectAttr "Character1_Ctrl_RightWristEffector.pull" "HIKproperties1.CtrlChestPullRightHand"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.pull" "HIKproperties1.CtrlPullLeftKnee"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.stiffness" "HIKproperties1.CtrlResistLeftKnee"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.pull" "HIKproperties1.CtrlPullRightKnee"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.stiffness" "HIKproperties1.CtrlResistRightKnee"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.pull" "HIKproperties1.CtrlPullLeftElbow"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.stiffness" "HIKproperties1.CtrlResistLeftElbow"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.pull" "HIKproperties1.CtrlPullRightElbow"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.stiffness" "HIKproperties1.CtrlResistRightElbow"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.stiffness" "HIKproperties1.ParamCtrlSpineStiffness"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.pull" "HIKproperties1.CtrlResistChestPosition"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.stiffness" "HIKproperties1.CtrlResistChestOrientation"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.pull" "HIKproperties1.CtrlPullLeftToeBase"
		;
connectAttr "Character1_Ctrl_RightFootEffector.pull" "HIKproperties1.CtrlPullRightToeBase"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.stiffness" "HIKproperties1.CtrlResistLeftCollar"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.stiffness" "HIKproperties1.CtrlResistRightCollar"
		;
connectAttr "Character1_Ctrl_HeadEffector.pull" "HIKproperties1.CtrlPullHead";
connectAttr "Character1_Ctrl_HeadEffector.stiffness" "HIKproperties1.ParamCtrlNeckStiffness"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKSolverNode1.InputPropertySetState"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKSolverNode1.InputCharacterDefinition"
		;
connectAttr "HIKFK2State1.OutputCharacterState" "HIKSolverNode1.InputCharacterState"
		;
connectAttr "HIKPinning2State1.OutputEffectorState" "HIKSolverNode1.InputEffectorState"
		;
connectAttr "HIKPinning2State1.OutputEffectorStateNoAux" "HIKSolverNode1.InputEffectorStateNoAux"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKState2SK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2SK1.InputCharacterState"
		;
connectAttr "Character1_Hips.pm" "HIKState2SK1.HipsPGX";
connectAttr "Character1_Hips.jo" "HIKState2SK1.HipsPreR";
connectAttr "Character1_Hips.ssc" "HIKState2SK1.HipsSC";
connectAttr "Character1_Hips.is" "HIKState2SK1.HipsIS";
connectAttr "Character1_Hips.ro" "HIKState2SK1.HipsROrder";
connectAttr "Character1_Hips.ra" "HIKState2SK1.HipsPostR";
connectAttr "Character1_LeftUpLeg.pm" "HIKState2SK1.LeftUpLegPGX";
connectAttr "Character1_LeftUpLeg.jo" "HIKState2SK1.LeftUpLegPreR";
connectAttr "Character1_LeftUpLeg.ssc" "HIKState2SK1.LeftUpLegSC";
connectAttr "Character1_LeftUpLeg.is" "HIKState2SK1.LeftUpLegIS";
connectAttr "Character1_LeftUpLeg.ro" "HIKState2SK1.LeftUpLegROrder";
connectAttr "Character1_LeftUpLeg.ra" "HIKState2SK1.LeftUpLegPostR";
connectAttr "Character1_LeftLeg.pm" "HIKState2SK1.LeftLegPGX";
connectAttr "Character1_LeftLeg.jo" "HIKState2SK1.LeftLegPreR";
connectAttr "Character1_LeftLeg.ssc" "HIKState2SK1.LeftLegSC";
connectAttr "Character1_LeftLeg.is" "HIKState2SK1.LeftLegIS";
connectAttr "Character1_LeftLeg.ro" "HIKState2SK1.LeftLegROrder";
connectAttr "Character1_LeftLeg.ra" "HIKState2SK1.LeftLegPostR";
connectAttr "Character1_LeftFoot.pm" "HIKState2SK1.LeftFootPGX";
connectAttr "Character1_LeftFoot.jo" "HIKState2SK1.LeftFootPreR";
connectAttr "Character1_LeftFoot.ssc" "HIKState2SK1.LeftFootSC";
connectAttr "Character1_LeftFoot.is" "HIKState2SK1.LeftFootIS";
connectAttr "Character1_LeftFoot.ro" "HIKState2SK1.LeftFootROrder";
connectAttr "Character1_LeftFoot.ra" "HIKState2SK1.LeftFootPostR";
connectAttr "Character1_RightUpLeg.pm" "HIKState2SK1.RightUpLegPGX";
connectAttr "Character1_RightUpLeg.jo" "HIKState2SK1.RightUpLegPreR";
connectAttr "Character1_RightUpLeg.ssc" "HIKState2SK1.RightUpLegSC";
connectAttr "Character1_RightUpLeg.is" "HIKState2SK1.RightUpLegIS";
connectAttr "Character1_RightUpLeg.ro" "HIKState2SK1.RightUpLegROrder";
connectAttr "Character1_RightUpLeg.ra" "HIKState2SK1.RightUpLegPostR";
connectAttr "Character1_RightLeg.pm" "HIKState2SK1.RightLegPGX";
connectAttr "Character1_RightLeg.jo" "HIKState2SK1.RightLegPreR";
connectAttr "Character1_RightLeg.ssc" "HIKState2SK1.RightLegSC";
connectAttr "Character1_RightLeg.is" "HIKState2SK1.RightLegIS";
connectAttr "Character1_RightLeg.ro" "HIKState2SK1.RightLegROrder";
connectAttr "Character1_RightLeg.ra" "HIKState2SK1.RightLegPostR";
connectAttr "Character1_RightFoot.pm" "HIKState2SK1.RightFootPGX";
connectAttr "Character1_RightFoot.jo" "HIKState2SK1.RightFootPreR";
connectAttr "Character1_RightFoot.ssc" "HIKState2SK1.RightFootSC";
connectAttr "Character1_RightFoot.is" "HIKState2SK1.RightFootIS";
connectAttr "Character1_RightFoot.ro" "HIKState2SK1.RightFootROrder";
connectAttr "Character1_RightFoot.ra" "HIKState2SK1.RightFootPostR";
connectAttr "Character1_Spine.pm" "HIKState2SK1.SpinePGX";
connectAttr "Character1_Spine.jo" "HIKState2SK1.SpinePreR";
connectAttr "Character1_Spine.ssc" "HIKState2SK1.SpineSC";
connectAttr "Character1_Spine.is" "HIKState2SK1.SpineIS";
connectAttr "Character1_Spine.ro" "HIKState2SK1.SpineROrder";
connectAttr "Character1_Spine.ra" "HIKState2SK1.SpinePostR";
connectAttr "Character1_LeftArm.pm" "HIKState2SK1.LeftArmPGX";
connectAttr "Character1_LeftArm.jo" "HIKState2SK1.LeftArmPreR";
connectAttr "Character1_LeftArm.ssc" "HIKState2SK1.LeftArmSC";
connectAttr "Character1_LeftArm.is" "HIKState2SK1.LeftArmIS";
connectAttr "Character1_LeftArm.ro" "HIKState2SK1.LeftArmROrder";
connectAttr "Character1_LeftArm.ra" "HIKState2SK1.LeftArmPostR";
connectAttr "Character1_LeftForeArm.pm" "HIKState2SK1.LeftForeArmPGX";
connectAttr "Character1_LeftForeArm.jo" "HIKState2SK1.LeftForeArmPreR";
connectAttr "Character1_LeftForeArm.ssc" "HIKState2SK1.LeftForeArmSC";
connectAttr "Character1_LeftForeArm.is" "HIKState2SK1.LeftForeArmIS";
connectAttr "Character1_LeftForeArm.ro" "HIKState2SK1.LeftForeArmROrder";
connectAttr "Character1_LeftForeArm.ra" "HIKState2SK1.LeftForeArmPostR";
connectAttr "Character1_LeftHand.pm" "HIKState2SK1.LeftHandPGX";
connectAttr "Character1_LeftHand.jo" "HIKState2SK1.LeftHandPreR";
connectAttr "Character1_LeftHand.ssc" "HIKState2SK1.LeftHandSC";
connectAttr "Character1_LeftHand.is" "HIKState2SK1.LeftHandIS";
connectAttr "Character1_LeftHand.ro" "HIKState2SK1.LeftHandROrder";
connectAttr "Character1_LeftHand.ra" "HIKState2SK1.LeftHandPostR";
connectAttr "Character1_RightArm.pm" "HIKState2SK1.RightArmPGX";
connectAttr "Character1_RightArm.jo" "HIKState2SK1.RightArmPreR";
connectAttr "Character1_RightArm.ssc" "HIKState2SK1.RightArmSC";
connectAttr "Character1_RightArm.is" "HIKState2SK1.RightArmIS";
connectAttr "Character1_RightArm.ro" "HIKState2SK1.RightArmROrder";
connectAttr "Character1_RightArm.ra" "HIKState2SK1.RightArmPostR";
connectAttr "Character1_RightForeArm.pm" "HIKState2SK1.RightForeArmPGX";
connectAttr "Character1_RightForeArm.jo" "HIKState2SK1.RightForeArmPreR";
connectAttr "Character1_RightForeArm.ssc" "HIKState2SK1.RightForeArmSC";
connectAttr "Character1_RightForeArm.is" "HIKState2SK1.RightForeArmIS";
connectAttr "Character1_RightForeArm.ro" "HIKState2SK1.RightForeArmROrder";
connectAttr "Character1_RightForeArm.ra" "HIKState2SK1.RightForeArmPostR";
connectAttr "Character1_RightHand.pm" "HIKState2SK1.RightHandPGX";
connectAttr "Character1_RightHand.jo" "HIKState2SK1.RightHandPreR";
connectAttr "Character1_RightHand.ssc" "HIKState2SK1.RightHandSC";
connectAttr "Character1_RightHand.is" "HIKState2SK1.RightHandIS";
connectAttr "Character1_RightHand.ro" "HIKState2SK1.RightHandROrder";
connectAttr "Character1_RightHand.ra" "HIKState2SK1.RightHandPostR";
connectAttr "Character1_Head.pm" "HIKState2SK1.HeadPGX";
connectAttr "Character1_Head.jo" "HIKState2SK1.HeadPreR";
connectAttr "Character1_Head.ssc" "HIKState2SK1.HeadSC";
connectAttr "Character1_Head.is" "HIKState2SK1.HeadIS";
connectAttr "Character1_Head.ro" "HIKState2SK1.HeadROrder";
connectAttr "Character1_Head.ra" "HIKState2SK1.HeadPostR";
connectAttr "Character1_LeftToeBase.pm" "HIKState2SK1.LeftToeBasePGX";
connectAttr "Character1_LeftToeBase.jo" "HIKState2SK1.LeftToeBasePreR";
connectAttr "Character1_LeftToeBase.ssc" "HIKState2SK1.LeftToeBaseSC";
connectAttr "Character1_LeftToeBase.is" "HIKState2SK1.LeftToeBaseIS";
connectAttr "Character1_LeftToeBase.ro" "HIKState2SK1.LeftToeBaseROrder";
connectAttr "Character1_LeftToeBase.ra" "HIKState2SK1.LeftToeBasePostR";
connectAttr "Character1_RightToeBase.pm" "HIKState2SK1.RightToeBasePGX";
connectAttr "Character1_RightToeBase.jo" "HIKState2SK1.RightToeBasePreR";
connectAttr "Character1_RightToeBase.ssc" "HIKState2SK1.RightToeBaseSC";
connectAttr "Character1_RightToeBase.is" "HIKState2SK1.RightToeBaseIS";
connectAttr "Character1_RightToeBase.ro" "HIKState2SK1.RightToeBaseROrder";
connectAttr "Character1_RightToeBase.ra" "HIKState2SK1.RightToeBasePostR";
connectAttr "Character1_LeftShoulder.pm" "HIKState2SK1.LeftShoulderPGX";
connectAttr "Character1_LeftShoulder.jo" "HIKState2SK1.LeftShoulderPreR";
connectAttr "Character1_LeftShoulder.ssc" "HIKState2SK1.LeftShoulderSC";
connectAttr "Character1_LeftShoulder.is" "HIKState2SK1.LeftShoulderIS";
connectAttr "Character1_LeftShoulder.ro" "HIKState2SK1.LeftShoulderROrder";
connectAttr "Character1_LeftShoulder.ra" "HIKState2SK1.LeftShoulderPostR";
connectAttr "Character1_RightShoulder.pm" "HIKState2SK1.RightShoulderPGX";
connectAttr "Character1_RightShoulder.jo" "HIKState2SK1.RightShoulderPreR";
connectAttr "Character1_RightShoulder.ssc" "HIKState2SK1.RightShoulderSC";
connectAttr "Character1_RightShoulder.is" "HIKState2SK1.RightShoulderIS";
connectAttr "Character1_RightShoulder.ro" "HIKState2SK1.RightShoulderROrder";
connectAttr "Character1_RightShoulder.ra" "HIKState2SK1.RightShoulderPostR";
connectAttr "Character1_Neck.pm" "HIKState2SK1.NeckPGX";
connectAttr "Character1_Neck.jo" "HIKState2SK1.NeckPreR";
connectAttr "Character1_Neck.ssc" "HIKState2SK1.NeckSC";
connectAttr "Character1_Neck.is" "HIKState2SK1.NeckIS";
connectAttr "Character1_Neck.ro" "HIKState2SK1.NeckROrder";
connectAttr "Character1_Neck.ra" "HIKState2SK1.NeckPostR";
connectAttr "Character1_Spine1.pm" "HIKState2SK1.Spine1PGX";
connectAttr "Character1_Spine1.jo" "HIKState2SK1.Spine1PreR";
connectAttr "Character1_Spine1.ssc" "HIKState2SK1.Spine1SC";
connectAttr "Character1_Spine1.is" "HIKState2SK1.Spine1IS";
connectAttr "Character1_Spine1.ro" "HIKState2SK1.Spine1ROrder";
connectAttr "Character1_Spine1.ra" "HIKState2SK1.Spine1PostR";
connectAttr "Character1_Spine2.pm" "HIKState2SK1.Spine2PGX";
connectAttr "Character1_Spine2.jo" "HIKState2SK1.Spine2PreR";
connectAttr "Character1_Spine2.ssc" "HIKState2SK1.Spine2SC";
connectAttr "Character1_Spine2.is" "HIKState2SK1.Spine2IS";
connectAttr "Character1_Spine2.ro" "HIKState2SK1.Spine2ROrder";
connectAttr "Character1_Spine2.ra" "HIKState2SK1.Spine2PostR";
connectAttr "Character1_LeftHandThumb1.pm" "HIKState2SK1.LeftHandThumb1PGX";
connectAttr "Character1_LeftHandThumb1.jo" "HIKState2SK1.LeftHandThumb1PreR";
connectAttr "Character1_LeftHandThumb1.ssc" "HIKState2SK1.LeftHandThumb1SC";
connectAttr "Character1_LeftHandThumb1.is" "HIKState2SK1.LeftHandThumb1IS";
connectAttr "Character1_LeftHandThumb1.ro" "HIKState2SK1.LeftHandThumb1ROrder";
connectAttr "Character1_LeftHandThumb1.ra" "HIKState2SK1.LeftHandThumb1PostR";
connectAttr "Character1_LeftHandThumb2.pm" "HIKState2SK1.LeftHandThumb2PGX";
connectAttr "Character1_LeftHandThumb2.jo" "HIKState2SK1.LeftHandThumb2PreR";
connectAttr "Character1_LeftHandThumb2.ssc" "HIKState2SK1.LeftHandThumb2SC";
connectAttr "Character1_LeftHandThumb2.is" "HIKState2SK1.LeftHandThumb2IS";
connectAttr "Character1_LeftHandThumb2.ro" "HIKState2SK1.LeftHandThumb2ROrder";
connectAttr "Character1_LeftHandThumb2.ra" "HIKState2SK1.LeftHandThumb2PostR";
connectAttr "Character1_LeftHandThumb3.pm" "HIKState2SK1.LeftHandThumb3PGX";
connectAttr "Character1_LeftHandThumb3.jo" "HIKState2SK1.LeftHandThumb3PreR";
connectAttr "Character1_LeftHandThumb3.ssc" "HIKState2SK1.LeftHandThumb3SC";
connectAttr "Character1_LeftHandThumb3.is" "HIKState2SK1.LeftHandThumb3IS";
connectAttr "Character1_LeftHandThumb3.ro" "HIKState2SK1.LeftHandThumb3ROrder";
connectAttr "Character1_LeftHandThumb3.ra" "HIKState2SK1.LeftHandThumb3PostR";
connectAttr "Character1_LeftHandThumb4.pm" "HIKState2SK1.LeftHandThumb4PGX";
connectAttr "Character1_LeftHandThumb4.jo" "HIKState2SK1.LeftHandThumb4PreR";
connectAttr "Character1_LeftHandThumb4.ssc" "HIKState2SK1.LeftHandThumb4SC";
connectAttr "Character1_LeftHandThumb4.is" "HIKState2SK1.LeftHandThumb4IS";
connectAttr "Character1_LeftHandThumb4.ro" "HIKState2SK1.LeftHandThumb4ROrder";
connectAttr "Character1_LeftHandThumb4.ra" "HIKState2SK1.LeftHandThumb4PostR";
connectAttr "Character1_LeftHandIndex1.pm" "HIKState2SK1.LeftHandIndex1PGX";
connectAttr "Character1_LeftHandIndex1.jo" "HIKState2SK1.LeftHandIndex1PreR";
connectAttr "Character1_LeftHandIndex1.ssc" "HIKState2SK1.LeftHandIndex1SC";
connectAttr "Character1_LeftHandIndex1.is" "HIKState2SK1.LeftHandIndex1IS";
connectAttr "Character1_LeftHandIndex1.ro" "HIKState2SK1.LeftHandIndex1ROrder";
connectAttr "Character1_LeftHandIndex1.ra" "HIKState2SK1.LeftHandIndex1PostR";
connectAttr "Character1_LeftHandIndex2.pm" "HIKState2SK1.LeftHandIndex2PGX";
connectAttr "Character1_LeftHandIndex2.jo" "HIKState2SK1.LeftHandIndex2PreR";
connectAttr "Character1_LeftHandIndex2.ssc" "HIKState2SK1.LeftHandIndex2SC";
connectAttr "Character1_LeftHandIndex2.is" "HIKState2SK1.LeftHandIndex2IS";
connectAttr "Character1_LeftHandIndex2.ro" "HIKState2SK1.LeftHandIndex2ROrder";
connectAttr "Character1_LeftHandIndex2.ra" "HIKState2SK1.LeftHandIndex2PostR";
connectAttr "Character1_LeftHandIndex3.pm" "HIKState2SK1.LeftHandIndex3PGX";
connectAttr "Character1_LeftHandIndex3.jo" "HIKState2SK1.LeftHandIndex3PreR";
connectAttr "Character1_LeftHandIndex3.ssc" "HIKState2SK1.LeftHandIndex3SC";
connectAttr "Character1_LeftHandIndex3.is" "HIKState2SK1.LeftHandIndex3IS";
connectAttr "Character1_LeftHandIndex3.ro" "HIKState2SK1.LeftHandIndex3ROrder";
connectAttr "Character1_LeftHandIndex3.ra" "HIKState2SK1.LeftHandIndex3PostR";
connectAttr "Character1_LeftHandIndex4.pm" "HIKState2SK1.LeftHandIndex4PGX";
connectAttr "Character1_LeftHandIndex4.jo" "HIKState2SK1.LeftHandIndex4PreR";
connectAttr "Character1_LeftHandIndex4.ssc" "HIKState2SK1.LeftHandIndex4SC";
connectAttr "Character1_LeftHandIndex4.is" "HIKState2SK1.LeftHandIndex4IS";
connectAttr "Character1_LeftHandIndex4.ro" "HIKState2SK1.LeftHandIndex4ROrder";
connectAttr "Character1_LeftHandIndex4.ra" "HIKState2SK1.LeftHandIndex4PostR";
connectAttr "Character1_LeftHandMiddle1.pm" "HIKState2SK1.LeftHandMiddle1PGX";
connectAttr "Character1_LeftHandMiddle1.jo" "HIKState2SK1.LeftHandMiddle1PreR";
connectAttr "Character1_LeftHandMiddle1.ssc" "HIKState2SK1.LeftHandMiddle1SC";
connectAttr "Character1_LeftHandMiddle1.is" "HIKState2SK1.LeftHandMiddle1IS";
connectAttr "Character1_LeftHandMiddle1.ro" "HIKState2SK1.LeftHandMiddle1ROrder"
		;
connectAttr "Character1_LeftHandMiddle1.ra" "HIKState2SK1.LeftHandMiddle1PostR";
connectAttr "Character1_LeftHandMiddle2.pm" "HIKState2SK1.LeftHandMiddle2PGX";
connectAttr "Character1_LeftHandMiddle2.jo" "HIKState2SK1.LeftHandMiddle2PreR";
connectAttr "Character1_LeftHandMiddle2.ssc" "HIKState2SK1.LeftHandMiddle2SC";
connectAttr "Character1_LeftHandMiddle2.is" "HIKState2SK1.LeftHandMiddle2IS";
connectAttr "Character1_LeftHandMiddle2.ro" "HIKState2SK1.LeftHandMiddle2ROrder"
		;
connectAttr "Character1_LeftHandMiddle2.ra" "HIKState2SK1.LeftHandMiddle2PostR";
connectAttr "Character1_LeftHandMiddle3.pm" "HIKState2SK1.LeftHandMiddle3PGX";
connectAttr "Character1_LeftHandMiddle3.jo" "HIKState2SK1.LeftHandMiddle3PreR";
connectAttr "Character1_LeftHandMiddle3.ssc" "HIKState2SK1.LeftHandMiddle3SC";
connectAttr "Character1_LeftHandMiddle3.is" "HIKState2SK1.LeftHandMiddle3IS";
connectAttr "Character1_LeftHandMiddle3.ro" "HIKState2SK1.LeftHandMiddle3ROrder"
		;
connectAttr "Character1_LeftHandMiddle3.ra" "HIKState2SK1.LeftHandMiddle3PostR";
connectAttr "Character1_LeftHandMiddle4.pm" "HIKState2SK1.LeftHandMiddle4PGX";
connectAttr "Character1_LeftHandMiddle4.jo" "HIKState2SK1.LeftHandMiddle4PreR";
connectAttr "Character1_LeftHandMiddle4.ssc" "HIKState2SK1.LeftHandMiddle4SC";
connectAttr "Character1_LeftHandMiddle4.is" "HIKState2SK1.LeftHandMiddle4IS";
connectAttr "Character1_LeftHandMiddle4.ro" "HIKState2SK1.LeftHandMiddle4ROrder"
		;
connectAttr "Character1_LeftHandMiddle4.ra" "HIKState2SK1.LeftHandMiddle4PostR";
connectAttr "Character1_LeftHandRing1.pm" "HIKState2SK1.LeftHandRing1PGX";
connectAttr "Character1_LeftHandRing1.jo" "HIKState2SK1.LeftHandRing1PreR";
connectAttr "Character1_LeftHandRing1.ssc" "HIKState2SK1.LeftHandRing1SC";
connectAttr "Character1_LeftHandRing1.is" "HIKState2SK1.LeftHandRing1IS";
connectAttr "Character1_LeftHandRing1.ro" "HIKState2SK1.LeftHandRing1ROrder";
connectAttr "Character1_LeftHandRing1.ra" "HIKState2SK1.LeftHandRing1PostR";
connectAttr "Character1_LeftHandRing2.pm" "HIKState2SK1.LeftHandRing2PGX";
connectAttr "Character1_LeftHandRing2.jo" "HIKState2SK1.LeftHandRing2PreR";
connectAttr "Character1_LeftHandRing2.ssc" "HIKState2SK1.LeftHandRing2SC";
connectAttr "Character1_LeftHandRing2.is" "HIKState2SK1.LeftHandRing2IS";
connectAttr "Character1_LeftHandRing2.ro" "HIKState2SK1.LeftHandRing2ROrder";
connectAttr "Character1_LeftHandRing2.ra" "HIKState2SK1.LeftHandRing2PostR";
connectAttr "Character1_LeftHandRing3.pm" "HIKState2SK1.LeftHandRing3PGX";
connectAttr "Character1_LeftHandRing3.jo" "HIKState2SK1.LeftHandRing3PreR";
connectAttr "Character1_LeftHandRing3.ssc" "HIKState2SK1.LeftHandRing3SC";
connectAttr "Character1_LeftHandRing3.is" "HIKState2SK1.LeftHandRing3IS";
connectAttr "Character1_LeftHandRing3.ro" "HIKState2SK1.LeftHandRing3ROrder";
connectAttr "Character1_LeftHandRing3.ra" "HIKState2SK1.LeftHandRing3PostR";
connectAttr "Character1_LeftHandRing4.pm" "HIKState2SK1.LeftHandRing4PGX";
connectAttr "Character1_LeftHandRing4.jo" "HIKState2SK1.LeftHandRing4PreR";
connectAttr "Character1_LeftHandRing4.ssc" "HIKState2SK1.LeftHandRing4SC";
connectAttr "Character1_LeftHandRing4.is" "HIKState2SK1.LeftHandRing4IS";
connectAttr "Character1_LeftHandRing4.ro" "HIKState2SK1.LeftHandRing4ROrder";
connectAttr "Character1_LeftHandRing4.ra" "HIKState2SK1.LeftHandRing4PostR";
connectAttr "Character1_LeftHandPinky1.pm" "HIKState2SK1.LeftHandPinky1PGX";
connectAttr "Character1_LeftHandPinky1.jo" "HIKState2SK1.LeftHandPinky1PreR";
connectAttr "Character1_LeftHandPinky1.ssc" "HIKState2SK1.LeftHandPinky1SC";
connectAttr "Character1_LeftHandPinky1.is" "HIKState2SK1.LeftHandPinky1IS";
connectAttr "Character1_LeftHandPinky1.ro" "HIKState2SK1.LeftHandPinky1ROrder";
connectAttr "Character1_LeftHandPinky1.ra" "HIKState2SK1.LeftHandPinky1PostR";
connectAttr "Character1_LeftHandPinky2.pm" "HIKState2SK1.LeftHandPinky2PGX";
connectAttr "Character1_LeftHandPinky2.jo" "HIKState2SK1.LeftHandPinky2PreR";
connectAttr "Character1_LeftHandPinky2.ssc" "HIKState2SK1.LeftHandPinky2SC";
connectAttr "Character1_LeftHandPinky2.is" "HIKState2SK1.LeftHandPinky2IS";
connectAttr "Character1_LeftHandPinky2.ro" "HIKState2SK1.LeftHandPinky2ROrder";
connectAttr "Character1_LeftHandPinky2.ra" "HIKState2SK1.LeftHandPinky2PostR";
connectAttr "Character1_LeftHandPinky3.pm" "HIKState2SK1.LeftHandPinky3PGX";
connectAttr "Character1_LeftHandPinky3.jo" "HIKState2SK1.LeftHandPinky3PreR";
connectAttr "Character1_LeftHandPinky3.ssc" "HIKState2SK1.LeftHandPinky3SC";
connectAttr "Character1_LeftHandPinky3.is" "HIKState2SK1.LeftHandPinky3IS";
connectAttr "Character1_LeftHandPinky3.ro" "HIKState2SK1.LeftHandPinky3ROrder";
connectAttr "Character1_LeftHandPinky3.ra" "HIKState2SK1.LeftHandPinky3PostR";
connectAttr "Character1_LeftHandPinky4.pm" "HIKState2SK1.LeftHandPinky4PGX";
connectAttr "Character1_LeftHandPinky4.jo" "HIKState2SK1.LeftHandPinky4PreR";
connectAttr "Character1_LeftHandPinky4.ssc" "HIKState2SK1.LeftHandPinky4SC";
connectAttr "Character1_LeftHandPinky4.is" "HIKState2SK1.LeftHandPinky4IS";
connectAttr "Character1_LeftHandPinky4.ro" "HIKState2SK1.LeftHandPinky4ROrder";
connectAttr "Character1_LeftHandPinky4.ra" "HIKState2SK1.LeftHandPinky4PostR";
connectAttr "Character1_RightHandThumb1.pm" "HIKState2SK1.RightHandThumb1PGX";
connectAttr "Character1_RightHandThumb1.jo" "HIKState2SK1.RightHandThumb1PreR";
connectAttr "Character1_RightHandThumb1.ssc" "HIKState2SK1.RightHandThumb1SC";
connectAttr "Character1_RightHandThumb1.is" "HIKState2SK1.RightHandThumb1IS";
connectAttr "Character1_RightHandThumb1.ro" "HIKState2SK1.RightHandThumb1ROrder"
		;
connectAttr "Character1_RightHandThumb1.ra" "HIKState2SK1.RightHandThumb1PostR";
connectAttr "Character1_RightHandThumb2.pm" "HIKState2SK1.RightHandThumb2PGX";
connectAttr "Character1_RightHandThumb2.jo" "HIKState2SK1.RightHandThumb2PreR";
connectAttr "Character1_RightHandThumb2.ssc" "HIKState2SK1.RightHandThumb2SC";
connectAttr "Character1_RightHandThumb2.is" "HIKState2SK1.RightHandThumb2IS";
connectAttr "Character1_RightHandThumb2.ro" "HIKState2SK1.RightHandThumb2ROrder"
		;
connectAttr "Character1_RightHandThumb2.ra" "HIKState2SK1.RightHandThumb2PostR";
connectAttr "Character1_RightHandThumb3.pm" "HIKState2SK1.RightHandThumb3PGX";
connectAttr "Character1_RightHandThumb3.jo" "HIKState2SK1.RightHandThumb3PreR";
connectAttr "Character1_RightHandThumb3.ssc" "HIKState2SK1.RightHandThumb3SC";
connectAttr "Character1_RightHandThumb3.is" "HIKState2SK1.RightHandThumb3IS";
connectAttr "Character1_RightHandThumb3.ro" "HIKState2SK1.RightHandThumb3ROrder"
		;
connectAttr "Character1_RightHandThumb3.ra" "HIKState2SK1.RightHandThumb3PostR";
connectAttr "Character1_RightHandThumb4.pm" "HIKState2SK1.RightHandThumb4PGX";
connectAttr "Character1_RightHandThumb4.jo" "HIKState2SK1.RightHandThumb4PreR";
connectAttr "Character1_RightHandThumb4.ssc" "HIKState2SK1.RightHandThumb4SC";
connectAttr "Character1_RightHandThumb4.is" "HIKState2SK1.RightHandThumb4IS";
connectAttr "Character1_RightHandThumb4.ro" "HIKState2SK1.RightHandThumb4ROrder"
		;
connectAttr "Character1_RightHandThumb4.ra" "HIKState2SK1.RightHandThumb4PostR";
connectAttr "Character1_RightHandIndex1.pm" "HIKState2SK1.RightHandIndex1PGX";
connectAttr "Character1_RightHandIndex1.jo" "HIKState2SK1.RightHandIndex1PreR";
connectAttr "Character1_RightHandIndex1.ssc" "HIKState2SK1.RightHandIndex1SC";
connectAttr "Character1_RightHandIndex1.is" "HIKState2SK1.RightHandIndex1IS";
connectAttr "Character1_RightHandIndex1.ro" "HIKState2SK1.RightHandIndex1ROrder"
		;
connectAttr "Character1_RightHandIndex1.ra" "HIKState2SK1.RightHandIndex1PostR";
connectAttr "Character1_RightHandIndex2.pm" "HIKState2SK1.RightHandIndex2PGX";
connectAttr "Character1_RightHandIndex2.jo" "HIKState2SK1.RightHandIndex2PreR";
connectAttr "Character1_RightHandIndex2.ssc" "HIKState2SK1.RightHandIndex2SC";
connectAttr "Character1_RightHandIndex2.is" "HIKState2SK1.RightHandIndex2IS";
connectAttr "Character1_RightHandIndex2.ro" "HIKState2SK1.RightHandIndex2ROrder"
		;
connectAttr "Character1_RightHandIndex2.ra" "HIKState2SK1.RightHandIndex2PostR";
connectAttr "Character1_RightHandIndex3.pm" "HIKState2SK1.RightHandIndex3PGX";
connectAttr "Character1_RightHandIndex3.jo" "HIKState2SK1.RightHandIndex3PreR";
connectAttr "Character1_RightHandIndex3.ssc" "HIKState2SK1.RightHandIndex3SC";
connectAttr "Character1_RightHandIndex3.is" "HIKState2SK1.RightHandIndex3IS";
connectAttr "Character1_RightHandIndex3.ro" "HIKState2SK1.RightHandIndex3ROrder"
		;
connectAttr "Character1_RightHandIndex3.ra" "HIKState2SK1.RightHandIndex3PostR";
connectAttr "Character1_RightHandIndex4.pm" "HIKState2SK1.RightHandIndex4PGX";
connectAttr "Character1_RightHandIndex4.jo" "HIKState2SK1.RightHandIndex4PreR";
connectAttr "Character1_RightHandIndex4.ssc" "HIKState2SK1.RightHandIndex4SC";
connectAttr "Character1_RightHandIndex4.is" "HIKState2SK1.RightHandIndex4IS";
connectAttr "Character1_RightHandIndex4.ro" "HIKState2SK1.RightHandIndex4ROrder"
		;
connectAttr "Character1_RightHandIndex4.ra" "HIKState2SK1.RightHandIndex4PostR";
connectAttr "Character1_RightHandMiddle1.pm" "HIKState2SK1.RightHandMiddle1PGX";
connectAttr "Character1_RightHandMiddle1.jo" "HIKState2SK1.RightHandMiddle1PreR"
		;
connectAttr "Character1_RightHandMiddle1.ssc" "HIKState2SK1.RightHandMiddle1SC";
connectAttr "Character1_RightHandMiddle1.is" "HIKState2SK1.RightHandMiddle1IS";
connectAttr "Character1_RightHandMiddle1.ro" "HIKState2SK1.RightHandMiddle1ROrder"
		;
connectAttr "Character1_RightHandMiddle1.ra" "HIKState2SK1.RightHandMiddle1PostR"
		;
connectAttr "Character1_RightHandMiddle2.pm" "HIKState2SK1.RightHandMiddle2PGX";
connectAttr "Character1_RightHandMiddle2.jo" "HIKState2SK1.RightHandMiddle2PreR"
		;
connectAttr "Character1_RightHandMiddle2.ssc" "HIKState2SK1.RightHandMiddle2SC";
connectAttr "Character1_RightHandMiddle2.is" "HIKState2SK1.RightHandMiddle2IS";
connectAttr "Character1_RightHandMiddle2.ro" "HIKState2SK1.RightHandMiddle2ROrder"
		;
connectAttr "Character1_RightHandMiddle2.ra" "HIKState2SK1.RightHandMiddle2PostR"
		;
connectAttr "Character1_RightHandMiddle3.pm" "HIKState2SK1.RightHandMiddle3PGX";
connectAttr "Character1_RightHandMiddle3.jo" "HIKState2SK1.RightHandMiddle3PreR"
		;
connectAttr "Character1_RightHandMiddle3.ssc" "HIKState2SK1.RightHandMiddle3SC";
connectAttr "Character1_RightHandMiddle3.is" "HIKState2SK1.RightHandMiddle3IS";
connectAttr "Character1_RightHandMiddle3.ro" "HIKState2SK1.RightHandMiddle3ROrder"
		;
connectAttr "Character1_RightHandMiddle3.ra" "HIKState2SK1.RightHandMiddle3PostR"
		;
connectAttr "Character1_RightHandMiddle4.pm" "HIKState2SK1.RightHandMiddle4PGX";
connectAttr "Character1_RightHandMiddle4.jo" "HIKState2SK1.RightHandMiddle4PreR"
		;
connectAttr "Character1_RightHandMiddle4.ssc" "HIKState2SK1.RightHandMiddle4SC";
connectAttr "Character1_RightHandMiddle4.is" "HIKState2SK1.RightHandMiddle4IS";
connectAttr "Character1_RightHandMiddle4.ro" "HIKState2SK1.RightHandMiddle4ROrder"
		;
connectAttr "Character1_RightHandMiddle4.ra" "HIKState2SK1.RightHandMiddle4PostR"
		;
connectAttr "Character1_RightHandRing1.pm" "HIKState2SK1.RightHandRing1PGX";
connectAttr "Character1_RightHandRing1.jo" "HIKState2SK1.RightHandRing1PreR";
connectAttr "Character1_RightHandRing1.ssc" "HIKState2SK1.RightHandRing1SC";
connectAttr "Character1_RightHandRing1.is" "HIKState2SK1.RightHandRing1IS";
connectAttr "Character1_RightHandRing1.ro" "HIKState2SK1.RightHandRing1ROrder";
connectAttr "Character1_RightHandRing1.ra" "HIKState2SK1.RightHandRing1PostR";
connectAttr "Character1_RightHandRing2.pm" "HIKState2SK1.RightHandRing2PGX";
connectAttr "Character1_RightHandRing2.jo" "HIKState2SK1.RightHandRing2PreR";
connectAttr "Character1_RightHandRing2.ssc" "HIKState2SK1.RightHandRing2SC";
connectAttr "Character1_RightHandRing2.is" "HIKState2SK1.RightHandRing2IS";
connectAttr "Character1_RightHandRing2.ro" "HIKState2SK1.RightHandRing2ROrder";
connectAttr "Character1_RightHandRing2.ra" "HIKState2SK1.RightHandRing2PostR";
connectAttr "Character1_RightHandRing3.pm" "HIKState2SK1.RightHandRing3PGX";
connectAttr "Character1_RightHandRing3.jo" "HIKState2SK1.RightHandRing3PreR";
connectAttr "Character1_RightHandRing3.ssc" "HIKState2SK1.RightHandRing3SC";
connectAttr "Character1_RightHandRing3.is" "HIKState2SK1.RightHandRing3IS";
connectAttr "Character1_RightHandRing3.ro" "HIKState2SK1.RightHandRing3ROrder";
connectAttr "Character1_RightHandRing3.ra" "HIKState2SK1.RightHandRing3PostR";
connectAttr "Character1_RightHandRing4.pm" "HIKState2SK1.RightHandRing4PGX";
connectAttr "Character1_RightHandRing4.jo" "HIKState2SK1.RightHandRing4PreR";
connectAttr "Character1_RightHandRing4.ssc" "HIKState2SK1.RightHandRing4SC";
connectAttr "Character1_RightHandRing4.is" "HIKState2SK1.RightHandRing4IS";
connectAttr "Character1_RightHandRing4.ro" "HIKState2SK1.RightHandRing4ROrder";
connectAttr "Character1_RightHandRing4.ra" "HIKState2SK1.RightHandRing4PostR";
connectAttr "Character1_RightHandPinky1.pm" "HIKState2SK1.RightHandPinky1PGX";
connectAttr "Character1_RightHandPinky1.jo" "HIKState2SK1.RightHandPinky1PreR";
connectAttr "Character1_RightHandPinky1.ssc" "HIKState2SK1.RightHandPinky1SC";
connectAttr "Character1_RightHandPinky1.is" "HIKState2SK1.RightHandPinky1IS";
connectAttr "Character1_RightHandPinky1.ro" "HIKState2SK1.RightHandPinky1ROrder"
		;
connectAttr "Character1_RightHandPinky1.ra" "HIKState2SK1.RightHandPinky1PostR";
connectAttr "Character1_RightHandPinky2.pm" "HIKState2SK1.RightHandPinky2PGX";
connectAttr "Character1_RightHandPinky2.jo" "HIKState2SK1.RightHandPinky2PreR";
connectAttr "Character1_RightHandPinky2.ssc" "HIKState2SK1.RightHandPinky2SC";
connectAttr "Character1_RightHandPinky2.is" "HIKState2SK1.RightHandPinky2IS";
connectAttr "Character1_RightHandPinky2.ro" "HIKState2SK1.RightHandPinky2ROrder"
		;
connectAttr "Character1_RightHandPinky2.ra" "HIKState2SK1.RightHandPinky2PostR";
connectAttr "Character1_RightHandPinky3.pm" "HIKState2SK1.RightHandPinky3PGX";
connectAttr "Character1_RightHandPinky3.jo" "HIKState2SK1.RightHandPinky3PreR";
connectAttr "Character1_RightHandPinky3.ssc" "HIKState2SK1.RightHandPinky3SC";
connectAttr "Character1_RightHandPinky3.is" "HIKState2SK1.RightHandPinky3IS";
connectAttr "Character1_RightHandPinky3.ro" "HIKState2SK1.RightHandPinky3ROrder"
		;
connectAttr "Character1_RightHandPinky3.ra" "HIKState2SK1.RightHandPinky3PostR";
connectAttr "Character1_RightHandPinky4.pm" "HIKState2SK1.RightHandPinky4PGX";
connectAttr "Character1_RightHandPinky4.jo" "HIKState2SK1.RightHandPinky4PreR";
connectAttr "Character1_RightHandPinky4.ssc" "HIKState2SK1.RightHandPinky4SC";
connectAttr "Character1_RightHandPinky4.is" "HIKState2SK1.RightHandPinky4IS";
connectAttr "Character1_RightHandPinky4.ro" "HIKState2SK1.RightHandPinky4ROrder"
		;
connectAttr "Character1_RightHandPinky4.ra" "HIKState2SK1.RightHandPinky4PostR";
connectAttr "Character1.OutputCharacterDefinition" "Character1_ControlRig.HIC";
connectAttr "Character1_Ctrl_Reference.ch" "Character1_ControlRig.Reference";
connectAttr "Character1_Ctrl_Hips.ch" "Character1_ControlRig.Hips";
connectAttr "Character1_Ctrl_LeftUpLeg.ch" "Character1_ControlRig.LeftUpLeg";
connectAttr "Character1_Ctrl_LeftLeg.ch" "Character1_ControlRig.LeftLeg";
connectAttr "Character1_Ctrl_LeftFoot.ch" "Character1_ControlRig.LeftFoot";
connectAttr "Character1_Ctrl_RightUpLeg.ch" "Character1_ControlRig.RightUpLeg";
connectAttr "Character1_Ctrl_RightLeg.ch" "Character1_ControlRig.RightLeg";
connectAttr "Character1_Ctrl_RightFoot.ch" "Character1_ControlRig.RightFoot";
connectAttr "Character1_Ctrl_Spine.ch" "Character1_ControlRig.Spine";
connectAttr "Character1_Ctrl_LeftArm.ch" "Character1_ControlRig.LeftArm";
connectAttr "Character1_Ctrl_LeftForeArm.ch" "Character1_ControlRig.LeftForeArm"
		;
connectAttr "Character1_Ctrl_LeftHand.ch" "Character1_ControlRig.LeftHand";
connectAttr "Character1_Ctrl_RightArm.ch" "Character1_ControlRig.RightArm";
connectAttr "Character1_Ctrl_RightForeArm.ch" "Character1_ControlRig.RightForeArm"
		;
connectAttr "Character1_Ctrl_RightHand.ch" "Character1_ControlRig.RightHand";
connectAttr "Character1_Ctrl_Head.ch" "Character1_ControlRig.Head";
connectAttr "Character1_Ctrl_LeftToeBase.ch" "Character1_ControlRig.LeftToeBase"
		;
connectAttr "Character1_Ctrl_RightToeBase.ch" "Character1_ControlRig.RightToeBase"
		;
connectAttr "Character1_Ctrl_LeftShoulder.ch" "Character1_ControlRig.LeftShoulder"
		;
connectAttr "Character1_Ctrl_RightShoulder.ch" "Character1_ControlRig.RightShoulder"
		;
connectAttr "Character1_Ctrl_Neck.ch" "Character1_ControlRig.Neck";
connectAttr "Character1_Ctrl_Spine1.ch" "Character1_ControlRig.Spine1";
connectAttr "Character1_Ctrl_Spine2.ch" "Character1_ControlRig.Spine2";
connectAttr "Character1_Ctrl_LeftHandThumb1.ch" "Character1_ControlRig.LeftHandThumb1"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2.ch" "Character1_ControlRig.LeftHandThumb2"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3.ch" "Character1_ControlRig.LeftHandThumb3"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4.ch" "Character1_ControlRig.LeftHandThumb4"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1.ch" "Character1_ControlRig.LeftHandIndex1"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2.ch" "Character1_ControlRig.LeftHandIndex2"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3.ch" "Character1_ControlRig.LeftHandIndex3"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4.ch" "Character1_ControlRig.LeftHandIndex4"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1.ch" "Character1_ControlRig.LeftHandMiddle1"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2.ch" "Character1_ControlRig.LeftHandMiddle2"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3.ch" "Character1_ControlRig.LeftHandMiddle3"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4.ch" "Character1_ControlRig.LeftHandMiddle4"
		;
connectAttr "Character1_Ctrl_LeftHandRing1.ch" "Character1_ControlRig.LeftHandRing1"
		;
connectAttr "Character1_Ctrl_LeftHandRing2.ch" "Character1_ControlRig.LeftHandRing2"
		;
connectAttr "Character1_Ctrl_LeftHandRing3.ch" "Character1_ControlRig.LeftHandRing3"
		;
connectAttr "Character1_Ctrl_LeftHandRing4.ch" "Character1_ControlRig.LeftHandRing4"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1.ch" "Character1_ControlRig.LeftHandPinky1"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2.ch" "Character1_ControlRig.LeftHandPinky2"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3.ch" "Character1_ControlRig.LeftHandPinky3"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4.ch" "Character1_ControlRig.LeftHandPinky4"
		;
connectAttr "Character1_Ctrl_RightHandThumb1.ch" "Character1_ControlRig.RightHandThumb1"
		;
connectAttr "Character1_Ctrl_RightHandThumb2.ch" "Character1_ControlRig.RightHandThumb2"
		;
connectAttr "Character1_Ctrl_RightHandThumb3.ch" "Character1_ControlRig.RightHandThumb3"
		;
connectAttr "Character1_Ctrl_RightHandThumb4.ch" "Character1_ControlRig.RightHandThumb4"
		;
connectAttr "Character1_Ctrl_RightHandIndex1.ch" "Character1_ControlRig.RightHandIndex1"
		;
connectAttr "Character1_Ctrl_RightHandIndex2.ch" "Character1_ControlRig.RightHandIndex2"
		;
connectAttr "Character1_Ctrl_RightHandIndex3.ch" "Character1_ControlRig.RightHandIndex3"
		;
connectAttr "Character1_Ctrl_RightHandIndex4.ch" "Character1_ControlRig.RightHandIndex4"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1.ch" "Character1_ControlRig.RightHandMiddle1"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2.ch" "Character1_ControlRig.RightHandMiddle2"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3.ch" "Character1_ControlRig.RightHandMiddle3"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4.ch" "Character1_ControlRig.RightHandMiddle4"
		;
connectAttr "Character1_Ctrl_RightHandRing1.ch" "Character1_ControlRig.RightHandRing1"
		;
connectAttr "Character1_Ctrl_RightHandRing2.ch" "Character1_ControlRig.RightHandRing2"
		;
connectAttr "Character1_Ctrl_RightHandRing3.ch" "Character1_ControlRig.RightHandRing3"
		;
connectAttr "Character1_Ctrl_RightHandRing4.ch" "Character1_ControlRig.RightHandRing4"
		;
connectAttr "Character1_Ctrl_RightHandPinky1.ch" "Character1_ControlRig.RightHandPinky1"
		;
connectAttr "Character1_Ctrl_RightHandPinky2.ch" "Character1_ControlRig.RightHandPinky2"
		;
connectAttr "Character1_Ctrl_RightHandPinky3.ch" "Character1_ControlRig.RightHandPinky3"
		;
connectAttr "Character1_Ctrl_RightHandPinky4.ch" "Character1_ControlRig.RightHandPinky4"
		;
connectAttr "Character1_Ctrl_HipsEffector.ch" "Character1_ControlRig.HipsEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.ch" "Character1_ControlRig.LeftAnkleEffector[0]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.ch" "Character1_ControlRig.RightAnkleEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.ch" "Character1_ControlRig.LeftWristEffector[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.ch" "Character1_ControlRig.RightWristEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.ch" "Character1_ControlRig.LeftKneeEffector[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.ch" "Character1_ControlRig.RightKneeEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.ch" "Character1_ControlRig.LeftElbowEffector[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.ch" "Character1_ControlRig.RightElbowEffector[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.ch" "Character1_ControlRig.ChestOriginEffector[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.ch" "Character1_ControlRig.ChestEndEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.ch" "Character1_ControlRig.LeftFootEffector[0]"
		;
connectAttr "Character1_Ctrl_RightFootEffector.ch" "Character1_ControlRig.RightFootEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.ch" "Character1_ControlRig.LeftShoulderEffector[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.ch" "Character1_ControlRig.RightShoulderEffector[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.ch" "Character1_ControlRig.HeadEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.ch" "Character1_ControlRig.LeftHipEffector[0]"
		;
connectAttr "Character1_Ctrl_RightHipEffector.ch" "Character1_ControlRig.RightHipEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.ch" "Character1_ControlRig.LeftHandThumbEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.ch" "Character1_ControlRig.LeftHandIndexEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.ch" "Character1_ControlRig.LeftHandMiddleEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.ch" "Character1_ControlRig.LeftHandRingEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.ch" "Character1_ControlRig.LeftHandPinkyEffector[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.ch" "Character1_ControlRig.RightHandThumbEffector[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.ch" "Character1_ControlRig.RightHandIndexEffector[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.ch" "Character1_ControlRig.RightHandMiddleEffector[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.ch" "Character1_ControlRig.RightHandRingEffector[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.ch" "Character1_ControlRig.RightHandPinkyEffector[0]"
		;
connectAttr "HIKproperties1.ra" "Character1_ControlRig.ra";
connectAttr "Character1_HipsBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_ChestBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_LeftArmBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_RightArmBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_LeftLegBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_RightLegBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_HeadBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_LeftHandBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_RightHandBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_LeftFootBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_RightFootBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.msg" "Character1_FullBodyKG.act[0]";
connectAttr "Character1_Ctrl_LeftUpLeg.msg" "Character1_FullBodyKG.act[1]";
connectAttr "Character1_Ctrl_LeftLeg.msg" "Character1_FullBodyKG.act[2]";
connectAttr "Character1_Ctrl_LeftFoot.msg" "Character1_FullBodyKG.act[3]";
connectAttr "Character1_Ctrl_RightUpLeg.msg" "Character1_FullBodyKG.act[4]";
connectAttr "Character1_Ctrl_RightLeg.msg" "Character1_FullBodyKG.act[5]";
connectAttr "Character1_Ctrl_RightFoot.msg" "Character1_FullBodyKG.act[6]";
connectAttr "Character1_Ctrl_Spine.msg" "Character1_FullBodyKG.act[7]";
connectAttr "Character1_Ctrl_LeftArm.msg" "Character1_FullBodyKG.act[8]";
connectAttr "Character1_Ctrl_LeftForeArm.msg" "Character1_FullBodyKG.act[9]";
connectAttr "Character1_Ctrl_LeftHand.msg" "Character1_FullBodyKG.act[10]";
connectAttr "Character1_Ctrl_RightArm.msg" "Character1_FullBodyKG.act[11]";
connectAttr "Character1_Ctrl_RightForeArm.msg" "Character1_FullBodyKG.act[12]";
connectAttr "Character1_Ctrl_RightHand.msg" "Character1_FullBodyKG.act[13]";
connectAttr "Character1_Ctrl_Head.msg" "Character1_FullBodyKG.act[14]";
connectAttr "Character1_Ctrl_LeftToeBase.msg" "Character1_FullBodyKG.act[15]";
connectAttr "Character1_Ctrl_RightToeBase.msg" "Character1_FullBodyKG.act[16]";
connectAttr "Character1_Ctrl_LeftShoulder.msg" "Character1_FullBodyKG.act[17]";
connectAttr "Character1_Ctrl_RightShoulder.msg" "Character1_FullBodyKG.act[18]";
connectAttr "Character1_Ctrl_Neck.msg" "Character1_FullBodyKG.act[19]";
connectAttr "Character1_Ctrl_Spine1.msg" "Character1_FullBodyKG.act[20]";
connectAttr "Character1_Ctrl_Spine2.msg" "Character1_FullBodyKG.act[21]";
connectAttr "Character1_Ctrl_LeftHandThumb1.msg" "Character1_FullBodyKG.act[22]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2.msg" "Character1_FullBodyKG.act[23]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3.msg" "Character1_FullBodyKG.act[24]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4.msg" "Character1_FullBodyKG.act[25]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1.msg" "Character1_FullBodyKG.act[26]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2.msg" "Character1_FullBodyKG.act[27]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3.msg" "Character1_FullBodyKG.act[28]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4.msg" "Character1_FullBodyKG.act[29]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1.msg" "Character1_FullBodyKG.act[30]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2.msg" "Character1_FullBodyKG.act[31]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3.msg" "Character1_FullBodyKG.act[32]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4.msg" "Character1_FullBodyKG.act[33]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1.msg" "Character1_FullBodyKG.act[34]";
connectAttr "Character1_Ctrl_LeftHandRing2.msg" "Character1_FullBodyKG.act[35]";
connectAttr "Character1_Ctrl_LeftHandRing3.msg" "Character1_FullBodyKG.act[36]";
connectAttr "Character1_Ctrl_LeftHandRing4.msg" "Character1_FullBodyKG.act[37]";
connectAttr "Character1_Ctrl_LeftHandPinky1.msg" "Character1_FullBodyKG.act[38]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2.msg" "Character1_FullBodyKG.act[39]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3.msg" "Character1_FullBodyKG.act[40]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4.msg" "Character1_FullBodyKG.act[41]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1.msg" "Character1_FullBodyKG.act[42]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2.msg" "Character1_FullBodyKG.act[43]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3.msg" "Character1_FullBodyKG.act[44]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4.msg" "Character1_FullBodyKG.act[45]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1.msg" "Character1_FullBodyKG.act[46]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2.msg" "Character1_FullBodyKG.act[47]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3.msg" "Character1_FullBodyKG.act[48]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4.msg" "Character1_FullBodyKG.act[49]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1.msg" "Character1_FullBodyKG.act[50]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2.msg" "Character1_FullBodyKG.act[51]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3.msg" "Character1_FullBodyKG.act[52]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4.msg" "Character1_FullBodyKG.act[53]"
		;
connectAttr "Character1_Ctrl_RightHandRing1.msg" "Character1_FullBodyKG.act[54]"
		;
connectAttr "Character1_Ctrl_RightHandRing2.msg" "Character1_FullBodyKG.act[55]"
		;
connectAttr "Character1_Ctrl_RightHandRing3.msg" "Character1_FullBodyKG.act[56]"
		;
connectAttr "Character1_Ctrl_RightHandRing4.msg" "Character1_FullBodyKG.act[57]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1.msg" "Character1_FullBodyKG.act[58]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2.msg" "Character1_FullBodyKG.act[59]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3.msg" "Character1_FullBodyKG.act[60]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4.msg" "Character1_FullBodyKG.act[61]"
		;
connectAttr "Character1_Ctrl_HipsEffector.msg" "Character1_FullBodyKG.act[62]";
connectAttr "Character1_Ctrl_LeftAnkleEffector.msg" "Character1_FullBodyKG.act[63]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.msg" "Character1_FullBodyKG.act[64]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.msg" "Character1_FullBodyKG.act[65]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.msg" "Character1_FullBodyKG.act[66]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.msg" "Character1_FullBodyKG.act[67]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.msg" "Character1_FullBodyKG.act[68]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.msg" "Character1_FullBodyKG.act[69]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.msg" "Character1_FullBodyKG.act[70]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.msg" "Character1_FullBodyKG.act[71]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.msg" "Character1_FullBodyKG.act[72]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.msg" "Character1_FullBodyKG.act[73]"
		;
connectAttr "Character1_Ctrl_RightFootEffector.msg" "Character1_FullBodyKG.act[74]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.msg" "Character1_FullBodyKG.act[75]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.msg" "Character1_FullBodyKG.act[76]"
		;
connectAttr "Character1_Ctrl_HeadEffector.msg" "Character1_FullBodyKG.act[77]";
connectAttr "Character1_Ctrl_LeftHipEffector.msg" "Character1_FullBodyKG.act[78]"
		;
connectAttr "Character1_Ctrl_RightHipEffector.msg" "Character1_FullBodyKG.act[79]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.msg" "Character1_FullBodyKG.act[80]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.msg" "Character1_FullBodyKG.act[81]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.msg" "Character1_FullBodyKG.act[82]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.msg" "Character1_FullBodyKG.act[83]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.msg" "Character1_FullBodyKG.act[84]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.msg" "Character1_FullBodyKG.act[85]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.msg" "Character1_FullBodyKG.act[86]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.msg" "Character1_FullBodyKG.act[87]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.msg" "Character1_FullBodyKG.act[88]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.msg" "Character1_FullBodyKG.act[89]"
		;
connectAttr "Character1_Ctrl_Hips.rz" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.ry" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.rx" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.tz" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.ty" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.tx" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HipsEffector.rz" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HipsEffector.ry" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HipsEffector.rx" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HipsEffector.tz" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HipsEffector.ty" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HipsEffector.tx" "Character1_HipsBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.msg" "Character1_HipsBPKG.act[0]";
connectAttr "Character1_Ctrl_HipsEffector.msg" "Character1_HipsBPKG.act[1]";
connectAttr "Character1_Ctrl_Spine.rz" "Character1_ChestBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Spine.ry" "Character1_ChestBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Spine.rx" "Character1_ChestBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Spine1.rz" "Character1_ChestBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Spine1.ry" "Character1_ChestBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Spine1.rx" "Character1_ChestBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Spine2.rz" "Character1_ChestBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Spine2.ry" "Character1_ChestBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Spine2.rx" "Character1_ChestBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.rz" "Character1_ChestBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.ry" "Character1_ChestBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.rx" "Character1_ChestBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.tz" "Character1_ChestBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.ty" "Character1_ChestBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.tx" "Character1_ChestBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestEndEffector.rz" "Character1_ChestBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_ChestEndEffector.ry" "Character1_ChestBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_ChestEndEffector.rx" "Character1_ChestBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_ChestEndEffector.tz" "Character1_ChestBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_ChestEndEffector.ty" "Character1_ChestBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_ChestEndEffector.tx" "Character1_ChestBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_Spine.msg" "Character1_ChestBPKG.act[0]";
connectAttr "Character1_Ctrl_Spine1.msg" "Character1_ChestBPKG.act[1]";
connectAttr "Character1_Ctrl_Spine2.msg" "Character1_ChestBPKG.act[2]";
connectAttr "Character1_Ctrl_ChestOriginEffector.msg" "Character1_ChestBPKG.act[3]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.msg" "Character1_ChestBPKG.act[4]"
		;
connectAttr "Character1_Ctrl_LeftArm.rz" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftArm.ry" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftArm.rx" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftForeArm.rz" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftForeArm.ry" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftForeArm.rx" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftHand.rz" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftHand.ry" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftHand.rx" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftShoulder.rz" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftShoulder.ry" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftShoulder.rx" "Character1_LeftArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftWristEffector.rz" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftWristEffector.ry" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftWristEffector.rx" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftWristEffector.tz" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftWristEffector.ty" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftWristEffector.tx" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.rz" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.ry" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.rx" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.tz" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.ty" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.tx" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.rz" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.ry" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.rx" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.tz" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.ty" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.tx" "Character1_LeftArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftArm.msg" "Character1_LeftArmBPKG.act[0]";
connectAttr "Character1_Ctrl_LeftForeArm.msg" "Character1_LeftArmBPKG.act[1]";
connectAttr "Character1_Ctrl_LeftHand.msg" "Character1_LeftArmBPKG.act[2]";
connectAttr "Character1_Ctrl_LeftShoulder.msg" "Character1_LeftArmBPKG.act[3]";
connectAttr "Character1_Ctrl_LeftWristEffector.msg" "Character1_LeftArmBPKG.act[4]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.msg" "Character1_LeftArmBPKG.act[5]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.msg" "Character1_LeftArmBPKG.act[6]"
		;
connectAttr "Character1_Ctrl_RightArm.rz" "Character1_RightArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightArm.ry" "Character1_RightArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightArm.rx" "Character1_RightArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightForeArm.rz" "Character1_RightArmBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightForeArm.ry" "Character1_RightArmBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightForeArm.rx" "Character1_RightArmBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightHand.rz" "Character1_RightArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightHand.ry" "Character1_RightArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightHand.rx" "Character1_RightArmBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightShoulder.rz" "Character1_RightArmBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightShoulder.ry" "Character1_RightArmBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightShoulder.rx" "Character1_RightArmBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightWristEffector.rz" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightWristEffector.ry" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightWristEffector.rx" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightWristEffector.tz" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightWristEffector.ty" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightWristEffector.tx" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.rz" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.ry" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.rx" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.tz" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.ty" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.tx" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.rz" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.ry" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.rx" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.tz" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.ty" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.tx" "Character1_RightArmBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightArm.msg" "Character1_RightArmBPKG.act[0]";
connectAttr "Character1_Ctrl_RightForeArm.msg" "Character1_RightArmBPKG.act[1]";
connectAttr "Character1_Ctrl_RightHand.msg" "Character1_RightArmBPKG.act[2]";
connectAttr "Character1_Ctrl_RightShoulder.msg" "Character1_RightArmBPKG.act[3]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.msg" "Character1_RightArmBPKG.act[4]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.msg" "Character1_RightArmBPKG.act[5]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.msg" "Character1_RightArmBPKG.act[6]"
		;
connectAttr "Character1_Ctrl_LeftUpLeg.rz" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftUpLeg.ry" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftUpLeg.rx" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftLeg.rz" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftLeg.ry" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftLeg.rx" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftFoot.rz" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftFoot.ry" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftFoot.rx" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftToeBase.rz" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftToeBase.ry" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftToeBase.rx" "Character1_LeftLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_LeftAnkleEffector.rz" "Character1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftAnkleEffector.ry" "Character1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftAnkleEffector.rx" "Character1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftAnkleEffector.tz" "Character1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftAnkleEffector.ty" "Character1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftAnkleEffector.tx" "Character1_LeftLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftKneeEffector.rz" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftKneeEffector.ry" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftKneeEffector.rx" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftKneeEffector.tz" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftKneeEffector.ty" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftKneeEffector.tx" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftFootEffector.rz" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftFootEffector.ry" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftFootEffector.rx" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftFootEffector.tz" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftFootEffector.ty" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftFootEffector.tx" "Character1_LeftLegBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHipEffector.rz" "Character1_LeftLegBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHipEffector.ry" "Character1_LeftLegBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHipEffector.rx" "Character1_LeftLegBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHipEffector.tz" "Character1_LeftLegBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHipEffector.ty" "Character1_LeftLegBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHipEffector.tx" "Character1_LeftLegBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftUpLeg.msg" "Character1_LeftLegBPKG.act[0]";
connectAttr "Character1_Ctrl_LeftLeg.msg" "Character1_LeftLegBPKG.act[1]";
connectAttr "Character1_Ctrl_LeftFoot.msg" "Character1_LeftLegBPKG.act[2]";
connectAttr "Character1_Ctrl_LeftToeBase.msg" "Character1_LeftLegBPKG.act[3]";
connectAttr "Character1_Ctrl_LeftAnkleEffector.msg" "Character1_LeftLegBPKG.act[4]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.msg" "Character1_LeftLegBPKG.act[5]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.msg" "Character1_LeftLegBPKG.act[6]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.msg" "Character1_LeftLegBPKG.act[7]"
		;
connectAttr "Character1_Ctrl_RightUpLeg.rz" "Character1_RightLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightUpLeg.ry" "Character1_RightLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightUpLeg.rx" "Character1_RightLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightLeg.rz" "Character1_RightLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightLeg.ry" "Character1_RightLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightLeg.rx" "Character1_RightLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightFoot.rz" "Character1_RightLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightFoot.ry" "Character1_RightLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightFoot.rx" "Character1_RightLegBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_RightToeBase.rz" "Character1_RightLegBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightToeBase.ry" "Character1_RightLegBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightToeBase.rx" "Character1_RightLegBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.rz" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightAnkleEffector.ry" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightAnkleEffector.rx" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightAnkleEffector.tz" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightAnkleEffector.ty" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightAnkleEffector.tx" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.rz" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.ry" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.rx" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.tz" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.ty" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.tx" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightFootEffector.rz" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightFootEffector.ry" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightFootEffector.rx" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightFootEffector.tz" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightFootEffector.ty" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightFootEffector.tx" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHipEffector.rz" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHipEffector.ry" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHipEffector.rx" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHipEffector.tz" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHipEffector.ty" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHipEffector.tx" "Character1_RightLegBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightUpLeg.msg" "Character1_RightLegBPKG.act[0]";
connectAttr "Character1_Ctrl_RightLeg.msg" "Character1_RightLegBPKG.act[1]";
connectAttr "Character1_Ctrl_RightFoot.msg" "Character1_RightLegBPKG.act[2]";
connectAttr "Character1_Ctrl_RightToeBase.msg" "Character1_RightLegBPKG.act[3]";
connectAttr "Character1_Ctrl_RightAnkleEffector.msg" "Character1_RightLegBPKG.act[4]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.msg" "Character1_RightLegBPKG.act[5]"
		;
connectAttr "Character1_Ctrl_RightFootEffector.msg" "Character1_RightLegBPKG.act[6]"
		;
connectAttr "Character1_Ctrl_RightHipEffector.msg" "Character1_RightLegBPKG.act[7]"
		;
connectAttr "Character1_Ctrl_Head.rz" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Head.ry" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Head.rx" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Neck.rz" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Neck.ry" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Neck.rx" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.rz" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.ry" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.rx" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.tz" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.ty" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.tx" "Character1_HeadBPKG.dnsm" -na;
connectAttr "Character1_Ctrl_Head.msg" "Character1_HeadBPKG.act[0]";
connectAttr "Character1_Ctrl_Neck.msg" "Character1_HeadBPKG.act[1]";
connectAttr "Character1_Ctrl_HeadEffector.msg" "Character1_HeadBPKG.act[2]";
connectAttr "Character1_Ctrl_LeftHandThumb1.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumb1.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumb1.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumb2.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumb2.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumb2.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumb3.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumb3.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumb3.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumb4.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumb4.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumb4.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex1.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex1.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex1.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex2.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex2.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex2.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex3.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex3.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex3.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex4.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex4.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandIndex4.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1.rz" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle1.ry" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle1.rx" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle2.rz" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle2.ry" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle2.rx" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle3.rz" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle3.ry" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle3.rx" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle4.rz" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle4.ry" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle4.rx" "Character1_LeftHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandRing1.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing1.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing1.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing2.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing2.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing2.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing3.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing3.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing3.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing4.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing4.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing4.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky1.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky1.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky1.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky2.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky2.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky2.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky3.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky3.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky3.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky4.rz" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky4.ry" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky4.rx" "Character1_LeftHandBPKG.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.rz" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.ry" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.rx" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.tz" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.ty" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.tx" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.rz" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.ry" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.rx" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.tz" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.ty" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.tx" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.rz" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.ry" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.rx" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.tz" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.ty" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.tx" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.rz" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.ry" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.rx" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.tz" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.ty" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.tx" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.rz" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.ry" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.rx" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.tz" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.ty" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.tx" "Character1_LeftHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumb1.msg" "Character1_LeftHandBPKG.act[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2.msg" "Character1_LeftHandBPKG.act[1]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3.msg" "Character1_LeftHandBPKG.act[2]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4.msg" "Character1_LeftHandBPKG.act[3]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1.msg" "Character1_LeftHandBPKG.act[4]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2.msg" "Character1_LeftHandBPKG.act[5]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3.msg" "Character1_LeftHandBPKG.act[6]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4.msg" "Character1_LeftHandBPKG.act[7]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1.msg" "Character1_LeftHandBPKG.act[8]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2.msg" "Character1_LeftHandBPKG.act[9]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3.msg" "Character1_LeftHandBPKG.act[10]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4.msg" "Character1_LeftHandBPKG.act[11]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1.msg" "Character1_LeftHandBPKG.act[12]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2.msg" "Character1_LeftHandBPKG.act[13]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3.msg" "Character1_LeftHandBPKG.act[14]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4.msg" "Character1_LeftHandBPKG.act[15]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1.msg" "Character1_LeftHandBPKG.act[16]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2.msg" "Character1_LeftHandBPKG.act[17]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3.msg" "Character1_LeftHandBPKG.act[18]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4.msg" "Character1_LeftHandBPKG.act[19]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.msg" "Character1_LeftHandBPKG.act[20]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.msg" "Character1_LeftHandBPKG.act[21]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.msg" "Character1_LeftHandBPKG.act[22]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.msg" "Character1_LeftHandBPKG.act[23]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.msg" "Character1_LeftHandBPKG.act[24]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb1.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb1.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb2.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb2.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb2.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb3.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb3.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb3.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb4.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb4.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb4.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex1.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex1.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex1.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex2.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex2.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex2.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex3.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex3.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex3.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex4.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex4.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex4.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle1.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle1.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle1.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle2.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle2.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle2.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle3.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle3.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle3.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle4.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle4.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle4.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing1.rz" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandRing1.ry" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandRing1.rx" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandRing2.rz" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandRing2.ry" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandRing2.rx" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandRing3.rz" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandRing3.ry" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandRing3.rx" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandRing4.rz" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandRing4.ry" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandRing4.rx" "Character1_RightHandBPKG.dnsm" 
		-na;
connectAttr "Character1_Ctrl_RightHandPinky1.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky1.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky1.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky2.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky2.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky2.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky3.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky3.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky3.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky4.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky4.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky4.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.tz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.ty" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.tx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.tz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.ty" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.tx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.tz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.ty" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.tx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.tz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.ty" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.tx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.rz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.ry" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.rx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.tz" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.ty" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.tx" "Character1_RightHandBPKG.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb1.msg" "Character1_RightHandBPKG.act[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2.msg" "Character1_RightHandBPKG.act[1]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3.msg" "Character1_RightHandBPKG.act[2]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4.msg" "Character1_RightHandBPKG.act[3]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1.msg" "Character1_RightHandBPKG.act[4]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2.msg" "Character1_RightHandBPKG.act[5]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3.msg" "Character1_RightHandBPKG.act[6]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4.msg" "Character1_RightHandBPKG.act[7]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1.msg" "Character1_RightHandBPKG.act[8]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2.msg" "Character1_RightHandBPKG.act[9]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3.msg" "Character1_RightHandBPKG.act[10]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4.msg" "Character1_RightHandBPKG.act[11]"
		;
connectAttr "Character1_Ctrl_RightHandRing1.msg" "Character1_RightHandBPKG.act[12]"
		;
connectAttr "Character1_Ctrl_RightHandRing2.msg" "Character1_RightHandBPKG.act[13]"
		;
connectAttr "Character1_Ctrl_RightHandRing3.msg" "Character1_RightHandBPKG.act[14]"
		;
connectAttr "Character1_Ctrl_RightHandRing4.msg" "Character1_RightHandBPKG.act[15]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1.msg" "Character1_RightHandBPKG.act[16]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2.msg" "Character1_RightHandBPKG.act[17]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3.msg" "Character1_RightHandBPKG.act[18]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4.msg" "Character1_RightHandBPKG.act[19]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.msg" "Character1_RightHandBPKG.act[20]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.msg" "Character1_RightHandBPKG.act[21]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.msg" "Character1_RightHandBPKG.act[22]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.msg" "Character1_RightHandBPKG.act[23]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.msg" "Character1_RightHandBPKG.act[24]"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKFK2State1.InputCharacterDefinition"
		;
connectAttr "Character1_Ctrl_Reference.wm" "HIKFK2State1.ReferenceGX";
connectAttr "Character1_Ctrl_Hips.wm" "HIKFK2State1.HipsGX";
connectAttr "Character1_Ctrl_LeftUpLeg.wm" "HIKFK2State1.LeftUpLegGX";
connectAttr "Character1_Ctrl_LeftLeg.wm" "HIKFK2State1.LeftLegGX";
connectAttr "Character1_Ctrl_LeftFoot.wm" "HIKFK2State1.LeftFootGX";
connectAttr "Character1_Ctrl_RightUpLeg.wm" "HIKFK2State1.RightUpLegGX";
connectAttr "Character1_Ctrl_RightLeg.wm" "HIKFK2State1.RightLegGX";
connectAttr "Character1_Ctrl_RightFoot.wm" "HIKFK2State1.RightFootGX";
connectAttr "Character1_Ctrl_Spine.wm" "HIKFK2State1.SpineGX";
connectAttr "Character1_Ctrl_LeftArm.wm" "HIKFK2State1.LeftArmGX";
connectAttr "Character1_Ctrl_LeftForeArm.wm" "HIKFK2State1.LeftForeArmGX";
connectAttr "Character1_Ctrl_LeftHand.wm" "HIKFK2State1.LeftHandGX";
connectAttr "Character1_Ctrl_RightArm.wm" "HIKFK2State1.RightArmGX";
connectAttr "Character1_Ctrl_RightForeArm.wm" "HIKFK2State1.RightForeArmGX";
connectAttr "Character1_Ctrl_RightHand.wm" "HIKFK2State1.RightHandGX";
connectAttr "Character1_Ctrl_Head.wm" "HIKFK2State1.HeadGX";
connectAttr "Character1_Ctrl_LeftToeBase.wm" "HIKFK2State1.LeftToeBaseGX";
connectAttr "Character1_Ctrl_RightToeBase.wm" "HIKFK2State1.RightToeBaseGX";
connectAttr "Character1_Ctrl_LeftShoulder.wm" "HIKFK2State1.LeftShoulderGX";
connectAttr "Character1_Ctrl_RightShoulder.wm" "HIKFK2State1.RightShoulderGX";
connectAttr "Character1_Ctrl_Neck.wm" "HIKFK2State1.NeckGX";
connectAttr "Character1_Ctrl_Spine1.wm" "HIKFK2State1.Spine1GX";
connectAttr "Character1_Ctrl_Spine2.wm" "HIKFK2State1.Spine2GX";
connectAttr "Character1_Ctrl_LeftHandThumb1.wm" "HIKFK2State1.LeftHandThumb1GX";
connectAttr "Character1_Ctrl_LeftHandThumb2.wm" "HIKFK2State1.LeftHandThumb2GX";
connectAttr "Character1_Ctrl_LeftHandThumb3.wm" "HIKFK2State1.LeftHandThumb3GX";
connectAttr "Character1_Ctrl_LeftHandThumb4.wm" "HIKFK2State1.LeftHandThumb4GX";
connectAttr "Character1_Ctrl_LeftHandIndex1.wm" "HIKFK2State1.LeftHandIndex1GX";
connectAttr "Character1_Ctrl_LeftHandIndex2.wm" "HIKFK2State1.LeftHandIndex2GX";
connectAttr "Character1_Ctrl_LeftHandIndex3.wm" "HIKFK2State1.LeftHandIndex3GX";
connectAttr "Character1_Ctrl_LeftHandIndex4.wm" "HIKFK2State1.LeftHandIndex4GX";
connectAttr "Character1_Ctrl_LeftHandMiddle1.wm" "HIKFK2State1.LeftHandMiddle1GX"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2.wm" "HIKFK2State1.LeftHandMiddle2GX"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3.wm" "HIKFK2State1.LeftHandMiddle3GX"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4.wm" "HIKFK2State1.LeftHandMiddle4GX"
		;
connectAttr "Character1_Ctrl_LeftHandRing1.wm" "HIKFK2State1.LeftHandRing1GX";
connectAttr "Character1_Ctrl_LeftHandRing2.wm" "HIKFK2State1.LeftHandRing2GX";
connectAttr "Character1_Ctrl_LeftHandRing3.wm" "HIKFK2State1.LeftHandRing3GX";
connectAttr "Character1_Ctrl_LeftHandRing4.wm" "HIKFK2State1.LeftHandRing4GX";
connectAttr "Character1_Ctrl_LeftHandPinky1.wm" "HIKFK2State1.LeftHandPinky1GX";
connectAttr "Character1_Ctrl_LeftHandPinky2.wm" "HIKFK2State1.LeftHandPinky2GX";
connectAttr "Character1_Ctrl_LeftHandPinky3.wm" "HIKFK2State1.LeftHandPinky3GX";
connectAttr "Character1_Ctrl_LeftHandPinky4.wm" "HIKFK2State1.LeftHandPinky4GX";
connectAttr "Character1_Ctrl_RightHandThumb1.wm" "HIKFK2State1.RightHandThumb1GX"
		;
connectAttr "Character1_Ctrl_RightHandThumb2.wm" "HIKFK2State1.RightHandThumb2GX"
		;
connectAttr "Character1_Ctrl_RightHandThumb3.wm" "HIKFK2State1.RightHandThumb3GX"
		;
connectAttr "Character1_Ctrl_RightHandThumb4.wm" "HIKFK2State1.RightHandThumb4GX"
		;
connectAttr "Character1_Ctrl_RightHandIndex1.wm" "HIKFK2State1.RightHandIndex1GX"
		;
connectAttr "Character1_Ctrl_RightHandIndex2.wm" "HIKFK2State1.RightHandIndex2GX"
		;
connectAttr "Character1_Ctrl_RightHandIndex3.wm" "HIKFK2State1.RightHandIndex3GX"
		;
connectAttr "Character1_Ctrl_RightHandIndex4.wm" "HIKFK2State1.RightHandIndex4GX"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1.wm" "HIKFK2State1.RightHandMiddle1GX"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2.wm" "HIKFK2State1.RightHandMiddle2GX"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3.wm" "HIKFK2State1.RightHandMiddle3GX"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4.wm" "HIKFK2State1.RightHandMiddle4GX"
		;
connectAttr "Character1_Ctrl_RightHandRing1.wm" "HIKFK2State1.RightHandRing1GX";
connectAttr "Character1_Ctrl_RightHandRing2.wm" "HIKFK2State1.RightHandRing2GX";
connectAttr "Character1_Ctrl_RightHandRing3.wm" "HIKFK2State1.RightHandRing3GX";
connectAttr "Character1_Ctrl_RightHandRing4.wm" "HIKFK2State1.RightHandRing4GX";
connectAttr "Character1_Ctrl_RightHandPinky1.wm" "HIKFK2State1.RightHandPinky1GX"
		;
connectAttr "Character1_Ctrl_RightHandPinky2.wm" "HIKFK2State1.RightHandPinky2GX"
		;
connectAttr "Character1_Ctrl_RightHandPinky3.wm" "HIKFK2State1.RightHandPinky3GX"
		;
connectAttr "Character1_Ctrl_RightHandPinky4.wm" "HIKFK2State1.RightHandPinky4GX"
		;
connectAttr "Character1_Ctrl_HipsEffector.wm" "HIKEffector2State1.HipsEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_HipsEffector.rt" "HIKEffector2State1.HipsEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_HipsEffector.rr" "HIKEffector2State1.HipsEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_HipsEffector.po" "HIKEffector2State1.HipsEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_HipsEffector.pull" "HIKEffector2State1.HipsEffectorPull"
		;
connectAttr "Character1_Ctrl_HipsEffector.stiffness" "HIKEffector2State1.HipsEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.wm" "HIKEffector2State1.LeftAnkleEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.rt" "HIKEffector2State1.LeftAnkleEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.rr" "HIKEffector2State1.LeftAnkleEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.po" "HIKEffector2State1.LeftAnkleEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.pull" "HIKEffector2State1.LeftAnkleEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.stiffness" "HIKEffector2State1.LeftAnkleEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.wm" "HIKEffector2State1.RightAnkleEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.rt" "HIKEffector2State1.RightAnkleEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.rr" "HIKEffector2State1.RightAnkleEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.po" "HIKEffector2State1.RightAnkleEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.pull" "HIKEffector2State1.RightAnkleEffectorPull"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.stiffness" "HIKEffector2State1.RightAnkleEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.wm" "HIKEffector2State1.LeftWristEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.rt" "HIKEffector2State1.LeftWristEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.rr" "HIKEffector2State1.LeftWristEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.po" "HIKEffector2State1.LeftWristEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.pull" "HIKEffector2State1.LeftWristEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.stiffness" "HIKEffector2State1.LeftWristEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightWristEffector.wm" "HIKEffector2State1.RightWristEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.rt" "HIKEffector2State1.RightWristEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.rr" "HIKEffector2State1.RightWristEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.po" "HIKEffector2State1.RightWristEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.pull" "HIKEffector2State1.RightWristEffectorPull"
		;
connectAttr "Character1_Ctrl_RightWristEffector.stiffness" "HIKEffector2State1.RightWristEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.wm" "HIKEffector2State1.LeftKneeEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.rt" "HIKEffector2State1.LeftKneeEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.rr" "HIKEffector2State1.LeftKneeEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.po" "HIKEffector2State1.LeftKneeEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.pull" "HIKEffector2State1.LeftKneeEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.stiffness" "HIKEffector2State1.LeftKneeEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.wm" "HIKEffector2State1.RightKneeEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.rt" "HIKEffector2State1.RightKneeEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.rr" "HIKEffector2State1.RightKneeEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.po" "HIKEffector2State1.RightKneeEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.pull" "HIKEffector2State1.RightKneeEffectorPull"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.stiffness" "HIKEffector2State1.RightKneeEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.wm" "HIKEffector2State1.LeftElbowEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.rt" "HIKEffector2State1.LeftElbowEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.rr" "HIKEffector2State1.LeftElbowEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.po" "HIKEffector2State1.LeftElbowEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.pull" "HIKEffector2State1.LeftElbowEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.stiffness" "HIKEffector2State1.LeftElbowEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.wm" "HIKEffector2State1.RightElbowEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.rt" "HIKEffector2State1.RightElbowEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.rr" "HIKEffector2State1.RightElbowEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.po" "HIKEffector2State1.RightElbowEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.pull" "HIKEffector2State1.RightElbowEffectorPull"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.stiffness" "HIKEffector2State1.RightElbowEffectorStiffness"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.wm" "HIKEffector2State1.ChestOriginEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.rt" "HIKEffector2State1.ChestOriginEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.rr" "HIKEffector2State1.ChestOriginEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.po" "HIKEffector2State1.ChestOriginEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.pull" "HIKEffector2State1.ChestOriginEffectorPull"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.stiffness" "HIKEffector2State1.ChestOriginEffectorStiffness"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.wm" "HIKEffector2State1.ChestEndEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.rt" "HIKEffector2State1.ChestEndEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.rr" "HIKEffector2State1.ChestEndEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.po" "HIKEffector2State1.ChestEndEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.pull" "HIKEffector2State1.ChestEndEffectorPull"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.stiffness" "HIKEffector2State1.ChestEndEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.wm" "HIKEffector2State1.LeftFootEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.rt" "HIKEffector2State1.LeftFootEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.rr" "HIKEffector2State1.LeftFootEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.po" "HIKEffector2State1.LeftFootEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.pull" "HIKEffector2State1.LeftFootEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.stiffness" "HIKEffector2State1.LeftFootEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightFootEffector.wm" "HIKEffector2State1.RightFootEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightFootEffector.rt" "HIKEffector2State1.RightFootEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightFootEffector.rr" "HIKEffector2State1.RightFootEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightFootEffector.po" "HIKEffector2State1.RightFootEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightFootEffector.pull" "HIKEffector2State1.RightFootEffectorPull"
		;
connectAttr "Character1_Ctrl_RightFootEffector.stiffness" "HIKEffector2State1.RightFootEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.wm" "HIKEffector2State1.LeftShoulderEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.rt" "HIKEffector2State1.LeftShoulderEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.rr" "HIKEffector2State1.LeftShoulderEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.po" "HIKEffector2State1.LeftShoulderEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.pull" "HIKEffector2State1.LeftShoulderEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.stiffness" "HIKEffector2State1.LeftShoulderEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.wm" "HIKEffector2State1.RightShoulderEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.rt" "HIKEffector2State1.RightShoulderEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.rr" "HIKEffector2State1.RightShoulderEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.po" "HIKEffector2State1.RightShoulderEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.pull" "HIKEffector2State1.RightShoulderEffectorPull"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.stiffness" "HIKEffector2State1.RightShoulderEffectorStiffness"
		;
connectAttr "Character1_Ctrl_HeadEffector.wm" "HIKEffector2State1.HeadEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.rt" "HIKEffector2State1.HeadEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.rr" "HIKEffector2State1.HeadEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.po" "HIKEffector2State1.HeadEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.pull" "HIKEffector2State1.HeadEffectorPull"
		;
connectAttr "Character1_Ctrl_HeadEffector.stiffness" "HIKEffector2State1.HeadEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.wm" "HIKEffector2State1.LeftHipEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.rt" "HIKEffector2State1.LeftHipEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.rr" "HIKEffector2State1.LeftHipEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.po" "HIKEffector2State1.LeftHipEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.pull" "HIKEffector2State1.LeftHipEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.stiffness" "HIKEffector2State1.LeftHipEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightHipEffector.wm" "HIKEffector2State1.RightHipEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightHipEffector.rt" "HIKEffector2State1.RightHipEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightHipEffector.rr" "HIKEffector2State1.RightHipEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightHipEffector.po" "HIKEffector2State1.RightHipEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightHipEffector.pull" "HIKEffector2State1.RightHipEffectorPull"
		;
connectAttr "Character1_Ctrl_RightHipEffector.stiffness" "HIKEffector2State1.RightHipEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.wm" "HIKEffector2State1.LeftHandThumbEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.rt" "HIKEffector2State1.LeftHandThumbEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.rr" "HIKEffector2State1.LeftHandThumbEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.po" "HIKEffector2State1.LeftHandThumbEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.pull" "HIKEffector2State1.LeftHandThumbEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.stiffness" "HIKEffector2State1.LeftHandThumbEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.wm" "HIKEffector2State1.LeftHandIndexEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.rt" "HIKEffector2State1.LeftHandIndexEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.rr" "HIKEffector2State1.LeftHandIndexEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.po" "HIKEffector2State1.LeftHandIndexEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.pull" "HIKEffector2State1.LeftHandIndexEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.stiffness" "HIKEffector2State1.LeftHandIndexEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.wm" "HIKEffector2State1.LeftHandMiddleEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.rt" "HIKEffector2State1.LeftHandMiddleEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.rr" "HIKEffector2State1.LeftHandMiddleEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.po" "HIKEffector2State1.LeftHandMiddleEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.pull" "HIKEffector2State1.LeftHandMiddleEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.stiffness" "HIKEffector2State1.LeftHandMiddleEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.wm" "HIKEffector2State1.LeftHandRingEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.rt" "HIKEffector2State1.LeftHandRingEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.rr" "HIKEffector2State1.LeftHandRingEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.po" "HIKEffector2State1.LeftHandRingEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.pull" "HIKEffector2State1.LeftHandRingEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.stiffness" "HIKEffector2State1.LeftHandRingEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.wm" "HIKEffector2State1.LeftHandPinkyEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.rt" "HIKEffector2State1.LeftHandPinkyEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.rr" "HIKEffector2State1.LeftHandPinkyEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.po" "HIKEffector2State1.LeftHandPinkyEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.pull" "HIKEffector2State1.LeftHandPinkyEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.stiffness" "HIKEffector2State1.LeftHandPinkyEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.wm" "HIKEffector2State1.RightHandThumbEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.rt" "HIKEffector2State1.RightHandThumbEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.rr" "HIKEffector2State1.RightHandThumbEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.po" "HIKEffector2State1.RightHandThumbEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.pull" "HIKEffector2State1.RightHandThumbEffectorPull"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.stiffness" "HIKEffector2State1.RightHandThumbEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.wm" "HIKEffector2State1.RightHandIndexEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.rt" "HIKEffector2State1.RightHandIndexEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.rr" "HIKEffector2State1.RightHandIndexEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.po" "HIKEffector2State1.RightHandIndexEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.pull" "HIKEffector2State1.RightHandIndexEffectorPull"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.stiffness" "HIKEffector2State1.RightHandIndexEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.wm" "HIKEffector2State1.RightHandMiddleEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.rt" "HIKEffector2State1.RightHandMiddleEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.rr" "HIKEffector2State1.RightHandMiddleEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.po" "HIKEffector2State1.RightHandMiddleEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.pull" "HIKEffector2State1.RightHandMiddleEffectorPull"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.stiffness" "HIKEffector2State1.RightHandMiddleEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.wm" "HIKEffector2State1.RightHandRingEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.rt" "HIKEffector2State1.RightHandRingEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.rr" "HIKEffector2State1.RightHandRingEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.po" "HIKEffector2State1.RightHandRingEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.pull" "HIKEffector2State1.RightHandRingEffectorPull"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.stiffness" "HIKEffector2State1.RightHandRingEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.wm" "HIKEffector2State1.RightHandPinkyEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.rt" "HIKEffector2State1.RightHandPinkyEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.rr" "HIKEffector2State1.RightHandPinkyEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.po" "HIKEffector2State1.RightHandPinkyEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.pull" "HIKEffector2State1.RightHandPinkyEffectorPull"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.stiffness" "HIKEffector2State1.RightHandPinkyEffectorStiffness"
		;
connectAttr "HIKEffector2State1.EFF" "HIKPinning2State1.InputEffectorState";
connectAttr "HIKEffector2State1.EFFNA" "HIKPinning2State1.InputEffectorStateNoAux"
		;
connectAttr "Character1_Ctrl_HipsEffector.pint" "HIKPinning2State1.HipsEffectorPinT"
		;
connectAttr "Character1_Ctrl_HipsEffector.pinr" "HIKPinning2State1.HipsEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.pint" "HIKPinning2State1.LeftAnkleEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.pinr" "HIKPinning2State1.LeftAnkleEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.pint" "HIKPinning2State1.RightAnkleEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.pinr" "HIKPinning2State1.RightAnkleEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.pint" "HIKPinning2State1.LeftWristEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.pinr" "HIKPinning2State1.LeftWristEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightWristEffector.pint" "HIKPinning2State1.RightWristEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightWristEffector.pinr" "HIKPinning2State1.RightWristEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.pint" "HIKPinning2State1.LeftKneeEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.pinr" "HIKPinning2State1.LeftKneeEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.pint" "HIKPinning2State1.RightKneeEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.pinr" "HIKPinning2State1.RightKneeEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.pint" "HIKPinning2State1.LeftElbowEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.pinr" "HIKPinning2State1.LeftElbowEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.pint" "HIKPinning2State1.RightElbowEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.pinr" "HIKPinning2State1.RightElbowEffectorPinR"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.pint" "HIKPinning2State1.ChestOriginEffectorPinT"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.pinr" "HIKPinning2State1.ChestOriginEffectorPinR"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.pint" "HIKPinning2State1.ChestEndEffectorPinT"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.pinr" "HIKPinning2State1.ChestEndEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.pint" "HIKPinning2State1.LeftFootEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.pinr" "HIKPinning2State1.LeftFootEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightFootEffector.pint" "HIKPinning2State1.RightFootEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightFootEffector.pinr" "HIKPinning2State1.RightFootEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.pint" "HIKPinning2State1.LeftShoulderEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.pinr" "HIKPinning2State1.LeftShoulderEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.pint" "HIKPinning2State1.RightShoulderEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.pinr" "HIKPinning2State1.RightShoulderEffectorPinR"
		;
connectAttr "Character1_Ctrl_HeadEffector.pint" "HIKPinning2State1.HeadEffectorPinT"
		;
connectAttr "Character1_Ctrl_HeadEffector.pinr" "HIKPinning2State1.HeadEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.pint" "HIKPinning2State1.LeftHipEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.pinr" "HIKPinning2State1.LeftHipEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightHipEffector.pint" "HIKPinning2State1.RightHipEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightHipEffector.pinr" "HIKPinning2State1.RightHipEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.pint" "HIKPinning2State1.LeftHandThumbEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.pinr" "HIKPinning2State1.LeftHandThumbEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.pint" "HIKPinning2State1.LeftHandIndexEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.pinr" "HIKPinning2State1.LeftHandIndexEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.pint" "HIKPinning2State1.LeftHandMiddleEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.pinr" "HIKPinning2State1.LeftHandMiddleEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.pint" "HIKPinning2State1.LeftHandRingEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.pinr" "HIKPinning2State1.LeftHandRingEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.pint" "HIKPinning2State1.LeftHandPinkyEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.pinr" "HIKPinning2State1.LeftHandPinkyEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.pint" "HIKPinning2State1.RightHandThumbEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.pinr" "HIKPinning2State1.RightHandThumbEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.pint" "HIKPinning2State1.RightHandIndexEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.pinr" "HIKPinning2State1.RightHandIndexEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.pint" "HIKPinning2State1.RightHandMiddleEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.pinr" "HIKPinning2State1.RightHandMiddleEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.pint" "HIKPinning2State1.RightHandRingEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.pinr" "HIKPinning2State1.RightHandRingEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.pint" "HIKPinning2State1.RightHandPinkyEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.pinr" "HIKPinning2State1.RightHandPinkyEffectorPinR"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKState2FK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2FK1.InputCharacterState"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKState2FK2.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.decs" "HIKState2FK2.InputCharacterState";
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKEffectorFromCharacter1.InputCharacterState"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKEffectorFromCharacter1.InputCharacterDefinition"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKEffectorFromCharacter1.InputPropertySetState"
		;
connectAttr "HIKSolverNode1.decs" "HIKEffectorFromCharacter2.InputCharacterState"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKEffectorFromCharacter2.InputCharacterDefinition"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKEffectorFromCharacter2.InputPropertySetState"
		;
connectAttr "Character1_Ctrl_HipsEffector.po" "HIKState2Effector1.HipsEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.po" "HIKState2Effector1.LeftAnkleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.po" "HIKState2Effector1.RightAnkleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.po" "HIKState2Effector1.LeftWristEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.po" "HIKState2Effector1.RightWristEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.po" "HIKState2Effector1.LeftKneeEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.po" "HIKState2Effector1.RightKneeEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.po" "HIKState2Effector1.LeftElbowEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.po" "HIKState2Effector1.RightElbowEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.po" "HIKState2Effector1.ChestOriginEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.po" "HIKState2Effector1.ChestEndEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.po" "HIKState2Effector1.LeftFootEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightFootEffector.po" "HIKState2Effector1.RightFootEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.po" "HIKState2Effector1.LeftShoulderEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.po" "HIKState2Effector1.RightShoulderEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.po" "HIKState2Effector1.HeadEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.po" "HIKState2Effector1.LeftHipEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHipEffector.po" "HIKState2Effector1.RightHipEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.po" "HIKState2Effector1.LeftHandThumbEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.po" "HIKState2Effector1.LeftHandIndexEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.po" "HIKState2Effector1.LeftHandMiddleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.po" "HIKState2Effector1.LeftHandRingEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.po" "HIKState2Effector1.LeftHandPinkyEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.po" "HIKState2Effector1.RightHandThumbEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.po" "HIKState2Effector1.RightHandIndexEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.po" "HIKState2Effector1.RightHandMiddleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.po" "HIKState2Effector1.RightHandRingEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.po" "HIKState2Effector1.RightHandPinkyEffectorpivotOffset[0]"
		;
connectAttr "HIKEffectorFromCharacter1.OutputEffectorState" "HIKState2Effector1.InputEffectorState"
		;
connectAttr "Character1_Ctrl_HipsEffector.po" "HIKState2Effector2.HipsEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector.po" "HIKState2Effector2.LeftAnkleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector.po" "HIKState2Effector2.RightAnkleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.po" "HIKState2Effector2.LeftWristEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.po" "HIKState2Effector2.RightWristEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.po" "HIKState2Effector2.LeftKneeEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.po" "HIKState2Effector2.RightKneeEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.po" "HIKState2Effector2.LeftElbowEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.po" "HIKState2Effector2.RightElbowEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.po" "HIKState2Effector2.ChestOriginEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.po" "HIKState2Effector2.ChestEndEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector.po" "HIKState2Effector2.LeftFootEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightFootEffector.po" "HIKState2Effector2.RightFootEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.po" "HIKState2Effector2.LeftShoulderEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.po" "HIKState2Effector2.RightShoulderEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.po" "HIKState2Effector2.HeadEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector.po" "HIKState2Effector2.LeftHipEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHipEffector.po" "HIKState2Effector2.RightHipEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.po" "HIKState2Effector2.LeftHandThumbEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.po" "HIKState2Effector2.LeftHandIndexEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.po" "HIKState2Effector2.LeftHandMiddleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.po" "HIKState2Effector2.LeftHandRingEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.po" "HIKState2Effector2.LeftHandPinkyEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.po" "HIKState2Effector2.RightHandThumbEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.po" "HIKState2Effector2.RightHandIndexEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.po" "HIKState2Effector2.RightHandMiddleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.po" "HIKState2Effector2.RightHandRingEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.po" "HIKState2Effector2.RightHandPinkyEffectorpivotOffset[0]"
		;
connectAttr "HIKEffectorFromCharacter2.OutputEffectorState" "HIKState2Effector2.InputEffectorState"
		;
connectAttr "groupParts1.og" "polyNormal1.ip";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Character1_Hips.wm" "skinCluster1.ma[0]";
connectAttr "Character1_LeftUpLeg.wm" "skinCluster1.ma[1]";
connectAttr "Character1_LeftLeg.wm" "skinCluster1.ma[2]";
connectAttr "Character1_LeftFoot.wm" "skinCluster1.ma[3]";
connectAttr "Character1_LeftToeBase.wm" "skinCluster1.ma[4]";
connectAttr "Character1_RightUpLeg.wm" "skinCluster1.ma[5]";
connectAttr "Character1_RightLeg.wm" "skinCluster1.ma[6]";
connectAttr "Character1_RightFoot.wm" "skinCluster1.ma[7]";
connectAttr "Character1_RightToeBase.wm" "skinCluster1.ma[8]";
connectAttr "Character1_Spine.wm" "skinCluster1.ma[9]";
connectAttr "Character1_Spine1.wm" "skinCluster1.ma[10]";
connectAttr "Character1_Spine2.wm" "skinCluster1.ma[11]";
connectAttr "Character1_LeftShoulder.wm" "skinCluster1.ma[12]";
connectAttr "Character1_LeftArm.wm" "skinCluster1.ma[13]";
connectAttr "Character1_LeftForeArm.wm" "skinCluster1.ma[14]";
connectAttr "Character1_LeftHand.wm" "skinCluster1.ma[15]";
connectAttr "Character1_LeftHandThumb1.wm" "skinCluster1.ma[16]";
connectAttr "Character1_RightShoulder.wm" "skinCluster1.ma[36]";
connectAttr "Character1_RightArm.wm" "skinCluster1.ma[37]";
connectAttr "Character1_RightForeArm.wm" "skinCluster1.ma[38]";
connectAttr "Character1_RightHand.wm" "skinCluster1.ma[39]";
connectAttr "Character1_RightHandThumb1.wm" "skinCluster1.ma[40]";
connectAttr "Character1_Neck.wm" "skinCluster1.ma[60]";
connectAttr "Character1_Head.wm" "skinCluster1.ma[61]";
connectAttr "Character1_Hips.liw" "skinCluster1.lw[0]";
connectAttr "Character1_LeftUpLeg.liw" "skinCluster1.lw[1]";
connectAttr "Character1_LeftLeg.liw" "skinCluster1.lw[2]";
connectAttr "Character1_LeftFoot.liw" "skinCluster1.lw[3]";
connectAttr "Character1_LeftToeBase.liw" "skinCluster1.lw[4]";
connectAttr "Character1_RightUpLeg.liw" "skinCluster1.lw[5]";
connectAttr "Character1_RightLeg.liw" "skinCluster1.lw[6]";
connectAttr "Character1_RightFoot.liw" "skinCluster1.lw[7]";
connectAttr "Character1_RightToeBase.liw" "skinCluster1.lw[8]";
connectAttr "Character1_Spine.liw" "skinCluster1.lw[9]";
connectAttr "Character1_Spine1.liw" "skinCluster1.lw[10]";
connectAttr "Character1_Spine2.liw" "skinCluster1.lw[11]";
connectAttr "Character1_LeftShoulder.liw" "skinCluster1.lw[12]";
connectAttr "Character1_LeftArm.liw" "skinCluster1.lw[13]";
connectAttr "Character1_LeftForeArm.liw" "skinCluster1.lw[14]";
connectAttr "Character1_LeftHand.liw" "skinCluster1.lw[15]";
connectAttr "Character1_LeftHandThumb1.liw" "skinCluster1.lw[16]";
connectAttr "Character1_RightShoulder.liw" "skinCluster1.lw[36]";
connectAttr "Character1_RightArm.liw" "skinCluster1.lw[37]";
connectAttr "Character1_RightForeArm.liw" "skinCluster1.lw[38]";
connectAttr "Character1_RightHand.liw" "skinCluster1.lw[39]";
connectAttr "Character1_RightHandThumb1.liw" "skinCluster1.lw[40]";
connectAttr "Character1_Neck.liw" "skinCluster1.lw[60]";
connectAttr "Character1_Head.liw" "skinCluster1.lw[61]";
connectAttr "Character1_Hips.obcc" "skinCluster1.ifcl[0]";
connectAttr "Character1_LeftUpLeg.obcc" "skinCluster1.ifcl[1]";
connectAttr "Character1_LeftLeg.obcc" "skinCluster1.ifcl[2]";
connectAttr "Character1_LeftFoot.obcc" "skinCluster1.ifcl[3]";
connectAttr "Character1_LeftToeBase.obcc" "skinCluster1.ifcl[4]";
connectAttr "Character1_RightUpLeg.obcc" "skinCluster1.ifcl[5]";
connectAttr "Character1_RightLeg.obcc" "skinCluster1.ifcl[6]";
connectAttr "Character1_RightFoot.obcc" "skinCluster1.ifcl[7]";
connectAttr "Character1_RightToeBase.obcc" "skinCluster1.ifcl[8]";
connectAttr "Character1_Spine.obcc" "skinCluster1.ifcl[9]";
connectAttr "Character1_Spine1.obcc" "skinCluster1.ifcl[10]";
connectAttr "Character1_Spine2.obcc" "skinCluster1.ifcl[11]";
connectAttr "Character1_LeftShoulder.obcc" "skinCluster1.ifcl[12]";
connectAttr "Character1_LeftArm.obcc" "skinCluster1.ifcl[13]";
connectAttr "Character1_LeftForeArm.obcc" "skinCluster1.ifcl[14]";
connectAttr "Character1_LeftHand.obcc" "skinCluster1.ifcl[15]";
connectAttr "Character1_LeftHandThumb1.obcc" "skinCluster1.ifcl[16]";
connectAttr "Character1_RightShoulder.obcc" "skinCluster1.ifcl[36]";
connectAttr "Character1_RightArm.obcc" "skinCluster1.ifcl[37]";
connectAttr "Character1_RightForeArm.obcc" "skinCluster1.ifcl[38]";
connectAttr "Character1_RightHand.obcc" "skinCluster1.ifcl[39]";
connectAttr "Character1_RightHandThumb1.obcc" "skinCluster1.ifcl[40]";
connectAttr "Character1_Neck.obcc" "skinCluster1.ifcl[60]";
connectAttr "Character1_Head.obcc" "skinCluster1.ifcl[61]";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId3.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCube8Shape.iog.og[1]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId3.msg" "tweakSet1.gn" -na;
connectAttr "pCube8Shape.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCube8ShapeOrig.w" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "Character1_Reference.msg" "bindPose1.m[0]";
connectAttr "Character1_Hips.msg" "bindPose1.m[1]";
connectAttr "Character1_LeftUpLeg.msg" "bindPose1.m[2]";
connectAttr "Character1_LeftLeg.msg" "bindPose1.m[3]";
connectAttr "Character1_LeftFoot.msg" "bindPose1.m[4]";
connectAttr "Character1_LeftToeBase.msg" "bindPose1.m[5]";
connectAttr "Character1_RightUpLeg.msg" "bindPose1.m[6]";
connectAttr "Character1_RightLeg.msg" "bindPose1.m[7]";
connectAttr "Character1_RightFoot.msg" "bindPose1.m[8]";
connectAttr "Character1_RightToeBase.msg" "bindPose1.m[9]";
connectAttr "Character1_Spine.msg" "bindPose1.m[10]";
connectAttr "Character1_Spine1.msg" "bindPose1.m[11]";
connectAttr "Character1_Spine2.msg" "bindPose1.m[12]";
connectAttr "Character1_LeftShoulder.msg" "bindPose1.m[13]";
connectAttr "Character1_LeftArm.msg" "bindPose1.m[14]";
connectAttr "Character1_LeftForeArm.msg" "bindPose1.m[15]";
connectAttr "Character1_LeftHand.msg" "bindPose1.m[16]";
connectAttr "Character1_LeftHandThumb1.msg" "bindPose1.m[17]";
connectAttr "Character1_LeftHandThumb2.msg" "bindPose1.m[18]";
connectAttr "Character1_LeftHandThumb3.msg" "bindPose1.m[19]";
connectAttr "Character1_LeftHandIndex1.msg" "bindPose1.m[21]";
connectAttr "Character1_LeftHandIndex2.msg" "bindPose1.m[22]";
connectAttr "Character1_LeftHandIndex3.msg" "bindPose1.m[23]";
connectAttr "Character1_LeftHandMiddle1.msg" "bindPose1.m[25]";
connectAttr "Character1_LeftHandMiddle2.msg" "bindPose1.m[26]";
connectAttr "Character1_LeftHandMiddle3.msg" "bindPose1.m[27]";
connectAttr "Character1_LeftHandRing1.msg" "bindPose1.m[29]";
connectAttr "Character1_LeftHandRing2.msg" "bindPose1.m[30]";
connectAttr "Character1_LeftHandRing3.msg" "bindPose1.m[31]";
connectAttr "Character1_LeftHandPinky1.msg" "bindPose1.m[33]";
connectAttr "Character1_LeftHandPinky2.msg" "bindPose1.m[34]";
connectAttr "Character1_LeftHandPinky3.msg" "bindPose1.m[35]";
connectAttr "Character1_RightShoulder.msg" "bindPose1.m[37]";
connectAttr "Character1_RightArm.msg" "bindPose1.m[38]";
connectAttr "Character1_RightForeArm.msg" "bindPose1.m[39]";
connectAttr "Character1_RightHand.msg" "bindPose1.m[40]";
connectAttr "Character1_RightHandThumb1.msg" "bindPose1.m[41]";
connectAttr "Character1_RightHandThumb2.msg" "bindPose1.m[42]";
connectAttr "Character1_RightHandThumb3.msg" "bindPose1.m[43]";
connectAttr "Character1_RightHandIndex1.msg" "bindPose1.m[45]";
connectAttr "Character1_RightHandIndex2.msg" "bindPose1.m[46]";
connectAttr "Character1_RightHandIndex3.msg" "bindPose1.m[47]";
connectAttr "Character1_RightHandMiddle1.msg" "bindPose1.m[49]";
connectAttr "Character1_RightHandMiddle2.msg" "bindPose1.m[50]";
connectAttr "Character1_RightHandMiddle3.msg" "bindPose1.m[51]";
connectAttr "Character1_RightHandRing1.msg" "bindPose1.m[53]";
connectAttr "Character1_RightHandRing2.msg" "bindPose1.m[54]";
connectAttr "Character1_RightHandRing3.msg" "bindPose1.m[55]";
connectAttr "Character1_RightHandPinky1.msg" "bindPose1.m[57]";
connectAttr "Character1_RightHandPinky2.msg" "bindPose1.m[58]";
connectAttr "Character1_RightHandPinky3.msg" "bindPose1.m[59]";
connectAttr "Character1_Neck.msg" "bindPose1.m[61]";
connectAttr "Character1_Head.msg" "bindPose1.m[62]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[1]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[1]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[16]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[16]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[16]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[16]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[12]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[40]" "bindPose1.p[45]";
connectAttr "bindPose1.m[45]" "bindPose1.p[46]";
connectAttr "bindPose1.m[46]" "bindPose1.p[47]";
connectAttr "bindPose1.m[40]" "bindPose1.p[49]";
connectAttr "bindPose1.m[49]" "bindPose1.p[50]";
connectAttr "bindPose1.m[50]" "bindPose1.p[51]";
connectAttr "bindPose1.m[40]" "bindPose1.p[53]";
connectAttr "bindPose1.m[53]" "bindPose1.p[54]";
connectAttr "bindPose1.m[54]" "bindPose1.p[55]";
connectAttr "bindPose1.m[40]" "bindPose1.p[57]";
connectAttr "bindPose1.m[57]" "bindPose1.p[58]";
connectAttr "bindPose1.m[58]" "bindPose1.p[59]";
connectAttr "bindPose1.m[12]" "bindPose1.p[61]";
connectAttr "bindPose1.m[61]" "bindPose1.p[62]";
connectAttr "Character1_Hips.bps" "bindPose1.wm[1]";
connectAttr "Character1_LeftUpLeg.bps" "bindPose1.wm[2]";
connectAttr "Character1_LeftLeg.bps" "bindPose1.wm[3]";
connectAttr "Character1_LeftFoot.bps" "bindPose1.wm[4]";
connectAttr "Character1_LeftToeBase.bps" "bindPose1.wm[5]";
connectAttr "Character1_RightUpLeg.bps" "bindPose1.wm[6]";
connectAttr "Character1_RightLeg.bps" "bindPose1.wm[7]";
connectAttr "Character1_RightFoot.bps" "bindPose1.wm[8]";
connectAttr "Character1_RightToeBase.bps" "bindPose1.wm[9]";
connectAttr "Character1_Spine.bps" "bindPose1.wm[10]";
connectAttr "Character1_Spine1.bps" "bindPose1.wm[11]";
connectAttr "Character1_Spine2.bps" "bindPose1.wm[12]";
connectAttr "Character1_LeftShoulder.bps" "bindPose1.wm[13]";
connectAttr "Character1_LeftArm.bps" "bindPose1.wm[14]";
connectAttr "Character1_LeftForeArm.bps" "bindPose1.wm[15]";
connectAttr "Character1_LeftHand.bps" "bindPose1.wm[16]";
connectAttr "Character1_LeftHandThumb1.bps" "bindPose1.wm[17]";
connectAttr "Character1_LeftHandThumb2.bps" "bindPose1.wm[18]";
connectAttr "Character1_LeftHandThumb3.bps" "bindPose1.wm[19]";
connectAttr "Character1_LeftHandIndex1.bps" "bindPose1.wm[21]";
connectAttr "Character1_LeftHandIndex2.bps" "bindPose1.wm[22]";
connectAttr "Character1_LeftHandIndex3.bps" "bindPose1.wm[23]";
connectAttr "Character1_LeftHandMiddle1.bps" "bindPose1.wm[25]";
connectAttr "Character1_LeftHandMiddle2.bps" "bindPose1.wm[26]";
connectAttr "Character1_LeftHandMiddle3.bps" "bindPose1.wm[27]";
connectAttr "Character1_LeftHandRing1.bps" "bindPose1.wm[29]";
connectAttr "Character1_LeftHandRing2.bps" "bindPose1.wm[30]";
connectAttr "Character1_LeftHandRing3.bps" "bindPose1.wm[31]";
connectAttr "Character1_LeftHandPinky1.bps" "bindPose1.wm[33]";
connectAttr "Character1_LeftHandPinky2.bps" "bindPose1.wm[34]";
connectAttr "Character1_LeftHandPinky3.bps" "bindPose1.wm[35]";
connectAttr "Character1_RightShoulder.bps" "bindPose1.wm[37]";
connectAttr "Character1_RightArm.bps" "bindPose1.wm[38]";
connectAttr "Character1_RightForeArm.bps" "bindPose1.wm[39]";
connectAttr "Character1_RightHand.bps" "bindPose1.wm[40]";
connectAttr "Character1_RightHandThumb1.bps" "bindPose1.wm[41]";
connectAttr "Character1_RightHandThumb2.bps" "bindPose1.wm[42]";
connectAttr "Character1_RightHandThumb3.bps" "bindPose1.wm[43]";
connectAttr "Character1_RightHandIndex1.bps" "bindPose1.wm[45]";
connectAttr "Character1_RightHandIndex2.bps" "bindPose1.wm[46]";
connectAttr "Character1_RightHandIndex3.bps" "bindPose1.wm[47]";
connectAttr "Character1_RightHandMiddle1.bps" "bindPose1.wm[49]";
connectAttr "Character1_RightHandMiddle2.bps" "bindPose1.wm[50]";
connectAttr "Character1_RightHandMiddle3.bps" "bindPose1.wm[51]";
connectAttr "Character1_RightHandRing1.bps" "bindPose1.wm[53]";
connectAttr "Character1_RightHandRing2.bps" "bindPose1.wm[54]";
connectAttr "Character1_RightHandRing3.bps" "bindPose1.wm[55]";
connectAttr "Character1_RightHandPinky1.bps" "bindPose1.wm[57]";
connectAttr "Character1_RightHandPinky2.bps" "bindPose1.wm[58]";
connectAttr "Character1_RightHandPinky3.bps" "bindPose1.wm[59]";
connectAttr "Character1_Neck.bps" "bindPose1.wm[61]";
connectAttr "Character1_Head.bps" "bindPose1.wm[62]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCube8Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of testUnrealRig_01.ma
