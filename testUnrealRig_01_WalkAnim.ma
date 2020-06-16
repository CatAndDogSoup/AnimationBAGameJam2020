//Maya ASCII 2019 scene
//Name: testUnrealRig_01_WalkAnim.ma
//Last modified: Thu, Jun 11, 2020 04:48:13 PM
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
	rename -uid "C812DC00-0017-6481-5EE2-5074000017F9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 368.47338275455326 137.2668143076954 102.54501562676219 ;
	setAttr ".r" -type "double3" -7.5383527295948625 75.400000000000304 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C812DC00-0017-6481-5EE2-5074000017FA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 394.30353595415653;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "C812DC00-0017-6481-5EE2-5074000017FB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C812DC00-0017-6481-5EE2-5074000017FC";
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
	rename -uid "C812DC00-0017-6481-5EE2-5074000017FD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C812DC00-0017-6481-5EE2-5074000017FE";
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
	rename -uid "C812DC00-0017-6481-5EE2-5074000017FF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C812DC00-0017-6481-5EE2-507400001800";
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
	rename -uid "C812DC00-0017-6481-5EE2-507400001801";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C812DC00-0017-6481-5EE2-507400001802";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C812DC00-0017-6481-5EE2-507400001803";
createNode displayLayerManager -n "layerManager";
	rename -uid "C812DC00-0017-6481-5EE2-507400001804";
createNode displayLayer -n "defaultLayer";
	rename -uid "C812DC00-0017-6481-5EE2-507400001805";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C812DC00-0017-6481-5EE2-507400001806";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C812DC00-0017-6481-5EE2-507400001807";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C812DC00-0017-6481-5EE2-507A00001808";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1869\n            -height 1186\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1869\\n    -height 1186\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1869\\n    -height 1186\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C812DC00-0017-6481-5EE2-507A00001809";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 48 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode reference -n "testUnrealRig_01RN";
	rename -uid "C812DC00-0017-6481-5EE2-507E0000180A";
	setAttr ".fn[0]" -type "string" "/media/aurora/gDrive/gDrive/PERSONAL/TESTING_GROUNDS//scenes/testUnrealRig_01.ma";
	setAttr -s 357 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"testUnrealRig_01RN"
		"testUnrealRig_01RN" 0
		"testUnrealRig_01RN" 838
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translate" " -type \"double3\" -0.00067948881122801034 92.215362548828125 -1.24418115615844727"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotate" " -type \"double3\" -0.53855046560167907 1.66763623092971036 -0.0078379844013473192"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HipsEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translate" " -type \"double3\" 8.91000171723189105 11.40016469249018982 23.49686751983784205"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotate" " -type \"double3\" 0 0 -31.61683324327986"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translate" " -type \"double3\" -8.91000171723189105 17.88272402463135791 -30.72163296628881568"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotate" " -type \"double3\" 0 0 22.89436762748362852"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translate" " -type \"double3\" 21.37446541697890723 91.2182159423828125 -1.24598140062557317"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotate" " -type \"double3\" -0.00056007931939091172 -85.69452072588097735 0.0005577750747232952"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translate" " -type \"double3\" -22.85058406768021655 91.2759857177734375 -1.24603152288882812"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotate" " -type \"double3\" 0.00045139129286262363 84.94695944855629932 0.00042909397000442424"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translate" " -type \"double3\" 8.84737782235498749 50.94952115306147533 15.78329429030418574"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotate" " -type \"double3\" 0.31804400992596782 -0.099561104740982925 -8.75460454733484639"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translate" " -type \"double3\" -8.98091052527780853 47.23121991863957447 -3.07251054821191261"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotate" " -type \"double3\" 0.095600572645911042 -0.098105718761103453 41.09111363494689328"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translate" " -type \"double3\" 19.37018204728762427 117.84002685546875 -1.246000615534959"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotate" " -type \"double3\" -0.00037914245431922922 -85.6944826491801166 0.00042674938737964537"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translate" " -type \"double3\" -20.49916457026093042 117.8692172191761216 -1.24602548019201675"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotate" " -type \"double3\" 0.00011010831446129589 -84.94693097613551913 -0.00017233743858256119"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translate" " -type \"double3\" -0.38685500161308384 105.4797515869140625 -1.24599564075469971"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotate" " -type \"double3\" 0 5.730863615047659e-05 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translate" " -type \"double3\" -0.38689421586416384 145.06829833984375 -1.24599575996398926"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotate" " -type \"double3\" 0 5.730863615047659e-05 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translate" " -type \"double3\" 8.91000841791654175 13.46088230278756903 37.57578480022925049"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotate" " -type \"double3\" 1.3591137259611562e-05 1.0972096913606708e-06 -31.6168241593953212"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translate" " -type \"double3\" -8.91097416149245447 6.81382008062468714 -21.74187631077236915"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotate" " -type \"double3\" 0.0016635847489057814 0.00042162289329391027 22.91819414365547303"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translate" " -type \"double3\" 17.32035447270781958 145.06845062750358011 -1.2459958779902276"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotate" " -type \"double3\" 0.00033049688814111783 85.69475946146295087 0.00030162221519512239"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translate" " -type \"double3\" -18.09417151300995386 145.0687103271484375 -1.24599552389096324"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotate" " -type \"double3\" 0.00061232047024020449 84.94701243723234541 0.00062945983032222674"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translate" " -type \"double3\" -0.38691364439135351 163.4797515869140625 -1.24599575996398926"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotate" " -type \"double3\" 0 5.730863615047659e-05 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translate" " -type \"double3\" 8.90515613942234552 92.4746551513671875 -1.1604684591293335"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotate" " -type \"double3\" 0.80241700891054135 0.082970351243077167 -21.65878437506946241"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translate" " -type \"double3\" -8.90651511704480292 91.9560699462890625 -1.32789385318756104"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotate" " -type \"double3\" 0.25986850173536036 0.092778738521152718 1.1348078159659849"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translate" " -type \"double3\" 20.94985314651771802 79.08085617312679005 3.74391714538689024"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotate" " -type \"double3\" -0.0017674162654130001 -85.69455030828099495 0.0016019350731161209"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translate" " -type \"double3\" 22.89893823199802014 73.6289442468572588 2.53357499534333197"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotate" " -type \"double3\" 1.99183038592608974 -1.84541739913766922 85.62777656937844029"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translate" " -type \"double3\" 23.25859738941545984 72.8638760425426284 0.059314194570847405"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotate" " -type \"double3\" 0.0035254206762671378 -0.0033082629555963288 85.69456031108551031"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translate" " -type \"double3\" 23.07906625447449755 73.6371839929510088 -2.0391283661678985"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotate" " -type \"double3\" -2.0910146464627534e-05 -1.8882280455037072e-05 85.69456052281566372"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translate" " -type \"double3\" 22.23110871844821546 75.6711653161931963 -3.73632650932779997"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotate" " -type \"double3\" 3.6571901068203273e-05 -7.2199164842473172e-05 85.69468983348281199"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translate" " -type \"double3\" -22.58411979675292969 79.137725830078125 3.92642785995094856"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotate" " -type \"double3\" -21.55348847545825208 84.56590762973934261 -19.64030052961999218"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translate" " -type \"double3\" -24.60445228329411194 73.70841217041015625 1.91823161117456586"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotate" " -type \"double3\" 1.99172319083051441 -1.82128031153595615 84.8805667667720769"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translate" " -type \"double3\" -24.9735203915172157 72.9537353515625 -0.27653658096851025"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotate" " -type \"double3\" 1.99172128277037186 -1.82128088213180006 84.88063588168436979"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translate" " -type \"double3\" -24.783966214568526 73.7239227294921875 -2.34408545521674316"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotate" " -type \"double3\" 1.99171065976213968 -1.82127725961510745 84.88070498955407572"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translate" " -type \"double3\" -23.91011821561389539 75.73715194949397755 -3.96901655252333052"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotate" " -type \"double3\" 1.99169844934070861 -1.82129802809829289 84.88123199009663722"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translate" " -type \"double3\" -0.18314644240739722 98.4827117919921875 -1.24503850936889648"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"translateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotate" " -type \"double3\" -0.53855044490894444 1.66763624891031781 -0.0078379835214278312"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotate" " -type \"double3\" -0.32071846350875383 1.41350070437634923 -22.2070672677172638"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotate" " -type \"double3\" -0.49453358357447841 -0.0018713757859334268 11.36154625814732277"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotate" " -type \"double3\" -0.10284371992040975 -0.30622028245979227 -23.05146605011801952"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotate" " -type \"double3\" 0 -1.5174024963480446e-05 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotate" " -type \"double3\" -0.21147599263581152 1.77787495368823834 2.20348488828217537"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotate" " -type \"double3\" -0.16549756616306596 -0.0011594083395123384 40.89844471737219322"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotate" " -type \"double3\" -0.10820806890376762 -0.079514760497637463 -18.14553453490676915"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotate" " -type \"double3\" 0 -3.695586325118204e-06 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine" 
		"rotate" " -type \"double3\" 0.53855099699892151 -1.66757842696273384 -0.0078376294693999673"
		
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
		"rotate" " -type \"double3\" 0.00032335729115934346 85.69481901735109375 0.00029342417645450381"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotate" " -type \"double3\" 1.6694700728952148e-05 0.00027969606352121489 5.5432459548126305e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotate" " -type \"double3\" -5.087895475611756e-05 -3.443345208479183e-05 8.6509589153671634e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1" 
		"rotate" " -type \"double3\" -8.7963442817094917e-06 3.1893071645109409e-05 -1.8065501564217915e-06"
		
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
		"rotate" " -type \"double3\" 0 0 0"
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
		"rotate" " -type \"double3\" -1.1542716998249926e-06 0 3.3113063401144699e-05"
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
		"rotate" " -type \"double3\" 0 0 0"
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
		"rotate" " -type \"double3\" -2.0604572079143298e-09 0 3.3133175317795047e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotate" " -type \"double3\" -5.0323431180212815e-10 0 8.1009742060061917e-06"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotate" " -type \"double3\" 0 0 3.3133175381862783e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2" 
		"rotate" " -type \"double3\" 0 0 8.1009742156081436e-06"
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
		"rotate" " -type \"double3\" 0 0 3.3133175381862857e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2" 
		"rotate" " -type \"double3\" 0 0 0.00013725035540319277"
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
		"rotate" " -type \"double3\" 0.00061383617895554904 84.94695769710178013 0.00063139076609294387"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotate" " -type \"double3\" -4.6585494813781354e-05 8.1953898426501048e-05 3.9689602593224477e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotate" " -type \"double3\" -3.7232546280317672e-05 2.6673757410282886e-05 5.3572970619295876e-05"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotate" " -type \"double3\" -1.2477241822034744e-05 -4.522369547584633e-05 -2.5625780269230893e-06"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotate" " -type \"double3\" 1.6384706632165165e-06 0 -4.6954727574964637e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotate" " -type \"double3\" -1.0475592012037079e-08 0 0.00010887337146466006"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotate" " -type \"double3\" 2.3638057330529019e-06 0 -6.7740897106812405e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotate" " -type \"double3\" 1.6384742074174833e-06 0 -4.6954727451290684e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotate" " -type \"double3\" -1.0064374219402127e-08 0 0.00010940747793464"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotate" " -type \"double3\" 1.6384717251354519e-06 0 -4.6954727537909276e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotate" " -type \"double3\" -1.0266008769721377e-08 0 0.00023206226557463534"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotate" " -type \"double3\" 1.8952364105968622e-06 0 -5.4313079933058944e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotate" " -type \"double3\" -1.4485417341671384e-06 0 -4.1511846519142052e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotate" " -type \"double3\" 1.6384737462245096e-06 0 -4.6954727467383856e-05"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotate" " -type \"double3\" -1.0273405316476011e-08 -2.2849802241760696e-10 0.00070567549179704028"
		
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotateZ" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotateY" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3" 
		"rotateX" " -av"
		2 "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4" 
		"rotate" " -type \"double3\" 0 0 0"
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
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[7]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[8]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[9]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[10]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[11]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftAnkleEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[12]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[13]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[14]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[15]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[16]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[17]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightAnkleEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[18]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[19]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[20]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[21]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[22]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[23]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftWristEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[24]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[25]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[26]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[27]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[28]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[29]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightWristEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[30]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[31]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[32]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[33]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[34]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[35]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftKneeEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[36]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[37]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[38]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[39]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[40]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[41]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightKneeEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[42]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[43]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[44]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[45]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[46]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[47]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftElbowEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[48]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[49]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[50]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[51]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[52]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[53]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightElbowEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[54]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[55]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[56]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[57]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[58]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[59]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestOriginEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[60]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[61]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[62]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[63]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[64]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[65]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_ChestEndEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[66]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[67]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[68]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[69]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[70]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[71]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftFootEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[72]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[73]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[74]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[75]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[76]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[77]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightFootEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[78]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[79]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[80]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[81]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[82]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[83]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftShoulderEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[84]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[85]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[86]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[87]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[88]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[89]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightShoulderEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[90]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[91]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[92]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[93]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[94]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[95]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_HeadEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[96]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[97]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[98]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[99]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[100]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[101]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHipEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[102]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[103]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[104]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[105]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[106]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[107]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHipEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[108]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[109]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[110]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[111]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[112]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[113]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandThumbEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[114]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[115]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[116]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[117]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[118]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[119]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandIndexEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[120]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[121]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[122]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[123]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[124]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[125]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandMiddleEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[126]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[127]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[128]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[129]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[130]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[131]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandRingEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[132]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[133]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[134]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[135]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[136]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[137]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_LeftHandPinkyEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[138]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[139]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[140]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[141]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[142]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[143]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandThumbEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[144]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[145]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[146]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[147]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[148]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[149]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandIndexEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[150]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[151]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[152]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[153]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[154]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[155]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandMiddleEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[156]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[157]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[158]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[159]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[160]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[161]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandRingEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[162]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[163]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.rotateY" 
		"testUnrealRig_01RN.placeHolderList[164]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.rotateX" 
		"testUnrealRig_01RN.placeHolderList[165]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.translateZ" 
		"testUnrealRig_01RN.placeHolderList[166]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.translateY" 
		"testUnrealRig_01RN.placeHolderList[167]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_RightHandPinkyEffector.translateX" 
		"testUnrealRig_01RN.placeHolderList[168]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[169]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.rotateY" 
		"testUnrealRig_01RN.placeHolderList[170]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.rotateX" 
		"testUnrealRig_01RN.placeHolderList[171]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.translateZ" 
		"testUnrealRig_01RN.placeHolderList[172]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.translateY" 
		"testUnrealRig_01RN.placeHolderList[173]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips.translateX" 
		"testUnrealRig_01RN.placeHolderList[174]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[175]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[176]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[177]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[178]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[179]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[180]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[181]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot.rotateY" 
		"testUnrealRig_01RN.placeHolderList[182]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot.rotateX" 
		"testUnrealRig_01RN.placeHolderList[183]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[184]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase.rotateY" 
		"testUnrealRig_01RN.placeHolderList[185]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_LeftUpLeg|testUnrealRig_01:Character1_Ctrl_LeftLeg|testUnrealRig_01:Character1_Ctrl_LeftFoot|testUnrealRig_01:Character1_Ctrl_LeftToeBase.rotateX" 
		"testUnrealRig_01RN.placeHolderList[186]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[187]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[188]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[189]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[190]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg.rotateY" 
		"testUnrealRig_01RN.placeHolderList[191]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg.rotateX" 
		"testUnrealRig_01RN.placeHolderList[192]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[193]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot.rotateY" 
		"testUnrealRig_01RN.placeHolderList[194]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot.rotateX" 
		"testUnrealRig_01RN.placeHolderList[195]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[196]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase.rotateY" 
		"testUnrealRig_01RN.placeHolderList[197]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_RightUpLeg|testUnrealRig_01:Character1_Ctrl_RightLeg|testUnrealRig_01:Character1_Ctrl_RightFoot|testUnrealRig_01:Character1_Ctrl_RightToeBase.rotateX" 
		"testUnrealRig_01RN.placeHolderList[198]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[199]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine.rotateY" 
		"testUnrealRig_01RN.placeHolderList[200]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine.rotateX" 
		"testUnrealRig_01RN.placeHolderList[201]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[202]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[203]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[204]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[205]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[206]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[207]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[208]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder.rotateY" 
		"testUnrealRig_01RN.placeHolderList[209]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder.rotateX" 
		"testUnrealRig_01RN.placeHolderList[210]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[211]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[212]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[213]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[214]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[215]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[216]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[217]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand.rotateY" 
		"testUnrealRig_01RN.placeHolderList[218]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand.rotateX" 
		"testUnrealRig_01RN.placeHolderList[219]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[220]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[221]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[222]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[223]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[224]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[225]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[226]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[227]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[228]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[229]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[230]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandThumb1|testUnrealRig_01:Character1_Ctrl_LeftHandThumb2|testUnrealRig_01:Character1_Ctrl_LeftHandThumb3|testUnrealRig_01:Character1_Ctrl_LeftHandThumb4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[231]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[232]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[233]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[234]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[235]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[236]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[237]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[238]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[239]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[240]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[241]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[242]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandIndex1|testUnrealRig_01:Character1_Ctrl_LeftHandIndex2|testUnrealRig_01:Character1_Ctrl_LeftHandIndex3|testUnrealRig_01:Character1_Ctrl_LeftHandIndex4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[243]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[244]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[245]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[246]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[247]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[248]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[249]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[250]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[251]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[252]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[253]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[254]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle1|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle2|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle3|testUnrealRig_01:Character1_Ctrl_LeftHandMiddle4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[255]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[256]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[257]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[258]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[259]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[260]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[261]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[262]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[263]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[264]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[265]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[266]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandRing1|testUnrealRig_01:Character1_Ctrl_LeftHandRing2|testUnrealRig_01:Character1_Ctrl_LeftHandRing3|testUnrealRig_01:Character1_Ctrl_LeftHandRing4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[267]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[268]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[269]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[270]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[271]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[272]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[273]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[274]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[275]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[276]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[277]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[278]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_LeftShoulder|testUnrealRig_01:Character1_Ctrl_LeftArm|testUnrealRig_01:Character1_Ctrl_LeftForeArm|testUnrealRig_01:Character1_Ctrl_LeftHand|testUnrealRig_01:Character1_Ctrl_LeftHandPinky1|testUnrealRig_01:Character1_Ctrl_LeftHandPinky2|testUnrealRig_01:Character1_Ctrl_LeftHandPinky3|testUnrealRig_01:Character1_Ctrl_LeftHandPinky4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[279]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[280]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder.rotateY" 
		"testUnrealRig_01RN.placeHolderList[281]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder.rotateX" 
		"testUnrealRig_01RN.placeHolderList[282]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[283]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[284]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[285]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[286]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm.rotateY" 
		"testUnrealRig_01RN.placeHolderList[287]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm.rotateX" 
		"testUnrealRig_01RN.placeHolderList[288]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[289]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand.rotateY" 
		"testUnrealRig_01RN.placeHolderList[290]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand.rotateX" 
		"testUnrealRig_01RN.placeHolderList[291]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[292]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[293]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[294]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[295]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[296]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[297]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[298]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[299]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[300]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[301]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[302]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandThumb1|testUnrealRig_01:Character1_Ctrl_RightHandThumb2|testUnrealRig_01:Character1_Ctrl_RightHandThumb3|testUnrealRig_01:Character1_Ctrl_RightHandThumb4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[303]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[304]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[305]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[306]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[307]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[308]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[309]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[310]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[311]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[312]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[313]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[314]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandIndex1|testUnrealRig_01:Character1_Ctrl_RightHandIndex2|testUnrealRig_01:Character1_Ctrl_RightHandIndex3|testUnrealRig_01:Character1_Ctrl_RightHandIndex4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[315]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[316]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[317]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[318]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[319]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[320]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[321]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[322]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[323]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[324]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[325]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[326]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandMiddle1|testUnrealRig_01:Character1_Ctrl_RightHandMiddle2|testUnrealRig_01:Character1_Ctrl_RightHandMiddle3|testUnrealRig_01:Character1_Ctrl_RightHandMiddle4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[327]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[328]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[329]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[330]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[331]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[332]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[333]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[334]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[335]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[336]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[337]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[338]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandRing1|testUnrealRig_01:Character1_Ctrl_RightHandRing2|testUnrealRig_01:Character1_Ctrl_RightHandRing3|testUnrealRig_01:Character1_Ctrl_RightHandRing4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[339]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[340]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1.rotateY" 
		"testUnrealRig_01RN.placeHolderList[341]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1.rotateX" 
		"testUnrealRig_01RN.placeHolderList[342]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[343]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2.rotateY" 
		"testUnrealRig_01RN.placeHolderList[344]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2.rotateX" 
		"testUnrealRig_01RN.placeHolderList[345]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[346]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3.rotateY" 
		"testUnrealRig_01RN.placeHolderList[347]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3.rotateX" 
		"testUnrealRig_01RN.placeHolderList[348]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[349]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4.rotateY" 
		"testUnrealRig_01RN.placeHolderList[350]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_RightShoulder|testUnrealRig_01:Character1_Ctrl_RightArm|testUnrealRig_01:Character1_Ctrl_RightForeArm|testUnrealRig_01:Character1_Ctrl_RightHand|testUnrealRig_01:Character1_Ctrl_RightHandPinky1|testUnrealRig_01:Character1_Ctrl_RightHandPinky2|testUnrealRig_01:Character1_Ctrl_RightHandPinky3|testUnrealRig_01:Character1_Ctrl_RightHandPinky4.rotateX" 
		"testUnrealRig_01RN.placeHolderList[351]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[352]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck.rotateY" 
		"testUnrealRig_01RN.placeHolderList[353]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck.rotateX" 
		"testUnrealRig_01RN.placeHolderList[354]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head.rotateZ" 
		"testUnrealRig_01RN.placeHolderList[355]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head.rotateY" 
		"testUnrealRig_01RN.placeHolderList[356]" ""
		5 4 "testUnrealRig_01RN" "|testUnrealRig_01:Character1_Ctrl_Reference|testUnrealRig_01:Character1_Ctrl_Hips|testUnrealRig_01:Character1_Ctrl_Spine|testUnrealRig_01:Character1_Ctrl_Spine1|testUnrealRig_01:Character1_Ctrl_Spine2|testUnrealRig_01:Character1_Ctrl_Neck|testUnrealRig_01:Character1_Ctrl_Head.rotateX" 
		"testUnrealRig_01RN.placeHolderList[357]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	rename -uid "C812DC00-0017-6481-5EE2-508D000018DB";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode animCurveTA -n "Character1_Ctrl_Hips_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.0078379715135323737 24 -0.0078380015085036722 48 -0.0078379831604121417;
createNode animCurveTA -n "Character1_Ctrl_Hips_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.6676209291779303 24 1.6676342229687153 48 1.6676362500834165;
createNode animCurveTA -n "Character1_Ctrl_Hips_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.53855052211261401 24 -0.53855044570422261 48 -0.53855044489298243;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2450382709503174 24 -1.2450385093688965 48 -1.2450385093688965;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 98.482711791992188 24 98.482711791992188 48 98.482711791992188;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.18301117420196533 24 -0.18313860893249512 48 -0.18314644694328308;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.53855058335335615 24 -0.53855046713558585 48 -0.53855046590837818;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.6676210106792417 24 1.6676342668421653 48 1.6676362930986535;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.0078379723454684736 24 -0.0078380017147787629 48 -0.0078379833626489818;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2441809177398682 24 -1.2441811561584473 48 -1.2441811561584473;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 92.215362548828125 24 92.215362548828125 48 92.215362548828125;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.00054597854614257812 24 -0.00067234039306640625 48 -0.00067949295043945312;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.0078378349088495218 24 -0.0078377368085761033 48 -0.0078376280010843419;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.6676016860294054 24 -1.6675902208413556 48 -1.6675782679003113;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.53855062151733213 24 0.53855073701903644 48 0.53855100095877118;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9209902152147581e-05 24 4.3969349286186005e-05 48 5.7949892753090533e-05;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2459954023361206 24 -1.2459956407546997 48 -1.2459956407546997;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 105.47975158691406 24 105.47975158691406 48 105.47975158691406;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.38672363758087158 24 -0.38684704899787903 48 -0.38685500621795654;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9209902152147581e-05 24 4.3969349286186005e-05 48 5.7949892753090533e-05;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2459955215454102 24 -1.2459957599639893 48 -1.2459957599639893;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 145.06829833984375 24 145.06829833984375 48 145.06829833984375;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.38673639297485352 24 -0.38687658309936523 48 -0.38689422607421875;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00011903238147836135 24 0.00050203233239191241 48 0.00028923723589849916;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 85.694705621799372 24 85.694805044788282 48 85.694819025441745;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00012205305759417852 24 0.00051456814626086851 48 0.00031951952901444866;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.2519821188075073e-05 24 3.4324850359982901e-05 48 5.5712885964034773e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.5432813504485637e-05 24 0.00019147476496892427 48 0.0002807858226294263;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.3964212936396993e-05 24 1.6789300592922747e-05 48 1.6694645951960852e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.7535389786134914e-05 24 4.448159150195848e-05 48 7.9318080842313324e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.6730883197966764e-05 24 -2.7243633940280851e-05 48 -3.4567334821845748e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.067573380386194e-05 24 -3.4096741612629143e-05 48 -5.1147905536917975e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9412565194479472e-19 24 1.9412565194479472e-19 48 1.9412565194479472e-19;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.00054948767063023698 24 -0.00055003407044108333 48 -0.00056062294719465668;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -85.69463792267878 24 -85.694597514621137 48 -85.694516691742081;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00054757071615821014 24 0.00054795474329867372 48 0.00055830703406403877;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2460017204284668 24 -1.2460083961486816 48 -1.2459808588027954;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 91.218231201171875 24 91.218215942382812 48 91.218215942382812;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 21.374565124511719 24 21.374439239501953 48 21.374465942382812;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.0231150036811771e-05 24 7.4903236328899129e-05 48 -0.00040411649447604842;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -85.694608319886356 24 -85.694568217982635 48 -85.694478137236089;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.7579034702276588e-05 24 -4.4557812852293247e-05 48 0.00045265069288435723;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2460070848464966 24 -1.2460108995437622 48 -1.2460004091262817;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 117.84003448486328 24 117.84002685546875 48 117.84002685546875;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-5120000019FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 19.370361328125 24 19.370199203491211 48 19.370182037353516;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00012210592502625531 24 0.00051406457838179282 48 0.00031921359678214529;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 85.694687905813765 24 85.694759234340211 48 85.694759234437171;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00011919283648071775 24 0.0005017987993698312 48 0.0002894684224656989;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2459955215454102 24 -1.2459957599639893 48 -1.2459958791732788;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 145.06843566894531 24 145.06843566894531 48 145.06845092773438;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.320514678955078 24 17.32037353515625 48 17.320354461669922;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00058849085950068416 24 0.00059916643172778876 48 0.00063189361918844923;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.946941401495835 24 84.946957941054777 48 84.94695769220543;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00056190180585655592 24 0.00057862034518286836 48 0.00061436901774114051;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.7098301137412529e-06 24 5.3397102147927016e-05 48 3.941448158681368e-05;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.9280764098571652e-06 24 8.2421658321493756e-05 48 8.1944510093307573e-05;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.1975089063753122e-05 24 -5.1376795224074772e-05 48 -4.648932939822647e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.8691846176736532e-05 24 3.7039671611951019e-05 48 5.3904807789455102e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.3783607022816088e-05 24 1.4208924458491258e-05 48 2.6789403724178695e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.1793322108248052e-05 24 -4.5110553243436171e-05 48 -3.7074428076807621e-05;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.765026077791789e-19 24 -7.765026077791789e-19 48 -7.765026077791789e-19;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00023443635875349545 24 0.0004508590741333072 48 0.00045069393967406935;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.946940776670047 24 84.946931658606317 48 84.946960988187243;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00021087991136529291 24 0.00042830419295890613 48 0.00042840724163345934;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2460455894470215 24 -1.2460317611694336 48 -1.2460315227508545;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 91.2760009765625 24 91.275985717773438 48 91.275985717773438;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -22.850439071655273 24 -22.8505859375 48 -22.850584030151367;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00053063601210819782 24 -6.9330136628413934e-05 48 0.00012186540049709871;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -84.946951502297296 24 -84.946920331882339 48 -84.946931658731074;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.00056901696673239096 24 2.3420780416779182e-12 48 -0.00018360507350409833;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2460253238677979 24 -1.2460213899612427 48 -1.246025562286377;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 117.86923217773438 24 117.86923217773438 48 117.86921691894531;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -20.499021530151367 24 -20.4991455078125 48 -20.499164581298828;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00056194960061833085 24 0.0005782009038475122 48 0.00061411867851869238;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.946961084129384 24 84.947001733406211 48 84.94701288205809;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00058843063108920002 24 0.000598480147285355 48 0.00063110834989854971;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2459954023361206 24 -1.2459956407546997 48 -1.2459955215454102;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 145.06871032714844 24 145.06871032714844 48 145.06871032714844;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -18.094011306762695 24 -18.094152450561523 48 -18.094171524047852;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -24.609240788222031 24 -7.4517443722275543 48 -22.503218966918357;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.493798520525965 24 1.9449328395933154 48 1.4028344159481456;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.39816486705678589 24 -0.025401627626501978 48 -0.32664571995503278;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 30.747152063612692 24 56.400119812559083 48 10.457584333206364;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.00045654372116395099 24 -0.0011274473054954544 48 -0.0018815818654837728;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.51893768760275516 24 -0.46287436186174247 48 -0.49516901069267977;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -41.310139945474013 24 -19.373690804913611 48 -23.12528208219414;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.31114244138284242 24 -0.19207725358565775 48 -0.30851122872999337;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.15116445360568381 24 -0.42909200323194857 48 -0.096295643395857042;
createNode animCurveTA -n "Character1_Ctrl_LeftToeBase_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.8356453527704658e-22 24 4.8356460227201154e-22 48 1.8858738429150134e-21;
createNode animCurveTA -n "Character1_Ctrl_LeftToeBase_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.9486040841630612e-06 24 -3.9486046312184652e-06 48 -1.5399328559287358e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftToeBase_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftAnkleEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftAnkleEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftAnkleEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -35.157545870074216 24 29.585133788497515 48 -35.157442941544872;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftAnkleEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 24.491 24 -26.046636581420898 48 24.491247177124023;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftAnkleEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 11.201606750488281 24 21.251018524169922 48 11.202449798583984;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftAnkleEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.9099998474121094 24 8.9099998474121094 48 8.9100017547607422;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.25938450508519906 24 0.23889078942136849 48 0.31267134613360431;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.22886209337522637 24 -0.40487251285517739 48 -0.081804612675052638;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.1524874955402122 24 48.958699670667173 48 -12.032126681355154;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.517742156982422 24 4.650792121887207 48 16.006732940673828;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 51.667854309082031 24 47.974727630615234 48 51.009227752685547;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.7474193572998047 24 8.6223945617675781 48 8.851893424987793;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_LeftFootEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4910288793964118e-05 24 -1.7618071783844165e-05 48 1.4926767109658073e-05;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftFootEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.050151458400813e-05 24 -7.0262086401683204e-06 48 2.5603859375909514e-06;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftFootEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -35.15754587006731 24 29.585133788493557 48 -35.157433719356135;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftFootEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 27.353071212768555 24 -17.872709274291992 48 38.688682556152344;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftFootEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 13.541387557983398 24 9.4092006683349609 48 13.542202949523926;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftFootEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.9100065231323242 24 8.9100074768066406 48 8.910008430480957;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_LeftHipEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.78569056449941355 24 0.72464953740742744 48 0.80892872661435278;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHipEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.20160397460506566 24 0.3610624726457809 48 0.068028515595672315;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHipEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -24.591723882870994 24 -7.4366494505189795 48 -22.488640646185868;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHipEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.1604682207107544 24 -1.1604684591293335 48 -1.1604684591293335;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftHipEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 92.474655151367188 24 92.474655151367188 48 92.474655151367188;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_LeftHipEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.905299186706543 24 8.9051628112792969 48 8.905156135559082;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.0608821766010683 24 -27.649427314627808 48 2.8026578604775252;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.7765420191341654 24 1.2606432103147001 48 1.7882562283486281;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.089824881769447154 24 -0.97734366635579373 48 -0.19610438643363945;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 25.902148925222729 24 13.144632449478708 48 41.455486994295669;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -6.55055873390542e-05 24 -0.0012623332122337482 48 -0.0011573425510397718;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.16577478138291799 24 -0.16886816317531642 48 -0.16542991545561822;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -13.327467272885251 24 -18.483991752615825 48 -18.138741414834683;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.087564461674947344 24 -0.10052011151423076 48 -0.079093165494943149;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.081055520885922119 24 -0.045291595198497354 48 -0.1094708552709336;
createNode animCurveTA -n "Character1_Ctrl_RightToeBase_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9812000984657869e-22 24 1.1538126333607004e-21 48 4.385044447494305e-22;
createNode animCurveTA -n "Character1_Ctrl_RightToeBase_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.6177726507309495e-06 24 -9.4215951536105695e-06 48 -3.5806605280882522e-06;
createNode animCurveTA -n "Character1_Ctrl_RightToeBase_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A54";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
	setAttr -s 3 ".kit[1:2]"  18 2;
	setAttr -s 3 ".kot[1:2]"  18 2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A55";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
	setAttr -s 3 ".kit[1:2]"  18 2;
	setAttr -s 3 ".kot[1:2]"  18 2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A56";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 26.126469481032697 24 -32.974824217388061 48 26.1264694810327;
	setAttr -s 3 ".kit[1:2]"  18 2;
	setAttr -s 3 ".kot[1:2]"  18 2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A57";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -31.934165954589844 24 29.6910400390625 48 -31.934165954589844;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A58";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 17.984729766845703 24 12.800437927246094 48 17.984729766845703;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A59";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.9100017547607422 24 -8.9099998474121094 48 -8.9100017547607422;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.10340905246085486 24 0.10487396983232708 48 0.093188856830147687;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.06257817405434099 24 -0.031210552174384936 48 -0.10120085815402406;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 31.968504861805268 24 -14.490827297038607 48 44.26519844678468;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -6.0703334808349609 24 19.506635665893555 48 -3.5256929397583008;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 47.328697204589844 24 52.206638336181641 48 47.131359100341797;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.9544515609741211 24 -8.9321708679199219 48 -8.9818887710571289;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_RightFootEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.0013422587893940864 24 -0.0018145335540081515 48 0.0019056411640041673;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightFootEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00039541318000188227 24 -0.0016598757083686377 48 0.00042732814346794102;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightFootEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 18.641036162532668 24 -32.974824102244973 48 26.12647087105794;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightFootEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -17.346086502075195 24 43.967308044433594 48 -23.060714721679688;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightFootEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.7258548736572266 24 14.597805976867676 48 6.6575889587402344;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightFootEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.9110279083251953 24 -8.9109096527099609 48 -8.910975456237793;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.26944875216436259 24 0.27338241059992074 48 0.2600587677603754;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.061351209679328431 24 0.033083823562082421 48 0.096230277308099271;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.0666451224602911 24 -27.635303826521977 48 2.8101600485691849;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.3278936147689819 24 -1.327893853187561 48 -1.327893853187561;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 91.956069946289062 24 91.956069946289062 48 91.956069946289062;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.9063911437988281 24 -8.9065074920654297 48 -8.9065151214599609;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_Head_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_Head_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_Head_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9209902152147581e-05 24 4.3969349286186005e-05 48 5.7949892753090533e-05;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
	setAttr -s 3 ".kit[2]"  2;
	setAttr -s 3 ".kot[2]"  2;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2459954023361206 24 -1.2459957599639893 48 -1.2459957599639893;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 163.47975158691406 24 163.47975158691406 48 163.47975158691406;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.38674312829971313 24 -0.38689154386520386 48 -0.38691365718841553;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.5538173684758519e-15 24 -7.5538173684758519e-15 48 -1.8428091322550334e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -6.3611093629270367e-15 24 -6.3611093629270367e-15 48 3.2533192327606459e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.1010408144269294e-14 24 -3.1010408144269294e-14 48 -8.9728942843799571e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.0625850519134441e-19 24 -2.0625850519134441e-19 48 -2.0625850519134441e-19;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -9.7062825972397362e-20 24 -9.7062825972397362e-20 48 -9.7062825972397362e-20;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.3309691786916385e-25 24 8.3309691786916385e-25 48 8.3309691786916385e-25;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.4265706493099341e-20 24 2.4265706493099341e-20 48 2.4265706493099341e-20;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.4265706493099341e-20 24 -2.4265706493099341e-20 48 -2.4265706493099341e-20;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.3141581051921221e-26 24 -2.3141581051921221e-26 48 -2.3141581051921221e-26;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.0888874903416268e-14 24 -5.0888874903416268e-14 48 -5.0888874903416268e-14;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.4265706493099341e-20 24 2.4265706493099341e-20 48 2.4265706493099341e-20;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.3112676017902079e-16 24 6.3112676017902079e-16 48 3.3777670340706363e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.2117124406465843e-34 24 1.2117124406465843e-34 48 3.4667112223067647e-13;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 -1.1774389004117986e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.6546682903450628e-17 24 2.6546682903450628e-17 48 2.6546682903450628e-17;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.975693351829396e-16 24 -3.975693351829396e-16 48 -3.975693351829396e-16;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.4450125862446896e-16 24 -2.4450125862446896e-16 48 -2.4450125862446896e-16;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.9924593367255408e-32 24 -2.9924593367255408e-32 48 -2.9924593367255408e-32;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4024900429836268e-14 24 -1.4024900429836268e-14 48 -1.4024900429836268e-14;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.9508399496147545e-16 24 7.9508399496147545e-16 48 7.9508399496147545e-16;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 3.3798185920395409e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 6.1914280038512715e-16;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 -2.1018123112608987e-09;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.0689123579820267e-05 24 3.4054574673856871e-05 48 7.5800636889418948e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.3126662538633248e-16 24 6.2869109067079384e-16 48 3.1923919232915704e-17;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2852494245606812e-09 24 -2.1155014186099177e-09 48 -4.7087475948131077e-10;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 3.3798185985749043e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 -4.1390840284432087e-21;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001A9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.068912361894519e-05 24 3.4054574742747233e-05 48 7.5800636973538721e-06;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.9398174203294069e-19 24 -5.2730339533454494e-19 48 -2.6695398042293046e-20;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.0702132912643273e-12 24 1.7615854199192674e-12 48 3.9210384484870135e-13;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.0888874903416268e-14 24 -5.0888874903416268e-14 48 -5.0888874903416268e-14;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9412565194479472e-19 24 1.9412565194479472e-19 48 3.3798185985749117e-05;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.2997397405684581e-35 24 -1.2997397405684581e-35 48 -4.1390840284432192e-21;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00015086564474575418 24 0.00015060926669525031 48 0.00013698744237987802;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.3887838364112377e-17 24 -2.3804877253517057e-17 48 -1.9678305807393488e-17;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.8218217215423023e-11 24 1.8167328340519606e-11 48 1.6538884343610287e-11;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.9412565194479472e-19 24 -1.9412565194479472e-19 48 -1.9412565194479472e-19;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.0664266232748592e-21 24 6.0664266232748592e-21 48 6.0664266232748592e-21;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4033418597142049e-14 24 1.4033418597142049e-14 48 1.4033418597142049e-14;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.1384632221221202e-42 24 -5.1384632221221202e-42 48 -5.1384632221221202e-42;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.0888874903416268e-14 24 -5.0888874903416268e-14 48 -5.0888874903416268e-14;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.3141581051921216e-26 24 2.3141581051921216e-26 48 2.3141581051921216e-26;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.0017639304849194285 24 -0.0017633622541906411 48 -0.0017676383082636288;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -85.69463792083296 24 -85.694597512777051 48 -85.694547880608141;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.0015982295096284771 24 0.0015978235488433212 48 0.0016021596944760859;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.7438967227935791 24 3.743889331817627 48 3.74391770362854;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 79.08087158203125 24 79.080848693847656 48 79.080856323242188;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 20.949932098388672 24 20.94981575012207 48 20.949853897094727;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ABA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9918308860808809 24 1.9918309416033242 48 1.991830355565704;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ABB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.8454196718425779 24 -1.8454182910778283 48 -1.8454173553375193;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ABC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 85.627863861490184 24 85.627823274169288 48 85.627774169441864;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ABD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.5335543155670166 24 2.53354811668396 48 2.5335755348205566;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ABE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 73.628952026367188 24 73.628936767578125 48 73.628944396972656;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ABF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 22.899005889892578 24 22.898893356323242 48 22.89893913269043;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.0035250063748087719 24 0.0035251688637305697 48 0.0035254338048013598;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.0033075017337360624 24 -0.0033075291768631969 48 -0.0033083027087133622;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 85.69465793881443 24 85.694629308924391 48 85.694556660479392;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.059293627738952637 24 0.059287071228027344 48 0.05931473895907402;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 72.863876342773438 24 72.863861083984375 48 72.863876342773438;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 23.258663177490234 24 23.258550643920898 48 23.258598327636719;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.13261462786441e-05 24 -2.1162704191616888e-05 48 -2.0896980663923298e-05;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.8115025013968065e-05 24 -1.8144271735682073e-05 48 -1.8922257213912359e-05;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 85.694658150471568 24 85.694629520593395 48 85.694556872212843;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.0391488075256348 24 -2.0391552448272705 48 -2.0391278266906738;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ACA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 73.637191772460938 24 73.637176513671875 48 73.637184143066406;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ACB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 23.079130172729492 24 23.079017639160156 48 23.079067230224609;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ACC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.6155892793465508e-05 24 3.6319341351373128e-05 48 3.6585066950953532e-05;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ACD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.1432014370976797e-05 24 -7.1461210918577104e-05 48 -7.2239138795822651e-05;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ACE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 85.694788605309796 24 85.694747911060034 48 85.694686816346675;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ACF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.7363462448120117 24 -3.7363529205322266 48 -3.7363259792327881;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 75.671173095703125 24 75.671157836914062 48 75.671165466308594;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 22.231178283691406 24 22.231063842773438 48 22.231109619140625;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.3732626870123352e-15 24 4.3732626870123352e-15 48 -2.6140111160990499e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.5902773407317584e-15 24 1.5902773407317584e-15 48 -4.6131372952961343e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.3611093629270335e-15 24 6.3611093629270335e-15 48 -1.2727670524611756e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9878466759147051e-16 24 1.9878466759147051e-16 48 1.9878466759147051e-16;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.987846675914698e-16 24 -1.987846675914698e-16 48 -1.987846675914698e-16;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ADA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ADB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ADC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ADD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ADE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 -3.4483642953516847e-34 48 -4.7897148317319288e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001ADF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.9513867036587919e-16 24 -7.9513867036587919e-16 48 6.981983285380262e-13;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 -2.2069531490250793e-32 48 1.6713561428796578e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 4.1448665168641257e-05 24 4.8256087738790178e-05 48 0.00010995163328895224;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.2241204128807115e-13 24 7.0811414482105134e-13 48 3.6768331744175691e-12;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.6407876790358141e-11 24 -1.0487477417318998e-08 48 -1.0475353461990098e-08;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.0823485809528578e-05 24 -2.7322380909464097e-05 48 -6.8420024326851879e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.324404749105004e-13 24 2.2732400198933294e-13 48 1.4255244097482457e-12;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.26631580640372e-07 24 9.5340929029361993e-07 48 2.3875037483547963e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 -4.7897148191163109e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 6.9859740717665311e-13;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 1.6713597582157087e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.2596353086032166e-05 24 8.2295749436046123e-05 48 0.00010995163305208522;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.074913830258234e-12 24 2.0598243302651121e-12 48 3.6768347464621458e-12;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 7.3539128936251155e-13 24 1.0493693378337267e-08 48 -1.0476991868943523e-08;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.9513867036587919e-16 24 -7.9513867036587919e-16 48 -7.9513867036587919e-16;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 -4.7897148279520206e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 6.985963500930258e-13;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 1.6713572261121968e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00017127401903137764 24 0.00017157500650556422 48 0.00023327017724530052;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 8.9222769449166561e-12 24 8.9532584814412894e-12 48 1.6550262802726562e-11;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.8334037803756726e-10 24 1.9681686736656051e-12 48 -1.0472095674033911e-08;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -4.1398251149586397e-05 24 -4.1398251073299506e-05 48 -5.4572291374163917e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.2267474013313575e-13 24 5.2267473820974201e-13 48 9.0688185114577493e-13;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.4445778624676796e-06 24 1.4445778598056748e-06 48 1.904281505476969e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001AFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.8976913899749166e-06 24 -4.7171577247738087e-05 48 -4.1398250979134813e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.0591815787668402e-14 24 -6.7838535661102349e-13 48 -5.2187959716523565e-13;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.057979307106516e-07 24 -1.6460361087124224e-06 48 -1.4445778565198305e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 -4.7897148207579285e-05;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.975693351829396e-16 24 -3.975693351829396e-16 48 6.9819964144173139e-13;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 1.6713592877662055e-06;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.00065866400479130602 24 0.00065866403739123333 48 0.00070661905109444141;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.2285427682919449e-10 24 -2.2285434174835439e-10 48 -2.286112958194692e-10;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.820637198524961e-12 24 5.4737215453959445e-12 48 -1.0479711035066763e-08;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.975693351829396e-16 24 3.975693351829396e-16 48 3.975693351829396e-16;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 48 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky4_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.939360761128174e-19 24 1.939360761128174e-19 48 1.939360761128174e-19;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky4_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.9513867055101183e-16 24 -7.9513867055101183e-16 48 -7.9513867055101183e-16;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky4_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.0664266232748336e-21 24 6.0664266232748336e-21 48 6.0664266232748336e-21;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -21.553415395460654 24 -21.553566088588319 48 -21.553483755291726;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.565941147503239 24 84.565925352005479 48 84.565906720400179;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -19.640217515530839 24 -19.640377342646051 48 -19.640295822249232;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.9264090061187744 24 3.9264287948608398 48 3.9264278411865234;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 79.137741088867188 24 79.137725830078125 48 79.137725830078125;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -22.583972930908203 24 -22.58411979675293 48 -22.58411979675293;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9917257654702243 24 1.9917261063408469 48 1.9917230313703613;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.8212998240550711 24 -1.8212803742661403 48 -1.8212803733973639;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.880574366163941 24 84.880566534618808 48 84.88056680565866;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9182115793228149 24 1.9182318449020386 48 1.9182316064834595;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 73.708427429199219 24 73.708412170410156 48 73.708412170410156;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -24.604310989379883 24 -24.604459762573242 48 -24.604452133178711;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9917217758666841 24 1.9917221185412801 48 1.9917212362369214;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.8213001032829093 24 -1.8212806519925855 48 -1.8212809599014628;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.880635561665443 24 84.880627686593499 48 84.880636353115705;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.27655687928199768 24 -0.27653643488883972 48 -0.27653658390045166;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 72.953750610351562 24 72.9537353515625 48 72.9537353515625;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -24.973373413085938 24 -24.973526000976562 48 -24.973520278930664;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9917122469395629 24 1.9917125723869336 48 1.9917105548117962;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.8212958258227161 24 -1.8212763565191161 48 -1.8212773739876948;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.880685686646103 24 84.880677333370215 48 84.880706519354845;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.3441057205200195 24 -2.3440859317779541 48 -2.3440854549407959;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 73.72393798828125 24 73.723922729492188 48 73.723922729492188;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -24.783821105957031 24 -24.783973693847656 48 -24.783966064453125;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.9916995652804041 24 1.9916999073448212 48 1.9916983690211467;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.8213165824190602 24 -1.821297129574402 48 -1.8212981421673808;
	setAttr ".roti" 5;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 84.881212423275599 24 84.881204503584243 48 84.881233509229006;
	setAttr ".roti" 5;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateZ";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.9690356254577637 24 -3.969017505645752 48 -3.9690165519714355;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateY";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 75.737174987792969 24 75.737144470214844 48 75.737152099609375;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateX";
	rename -uid "C812DC00-0017-6481-5EE2-512000001B2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -23.90997314453125 24 -23.910123825073242 48 -23.910118103027344;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 46;
	setAttr ".unw" 46;
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
connectAttr "Character1_Ctrl_LeftAnkleEffector_rotateZ.o" "testUnrealRig_01RN.phl[7]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_rotateY.o" "testUnrealRig_01RN.phl[8]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_rotateX.o" "testUnrealRig_01RN.phl[9]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_translateZ.o" "testUnrealRig_01RN.phl[10]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_translateY.o" "testUnrealRig_01RN.phl[11]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_translateX.o" "testUnrealRig_01RN.phl[12]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotateZ.o" "testUnrealRig_01RN.phl[13]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotateY.o" "testUnrealRig_01RN.phl[14]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotateX.o" "testUnrealRig_01RN.phl[15]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateZ.o" "testUnrealRig_01RN.phl[16]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateY.o" "testUnrealRig_01RN.phl[17]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateX.o" "testUnrealRig_01RN.phl[18]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotateZ.o" "testUnrealRig_01RN.phl[19]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotateY.o" "testUnrealRig_01RN.phl[20]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotateX.o" "testUnrealRig_01RN.phl[21]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateZ.o" "testUnrealRig_01RN.phl[22]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateY.o" "testUnrealRig_01RN.phl[23]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateX.o" "testUnrealRig_01RN.phl[24]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotateZ.o" "testUnrealRig_01RN.phl[25]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotateY.o" "testUnrealRig_01RN.phl[26]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotateX.o" "testUnrealRig_01RN.phl[27]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateZ.o" "testUnrealRig_01RN.phl[28]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateY.o" "testUnrealRig_01RN.phl[29]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateX.o" "testUnrealRig_01RN.phl[30]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotateZ.o" "testUnrealRig_01RN.phl[31]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotateY.o" "testUnrealRig_01RN.phl[32]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotateX.o" "testUnrealRig_01RN.phl[33]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateZ.o" "testUnrealRig_01RN.phl[34]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateY.o" "testUnrealRig_01RN.phl[35]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateX.o" "testUnrealRig_01RN.phl[36]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotateZ.o" "testUnrealRig_01RN.phl[37]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotateY.o" "testUnrealRig_01RN.phl[38]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotateX.o" "testUnrealRig_01RN.phl[39]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateZ.o" "testUnrealRig_01RN.phl[40]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateY.o" "testUnrealRig_01RN.phl[41]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateX.o" "testUnrealRig_01RN.phl[42]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotateZ.o" "testUnrealRig_01RN.phl[43]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotateY.o" "testUnrealRig_01RN.phl[44]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotateX.o" "testUnrealRig_01RN.phl[45]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateZ.o" "testUnrealRig_01RN.phl[46]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateY.o" "testUnrealRig_01RN.phl[47]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateX.o" "testUnrealRig_01RN.phl[48]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotateZ.o" "testUnrealRig_01RN.phl[49]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotateY.o" "testUnrealRig_01RN.phl[50]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotateX.o" "testUnrealRig_01RN.phl[51]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateZ.o" "testUnrealRig_01RN.phl[52]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateY.o" "testUnrealRig_01RN.phl[53]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateX.o" "testUnrealRig_01RN.phl[54]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotateZ.o" "testUnrealRig_01RN.phl[55]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotateY.o" "testUnrealRig_01RN.phl[56]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotateX.o" "testUnrealRig_01RN.phl[57]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateZ.o" "testUnrealRig_01RN.phl[58]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateY.o" "testUnrealRig_01RN.phl[59]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateX.o" "testUnrealRig_01RN.phl[60]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotateZ.o" "testUnrealRig_01RN.phl[61]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotateY.o" "testUnrealRig_01RN.phl[62]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotateX.o" "testUnrealRig_01RN.phl[63]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateZ.o" "testUnrealRig_01RN.phl[64]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateY.o" "testUnrealRig_01RN.phl[65]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateX.o" "testUnrealRig_01RN.phl[66]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_rotateZ.o" "testUnrealRig_01RN.phl[67]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_rotateY.o" "testUnrealRig_01RN.phl[68]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_rotateX.o" "testUnrealRig_01RN.phl[69]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_translateZ.o" "testUnrealRig_01RN.phl[70]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_translateY.o" "testUnrealRig_01RN.phl[71]"
		;
connectAttr "Character1_Ctrl_LeftFootEffector_translateX.o" "testUnrealRig_01RN.phl[72]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_rotateZ.o" "testUnrealRig_01RN.phl[73]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_rotateY.o" "testUnrealRig_01RN.phl[74]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_rotateX.o" "testUnrealRig_01RN.phl[75]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_translateZ.o" "testUnrealRig_01RN.phl[76]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_translateY.o" "testUnrealRig_01RN.phl[77]"
		;
connectAttr "Character1_Ctrl_RightFootEffector_translateX.o" "testUnrealRig_01RN.phl[78]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotateZ.o" "testUnrealRig_01RN.phl[79]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotateY.o" "testUnrealRig_01RN.phl[80]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotateX.o" "testUnrealRig_01RN.phl[81]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateZ.o" "testUnrealRig_01RN.phl[82]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateY.o" "testUnrealRig_01RN.phl[83]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateX.o" "testUnrealRig_01RN.phl[84]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotateZ.o" "testUnrealRig_01RN.phl[85]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotateY.o" "testUnrealRig_01RN.phl[86]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotateX.o" "testUnrealRig_01RN.phl[87]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateZ.o" "testUnrealRig_01RN.phl[88]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateY.o" "testUnrealRig_01RN.phl[89]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateX.o" "testUnrealRig_01RN.phl[90]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotateZ.o" "testUnrealRig_01RN.phl[91]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotateY.o" "testUnrealRig_01RN.phl[92]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotateX.o" "testUnrealRig_01RN.phl[93]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateZ.o" "testUnrealRig_01RN.phl[94]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateY.o" "testUnrealRig_01RN.phl[95]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateX.o" "testUnrealRig_01RN.phl[96]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_rotateZ.o" "testUnrealRig_01RN.phl[97]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_rotateY.o" "testUnrealRig_01RN.phl[98]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_rotateX.o" "testUnrealRig_01RN.phl[99]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_translateZ.o" "testUnrealRig_01RN.phl[100]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_translateY.o" "testUnrealRig_01RN.phl[101]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_translateX.o" "testUnrealRig_01RN.phl[102]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotateZ.o" "testUnrealRig_01RN.phl[103]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotateY.o" "testUnrealRig_01RN.phl[104]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotateX.o" "testUnrealRig_01RN.phl[105]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateZ.o" "testUnrealRig_01RN.phl[106]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateY.o" "testUnrealRig_01RN.phl[107]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateX.o" "testUnrealRig_01RN.phl[108]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotateZ.o" "testUnrealRig_01RN.phl[109]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotateY.o" "testUnrealRig_01RN.phl[110]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotateX.o" "testUnrealRig_01RN.phl[111]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateZ.o" "testUnrealRig_01RN.phl[112]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateY.o" "testUnrealRig_01RN.phl[113]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateX.o" "testUnrealRig_01RN.phl[114]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotateZ.o" "testUnrealRig_01RN.phl[115]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotateY.o" "testUnrealRig_01RN.phl[116]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotateX.o" "testUnrealRig_01RN.phl[117]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateZ.o" "testUnrealRig_01RN.phl[118]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateY.o" "testUnrealRig_01RN.phl[119]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateX.o" "testUnrealRig_01RN.phl[120]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotateZ.o" "testUnrealRig_01RN.phl[121]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotateY.o" "testUnrealRig_01RN.phl[122]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotateX.o" "testUnrealRig_01RN.phl[123]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateZ.o" "testUnrealRig_01RN.phl[124]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateY.o" "testUnrealRig_01RN.phl[125]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateX.o" "testUnrealRig_01RN.phl[126]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotateZ.o" "testUnrealRig_01RN.phl[127]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotateY.o" "testUnrealRig_01RN.phl[128]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotateX.o" "testUnrealRig_01RN.phl[129]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateZ.o" "testUnrealRig_01RN.phl[130]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateY.o" "testUnrealRig_01RN.phl[131]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateX.o" "testUnrealRig_01RN.phl[132]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotateZ.o" "testUnrealRig_01RN.phl[133]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotateY.o" "testUnrealRig_01RN.phl[134]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotateX.o" "testUnrealRig_01RN.phl[135]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateZ.o" "testUnrealRig_01RN.phl[136]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateY.o" "testUnrealRig_01RN.phl[137]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateX.o" "testUnrealRig_01RN.phl[138]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotateZ.o" "testUnrealRig_01RN.phl[139]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotateY.o" "testUnrealRig_01RN.phl[140]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotateX.o" "testUnrealRig_01RN.phl[141]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateZ.o" "testUnrealRig_01RN.phl[142]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateY.o" "testUnrealRig_01RN.phl[143]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateX.o" "testUnrealRig_01RN.phl[144]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotateZ.o" "testUnrealRig_01RN.phl[145]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotateY.o" "testUnrealRig_01RN.phl[146]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotateX.o" "testUnrealRig_01RN.phl[147]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateZ.o" "testUnrealRig_01RN.phl[148]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateY.o" "testUnrealRig_01RN.phl[149]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateX.o" "testUnrealRig_01RN.phl[150]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotateZ.o" "testUnrealRig_01RN.phl[151]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotateY.o" "testUnrealRig_01RN.phl[152]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotateX.o" "testUnrealRig_01RN.phl[153]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateZ.o" "testUnrealRig_01RN.phl[154]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateY.o" "testUnrealRig_01RN.phl[155]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateX.o" "testUnrealRig_01RN.phl[156]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotateZ.o" "testUnrealRig_01RN.phl[157]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotateY.o" "testUnrealRig_01RN.phl[158]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotateX.o" "testUnrealRig_01RN.phl[159]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateZ.o" "testUnrealRig_01RN.phl[160]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateY.o" "testUnrealRig_01RN.phl[161]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateX.o" "testUnrealRig_01RN.phl[162]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotateZ.o" "testUnrealRig_01RN.phl[163]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotateY.o" "testUnrealRig_01RN.phl[164]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotateX.o" "testUnrealRig_01RN.phl[165]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateZ.o" "testUnrealRig_01RN.phl[166]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateY.o" "testUnrealRig_01RN.phl[167]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateX.o" "testUnrealRig_01RN.phl[168]"
		;
connectAttr "Character1_Ctrl_Hips_rotateZ.o" "testUnrealRig_01RN.phl[169]";
connectAttr "Character1_Ctrl_Hips_rotateY.o" "testUnrealRig_01RN.phl[170]";
connectAttr "Character1_Ctrl_Hips_rotateX.o" "testUnrealRig_01RN.phl[171]";
connectAttr "Character1_Ctrl_Hips_translateZ.o" "testUnrealRig_01RN.phl[172]";
connectAttr "Character1_Ctrl_Hips_translateY.o" "testUnrealRig_01RN.phl[173]";
connectAttr "Character1_Ctrl_Hips_translateX.o" "testUnrealRig_01RN.phl[174]";
connectAttr "Character1_Ctrl_LeftUpLeg_rotateZ.o" "testUnrealRig_01RN.phl[175]";
connectAttr "Character1_Ctrl_LeftUpLeg_rotateY.o" "testUnrealRig_01RN.phl[176]";
connectAttr "Character1_Ctrl_LeftUpLeg_rotateX.o" "testUnrealRig_01RN.phl[177]";
connectAttr "Character1_Ctrl_LeftLeg_rotateZ.o" "testUnrealRig_01RN.phl[178]";
connectAttr "Character1_Ctrl_LeftLeg_rotateY.o" "testUnrealRig_01RN.phl[179]";
connectAttr "Character1_Ctrl_LeftLeg_rotateX.o" "testUnrealRig_01RN.phl[180]";
connectAttr "Character1_Ctrl_LeftFoot_rotateZ.o" "testUnrealRig_01RN.phl[181]";
connectAttr "Character1_Ctrl_LeftFoot_rotateY.o" "testUnrealRig_01RN.phl[182]";
connectAttr "Character1_Ctrl_LeftFoot_rotateX.o" "testUnrealRig_01RN.phl[183]";
connectAttr "Character1_Ctrl_LeftToeBase_rotateZ.o" "testUnrealRig_01RN.phl[184]"
		;
connectAttr "Character1_Ctrl_LeftToeBase_rotateY.o" "testUnrealRig_01RN.phl[185]"
		;
connectAttr "Character1_Ctrl_LeftToeBase_rotateX.o" "testUnrealRig_01RN.phl[186]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotateZ.o" "testUnrealRig_01RN.phl[187]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotateY.o" "testUnrealRig_01RN.phl[188]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotateX.o" "testUnrealRig_01RN.phl[189]"
		;
connectAttr "Character1_Ctrl_RightLeg_rotateZ.o" "testUnrealRig_01RN.phl[190]";
connectAttr "Character1_Ctrl_RightLeg_rotateY.o" "testUnrealRig_01RN.phl[191]";
connectAttr "Character1_Ctrl_RightLeg_rotateX.o" "testUnrealRig_01RN.phl[192]";
connectAttr "Character1_Ctrl_RightFoot_rotateZ.o" "testUnrealRig_01RN.phl[193]";
connectAttr "Character1_Ctrl_RightFoot_rotateY.o" "testUnrealRig_01RN.phl[194]";
connectAttr "Character1_Ctrl_RightFoot_rotateX.o" "testUnrealRig_01RN.phl[195]";
connectAttr "Character1_Ctrl_RightToeBase_rotateZ.o" "testUnrealRig_01RN.phl[196]"
		;
connectAttr "Character1_Ctrl_RightToeBase_rotateY.o" "testUnrealRig_01RN.phl[197]"
		;
connectAttr "Character1_Ctrl_RightToeBase_rotateX.o" "testUnrealRig_01RN.phl[198]"
		;
connectAttr "Character1_Ctrl_Spine_rotateZ.o" "testUnrealRig_01RN.phl[199]";
connectAttr "Character1_Ctrl_Spine_rotateY.o" "testUnrealRig_01RN.phl[200]";
connectAttr "Character1_Ctrl_Spine_rotateX.o" "testUnrealRig_01RN.phl[201]";
connectAttr "Character1_Ctrl_Spine1_rotateZ.o" "testUnrealRig_01RN.phl[202]";
connectAttr "Character1_Ctrl_Spine1_rotateY.o" "testUnrealRig_01RN.phl[203]";
connectAttr "Character1_Ctrl_Spine1_rotateX.o" "testUnrealRig_01RN.phl[204]";
connectAttr "Character1_Ctrl_Spine2_rotateZ.o" "testUnrealRig_01RN.phl[205]";
connectAttr "Character1_Ctrl_Spine2_rotateY.o" "testUnrealRig_01RN.phl[206]";
connectAttr "Character1_Ctrl_Spine2_rotateX.o" "testUnrealRig_01RN.phl[207]";
connectAttr "Character1_Ctrl_LeftShoulder_rotateZ.o" "testUnrealRig_01RN.phl[208]"
		;
connectAttr "Character1_Ctrl_LeftShoulder_rotateY.o" "testUnrealRig_01RN.phl[209]"
		;
connectAttr "Character1_Ctrl_LeftShoulder_rotateX.o" "testUnrealRig_01RN.phl[210]"
		;
connectAttr "Character1_Ctrl_LeftArm_rotateZ.o" "testUnrealRig_01RN.phl[211]";
connectAttr "Character1_Ctrl_LeftArm_rotateY.o" "testUnrealRig_01RN.phl[212]";
connectAttr "Character1_Ctrl_LeftArm_rotateX.o" "testUnrealRig_01RN.phl[213]";
connectAttr "Character1_Ctrl_LeftForeArm_rotateZ.o" "testUnrealRig_01RN.phl[214]"
		;
connectAttr "Character1_Ctrl_LeftForeArm_rotateY.o" "testUnrealRig_01RN.phl[215]"
		;
connectAttr "Character1_Ctrl_LeftForeArm_rotateX.o" "testUnrealRig_01RN.phl[216]"
		;
connectAttr "Character1_Ctrl_LeftHand_rotateZ.o" "testUnrealRig_01RN.phl[217]";
connectAttr "Character1_Ctrl_LeftHand_rotateY.o" "testUnrealRig_01RN.phl[218]";
connectAttr "Character1_Ctrl_LeftHand_rotateX.o" "testUnrealRig_01RN.phl[219]";
connectAttr "Character1_Ctrl_LeftHandThumb1_rotateZ.o" "testUnrealRig_01RN.phl[220]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb1_rotateY.o" "testUnrealRig_01RN.phl[221]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb1_rotateX.o" "testUnrealRig_01RN.phl[222]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotateZ.o" "testUnrealRig_01RN.phl[223]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotateY.o" "testUnrealRig_01RN.phl[224]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotateX.o" "testUnrealRig_01RN.phl[225]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotateZ.o" "testUnrealRig_01RN.phl[226]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotateY.o" "testUnrealRig_01RN.phl[227]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotateX.o" "testUnrealRig_01RN.phl[228]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4_rotateZ.o" "testUnrealRig_01RN.phl[229]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4_rotateY.o" "testUnrealRig_01RN.phl[230]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4_rotateX.o" "testUnrealRig_01RN.phl[231]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotateZ.o" "testUnrealRig_01RN.phl[232]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotateY.o" "testUnrealRig_01RN.phl[233]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotateX.o" "testUnrealRig_01RN.phl[234]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotateZ.o" "testUnrealRig_01RN.phl[235]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotateY.o" "testUnrealRig_01RN.phl[236]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotateX.o" "testUnrealRig_01RN.phl[237]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotateZ.o" "testUnrealRig_01RN.phl[238]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotateY.o" "testUnrealRig_01RN.phl[239]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotateX.o" "testUnrealRig_01RN.phl[240]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4_rotateZ.o" "testUnrealRig_01RN.phl[241]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4_rotateY.o" "testUnrealRig_01RN.phl[242]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4_rotateX.o" "testUnrealRig_01RN.phl[243]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotateZ.o" "testUnrealRig_01RN.phl[244]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotateY.o" "testUnrealRig_01RN.phl[245]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotateX.o" "testUnrealRig_01RN.phl[246]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotateZ.o" "testUnrealRig_01RN.phl[247]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotateY.o" "testUnrealRig_01RN.phl[248]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotateX.o" "testUnrealRig_01RN.phl[249]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotateZ.o" "testUnrealRig_01RN.phl[250]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotateY.o" "testUnrealRig_01RN.phl[251]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotateX.o" "testUnrealRig_01RN.phl[252]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4_rotateZ.o" "testUnrealRig_01RN.phl[253]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4_rotateY.o" "testUnrealRig_01RN.phl[254]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4_rotateX.o" "testUnrealRig_01RN.phl[255]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotateZ.o" "testUnrealRig_01RN.phl[256]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotateY.o" "testUnrealRig_01RN.phl[257]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotateX.o" "testUnrealRig_01RN.phl[258]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotateZ.o" "testUnrealRig_01RN.phl[259]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotateY.o" "testUnrealRig_01RN.phl[260]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotateX.o" "testUnrealRig_01RN.phl[261]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotateZ.o" "testUnrealRig_01RN.phl[262]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotateY.o" "testUnrealRig_01RN.phl[263]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotateX.o" "testUnrealRig_01RN.phl[264]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4_rotateZ.o" "testUnrealRig_01RN.phl[265]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4_rotateY.o" "testUnrealRig_01RN.phl[266]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4_rotateX.o" "testUnrealRig_01RN.phl[267]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotateZ.o" "testUnrealRig_01RN.phl[268]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotateY.o" "testUnrealRig_01RN.phl[269]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotateX.o" "testUnrealRig_01RN.phl[270]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotateZ.o" "testUnrealRig_01RN.phl[271]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotateY.o" "testUnrealRig_01RN.phl[272]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotateX.o" "testUnrealRig_01RN.phl[273]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotateZ.o" "testUnrealRig_01RN.phl[274]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotateY.o" "testUnrealRig_01RN.phl[275]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotateX.o" "testUnrealRig_01RN.phl[276]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4_rotateZ.o" "testUnrealRig_01RN.phl[277]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4_rotateY.o" "testUnrealRig_01RN.phl[278]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4_rotateX.o" "testUnrealRig_01RN.phl[279]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotateZ.o" "testUnrealRig_01RN.phl[280]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotateY.o" "testUnrealRig_01RN.phl[281]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotateX.o" "testUnrealRig_01RN.phl[282]"
		;
connectAttr "Character1_Ctrl_RightArm_rotateZ.o" "testUnrealRig_01RN.phl[283]";
connectAttr "Character1_Ctrl_RightArm_rotateY.o" "testUnrealRig_01RN.phl[284]";
connectAttr "Character1_Ctrl_RightArm_rotateX.o" "testUnrealRig_01RN.phl[285]";
connectAttr "Character1_Ctrl_RightForeArm_rotateZ.o" "testUnrealRig_01RN.phl[286]"
		;
connectAttr "Character1_Ctrl_RightForeArm_rotateY.o" "testUnrealRig_01RN.phl[287]"
		;
connectAttr "Character1_Ctrl_RightForeArm_rotateX.o" "testUnrealRig_01RN.phl[288]"
		;
connectAttr "Character1_Ctrl_RightHand_rotateZ.o" "testUnrealRig_01RN.phl[289]";
connectAttr "Character1_Ctrl_RightHand_rotateY.o" "testUnrealRig_01RN.phl[290]";
connectAttr "Character1_Ctrl_RightHand_rotateX.o" "testUnrealRig_01RN.phl[291]";
connectAttr "Character1_Ctrl_RightHandThumb1_rotateZ.o" "testUnrealRig_01RN.phl[292]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1_rotateY.o" "testUnrealRig_01RN.phl[293]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1_rotateX.o" "testUnrealRig_01RN.phl[294]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotateZ.o" "testUnrealRig_01RN.phl[295]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotateY.o" "testUnrealRig_01RN.phl[296]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotateX.o" "testUnrealRig_01RN.phl[297]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotateZ.o" "testUnrealRig_01RN.phl[298]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotateY.o" "testUnrealRig_01RN.phl[299]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotateX.o" "testUnrealRig_01RN.phl[300]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4_rotateZ.o" "testUnrealRig_01RN.phl[301]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4_rotateY.o" "testUnrealRig_01RN.phl[302]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4_rotateX.o" "testUnrealRig_01RN.phl[303]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotateZ.o" "testUnrealRig_01RN.phl[304]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotateY.o" "testUnrealRig_01RN.phl[305]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotateX.o" "testUnrealRig_01RN.phl[306]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotateZ.o" "testUnrealRig_01RN.phl[307]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotateY.o" "testUnrealRig_01RN.phl[308]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotateX.o" "testUnrealRig_01RN.phl[309]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotateZ.o" "testUnrealRig_01RN.phl[310]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotateY.o" "testUnrealRig_01RN.phl[311]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotateX.o" "testUnrealRig_01RN.phl[312]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4_rotateZ.o" "testUnrealRig_01RN.phl[313]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4_rotateY.o" "testUnrealRig_01RN.phl[314]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4_rotateX.o" "testUnrealRig_01RN.phl[315]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotateZ.o" "testUnrealRig_01RN.phl[316]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotateY.o" "testUnrealRig_01RN.phl[317]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotateX.o" "testUnrealRig_01RN.phl[318]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotateZ.o" "testUnrealRig_01RN.phl[319]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotateY.o" "testUnrealRig_01RN.phl[320]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotateX.o" "testUnrealRig_01RN.phl[321]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotateZ.o" "testUnrealRig_01RN.phl[322]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotateY.o" "testUnrealRig_01RN.phl[323]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotateX.o" "testUnrealRig_01RN.phl[324]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4_rotateZ.o" "testUnrealRig_01RN.phl[325]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4_rotateY.o" "testUnrealRig_01RN.phl[326]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4_rotateX.o" "testUnrealRig_01RN.phl[327]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotateZ.o" "testUnrealRig_01RN.phl[328]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotateY.o" "testUnrealRig_01RN.phl[329]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotateX.o" "testUnrealRig_01RN.phl[330]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotateZ.o" "testUnrealRig_01RN.phl[331]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotateY.o" "testUnrealRig_01RN.phl[332]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotateX.o" "testUnrealRig_01RN.phl[333]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotateZ.o" "testUnrealRig_01RN.phl[334]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotateY.o" "testUnrealRig_01RN.phl[335]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotateX.o" "testUnrealRig_01RN.phl[336]"
		;
connectAttr "Character1_Ctrl_RightHandRing4_rotateZ.o" "testUnrealRig_01RN.phl[337]"
		;
connectAttr "Character1_Ctrl_RightHandRing4_rotateY.o" "testUnrealRig_01RN.phl[338]"
		;
connectAttr "Character1_Ctrl_RightHandRing4_rotateX.o" "testUnrealRig_01RN.phl[339]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotateZ.o" "testUnrealRig_01RN.phl[340]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotateY.o" "testUnrealRig_01RN.phl[341]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotateX.o" "testUnrealRig_01RN.phl[342]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotateZ.o" "testUnrealRig_01RN.phl[343]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotateY.o" "testUnrealRig_01RN.phl[344]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotateX.o" "testUnrealRig_01RN.phl[345]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotateZ.o" "testUnrealRig_01RN.phl[346]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotateY.o" "testUnrealRig_01RN.phl[347]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotateX.o" "testUnrealRig_01RN.phl[348]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4_rotateZ.o" "testUnrealRig_01RN.phl[349]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4_rotateY.o" "testUnrealRig_01RN.phl[350]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4_rotateX.o" "testUnrealRig_01RN.phl[351]"
		;
connectAttr "Character1_Ctrl_Neck_rotateZ.o" "testUnrealRig_01RN.phl[352]";
connectAttr "Character1_Ctrl_Neck_rotateY.o" "testUnrealRig_01RN.phl[353]";
connectAttr "Character1_Ctrl_Neck_rotateX.o" "testUnrealRig_01RN.phl[354]";
connectAttr "Character1_Ctrl_Head_rotateZ.o" "testUnrealRig_01RN.phl[355]";
connectAttr "Character1_Ctrl_Head_rotateY.o" "testUnrealRig_01RN.phl[356]";
connectAttr "Character1_Ctrl_Head_rotateX.o" "testUnrealRig_01RN.phl[357]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "testUnrealRig_01RN.sr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of testUnrealRig_01_WalkAnim.ma
