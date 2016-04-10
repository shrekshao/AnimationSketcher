//Maya ASCII 2016 scene
//Name: SimpleSnakeScene.ma
//Last modified: Sun, Apr 10, 2016 03:19:03 PM
//Codeset: 936
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "4F23030E-4BE2-EBF9-6ACD-21B7CD4360EE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.284086220941454 16.511357305841731 5.6338082669993952 ;
	setAttr ".r" -type "double3" -44.13835272959755 76.999999999998749 1.4138874301968597e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "7E05EF31-4A7C-F8FA-9A4C-15A3CA29A819";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 23.47171109584427;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0B43898B-424C-3F39-6FE1-C0A069174906";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3D46CEBE-4F87-2BEA-5994-9FB8C453EE55";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "8E631F75-42A4-FB95-ECC6-B9B01320EBAF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DFD636A3-4AFF-BA46-07AA-A7AA0BFE150E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0CD9D603-4008-A399-184F-E88A4B344585";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0.011888490894810241 4.158422381584348 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0074897B-42CB-B9D6-3CE9-0F8A89CF122F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 17.649300589432869;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group3";
	rename -uid "12FE7B6F-4FD6-CC0B-9881-7DBEDC5D76C6";
createNode transform -n "pCylinder3" -p "group3";
	rename -uid "2BC0AF0F-4271-1615-E036-55B17CD136BC";
	setAttr ".t" -type "double3" 0 0 4 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "8B0AB182-4396-D1BD-D600-4B8895409DFC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCylinderShape3Orig" -p "pCylinder3";
	rename -uid "758037A5-4B84-B539-5658-84894A92E466";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2" -p "group3";
	rename -uid "9A9C25BB-48BD-BA95-2964-4BB5FEE8114A";
	setAttr ".t" -type "double3" 0 0 7 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "1F35C2C8-4BF4-DBD1-2C73-87B8689431F8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCylinderShape2Orig" -p "pCylinder2";
	rename -uid "CEB2DAD6-4CDD-CD7D-0E7E-6F831C7AED6E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder1" -p "group3";
	rename -uid "592CB0D9-4DC3-8ADB-E0BC-219D32EE0E5A";
	setAttr ".t" -type "double3" 0 0 10 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "7A7CC3ED-4A37-0E45-288E-FCBD8276B0C3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCylinderShape1Orig" -p "pCylinder1";
	rename -uid "DD3F8117-457A-4F0A-8287-8589C63DFCED";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder4" -p "group3";
	rename -uid "D9826423-4B70-24F0-B066-1DA3279BE042";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "52D66818-4A2C-0A85-3891-DFBFE7ADBEB8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCylinderShape4Orig" -p "pCylinder4";
	rename -uid "F462C03F-4391-CAFA-530A-C7A536892110";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder5" -p "group3";
	rename -uid "6E6FC151-4EDB-D795-D7D6-C6B0F08F791C";
	setAttr ".t" -type "double3" 0 0 -2 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	rename -uid "401640C9-459F-047B-3027-34B7CA7F79C1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCylinderShape5Orig" -p "pCylinder5";
	rename -uid "EFFD84AE-4A2D-1FDD-8B7A-ED87FE958386";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "joint1";
	rename -uid "1D6CCD2E-4D12-C6D4-E4BA-13BD231C9967";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 0 -2 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999997598 -89.696850556285881 89.999999999998806 ;
	setAttr ".bps" -type "matrix" 3.3306690738754696e-016 0.0052909312324092824 0.99998600292538786 0
		 -2.111852359654165e-014 0.99998600292538786 -0.0052909312324092815 0 -0.99999999999999989 -2.1117222553934667e-014 4.4408920985006262e-016 0
		 0 0 -2 1;
	setAttr ".radi" 0.60329791348394091;
createNode joint -n "joint2" -p "joint1";
	rename -uid "C8246AEA-4310-0B03-B342-7F9F1AB416AB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3 5.7245874707234634e-016 9.98232494672065e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 3.3306690738754696e-016 0.0052909312324092824 0.99998600292538786 0
		 -2.111852359654165e-014 0.99998600292538786 -0.0052909312324092815 0 -0.99999999999999989 -2.1117222553934667e-014 4.4408920985006262e-016 0
		 9.6822749056405765e-019 0.01587279369722842 0.9999580087761637 1;
	setAttr ".radi" 0.60329791348394091;
createNode joint -n "joint3" -p "joint2";
	rename -uid "E6F116F0-436E-E6AA-EC4B-598403096B5F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3 5.6551985316843911e-016 9.982324946720792e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.7283316436588191e-016 -4.4683984773910856e-014 -1.2125298929132533 ;
	setAttr ".bps" -type "matrix" 7.7988265721575673e-016 -0.015871016626723702 0.99987404748359898 0
		 -2.1106746682126482e-014 0.99987404748359898 0.015871016626723702 0 -0.99999999999999989 -2.1117222553934667e-014 4.4408920985006262e-016 0
		 1.9364549811139158e-018 0.031745587394456834 3.9999160175523274 1;
	setAttr ".radi" 0.6033152712324461;
createNode joint -n "joint4" -p "joint3";
	rename -uid "4C6E304E-48A6-8B62-C0DF-C89F212BDACB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3 -4.163336342344337e-016 2.3376425635704864e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.5664032382184597e-017 -3.8705568280330157e-014 
		0.2832219956628117 ;
	setAttr ".bps" -type "matrix" 6.7553960535036439e-016 -0.010928309117472418 0.99994028424693093 0
		 -2.1110343879342329e-014 0.99994028424693093 0.010928309117472418 0 -0.99999999999999989 -2.1117222553934667e-014 4.4408920985006262e-016 0
		 3.9418630579067694e-018 -0.01586746248571469 6.9995381600031248 1;
	setAttr ".radi" 0.59838344133459587;
createNode joint -n "joint5" -p "joint4";
	rename -uid "2E98847F-40BA-9F04-C51A-F093E2CB82E3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 3 5.7488735993871387e-014 1.9604698872380411e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.62615845353632438 89.999999999998764 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999967 2.0880631776087106e-014 2.1203966963162682e-014 0
		 -2.0880543372155547e-014 1 5.2041704279303165e-018 0 -2.1204550078686043e-014 -3.4694469524107884e-018 0.99999999999999989 0
		 7.009079186974567e-017 -0.048652389838074454 9.999359012743918 1;
	setAttr ".radi" 0.59838344133459587;
createNode transform -n "curve1";
	rename -uid "29D9BE2C-4F0F-79D9-FBB7-CBB27E4FF696";
createNode nurbsCurve -n "curveShape1" -p "curve1";
	rename -uid "6E490081-41E2-6638-AE47-1299C1017A20";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 6 0 no 3
		11 0 0 0 1 2 3 4 5 6 6 6
		9
		5.8065436080654864 0 10.949998408018301
		4.8950709088852067 0 9.4423797769657583
		3.0721255105246232 0 6.4271425148606216
		7.7593825294470946 0 3.35112305778798
		6.0882115217382804 0 -3.6803855852018015
		-0.079065299078311446 0 -8.3220499230008311
		-5.0478033946040854 0 -3.1855737586523443
		-5.3554383898636182 0 1.3842827905554922
		-5.5092558874933646 0 3.6692110651594163
		;
createNode transform -n "curve5";
	rename -uid "ED712BB2-4B7F-52A2-B54E-5BB03C97362E";
createNode nurbsCurve -n "curveShape5" -p "curve5";
	rename -uid "F6400FE3-4E2B-2782-684E-0D80A8C5B3F2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		-5.4466019417476605 0 -4.8349514563107805
		-5.6761442441055125 0 -3.992371705964032
		-6.1352288488211766 0 -2.3072122052705137
		-3.7406380027738644 0 -1.314840499306523
		-3.8925104022192238 0 1.2753120665741995
		-3.9188626907073729 0 1.8619972260748772
		-3.9320388349514408 0 2.1553398058252133
		;
createNode transform -n "curve6";
	rename -uid "C4E7DB4C-434A-94EE-F7C2-F69A361BC8EE";
createNode nurbsCurve -n "curveShape6" -p "curve6";
	rename -uid "24A8DDFA-47DA-A160-D196-93BD6FF80C08";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 6 0 no 3
		11 0 0 0 1 2 3 4 5 6 6 6
		9
		4.8204652419478506 0 -2.084738010479263
		4.2980329424441557 0 -2.3322729703288911
		3.253168343436744 0 -2.8273428900281314
		3.1470763771009662 0 -4.5725739010150441
		2.9186291593758464 0 -5.0038532898752175
		3.8847915745312278 0 -6.7757120303231426
		2.2422271319657798 0 -7.8923925801550245
		1.5255511105443493 0 -8.6589597731974735
		1.1672130998336274 0 -9.0422433697186673
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E75453AC-40BB-D57B-5FF2-D8AD801D97BB";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "22F69A71-411F-6D95-81ED-5087318CFCC9";
createNode displayLayer -n "defaultLayer";
	rename -uid "5F885B86-4F04-C987-A374-89B18F3BF170";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A6F39701-4207-827F-69CC-76B6A678A606";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FA3D7948-4FBA-A9E7-DD18-19A214150136";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "3891A630-40EF-3DEA-54C0-5CB2D6A2ACD1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "EF484FDC-46BF-CD48-7BAF-3DB9533EED7D";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder3";
	rename -uid "CB630591-4610-3E30-FBC4-22BDB2D47D5C";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder4";
	rename -uid "28B6BDDD-49AF-D0F5-E71D-979ABD8C7704";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder5";
	rename -uid "216F169E-4A7A-0B49-99B4-339E132EC9EA";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode skinCluster -n "skinCluster1";
	rename -uid "862BDC94-496A-3FCE-B317-3888546DC5F9";
	setAttr -s 42 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  0.030257496033591576 0.77775431374475656 
		0.19198819022165187;
	setAttr -s 3 ".wl[1].w[0:2]"  0.029554188314210195 0.78020074156489039 
		0.19024507012089947;
	setAttr -s 3 ".wl[2].w[0:2]"  0.028998749167723367 0.78216552088540292 
		0.18883572994687373;
	setAttr -s 3 ".wl[3].w[0:2]"  0.028643424601013861 0.78343802925531225 
		0.1879185461436739;
	setAttr -s 3 ".wl[4].w[0:2]"  0.028521223659470161 0.78387853241417704 
		0.18760024392635286;
	setAttr -s 3 ".wl[5].w[0:2]"  0.028643420036111148 0.78343805097284391 
		0.18791852899104486;
	setAttr -s 3 ".wl[6].w[0:2]"  0.028998731725817177 0.78216560307878658 
		0.1888356651953963;
	setAttr -s 3 ".wl[7].w[0:2]"  0.02955415983801964 0.78020087382129599 
		0.19024496634068444;
	setAttr -s 3 ".wl[8].w[0:2]"  0.030257464731079882 0.77775445673222898 
		0.19198807853669111;
	setAttr -s 3 ".wl[9].w[0:2]"  0.031041420848411827 0.77508002442101398 
		0.19387855473057408;
	setAttr -s 3 ".wl[10].w[0:2]"  0.03182980741878659 0.77244406929310494 
		0.1957261232881084;
	setAttr -s 3 ".wl[11].w[0:2]"  0.032544697633305628 0.77009847440371948 
		0.19735682796297496;
	setAttr -s 3 ".wl[12].w[0:2]"  0.033114456316003536 0.76825837470429692 
		0.19862716897969962;
	setAttr -s 3 ".wl[13].w[0:2]"  0.033481369476844464 0.76708676258488329 
		0.19943186793827222;
	setAttr -s 3 ".wl[14].w[0:2]"  0.03360799334792864 0.76668482435408447 
		0.19970718229798692;
	setAttr -s 3 ".wl[15].w[0:2]"  0.033481362157972532 0.76708679365513632 
		0.19943184418689114;
	setAttr -s 3 ".wl[16].w[0:2]"  0.033114446124071148 0.76825841834939512 
		0.19862713552653372;
	setAttr -s 3 ".wl[17].w[0:2]"  0.032544682264239171 0.77009854105196884 
		0.19735677668379212;
	setAttr -s 3 ".wl[18].w[0:2]"  0.031829786566925922 0.77244416109118696 
		0.19572605234188703;
	setAttr -s 3 ".wl[19].w[0:2]"  0.031041400787343833 0.77508011434616153 
		0.19387848486649456;
	setAttr -s 3 ".wl[20].w[1:3]"  0.19382007501194115 0.77583776660995807 
		0.030342158378100757;
	setAttr -s 3 ".wl[21].w[1:3]"  0.1939257515433018 0.77636052207951789 
		0.029713726377180252;
	setAttr -s 3 ".wl[22].w[1:3]"  0.19399954766396635 0.7767809454602228 
		0.029219506875810906;
	setAttr -s 3 ".wl[23].w[1:3]"  0.19404212829151643 0.77705356933979197 
		0.028904302368691633;
	setAttr -s 3 ".wl[24].w[1:3]"  0.19405591512590634 0.77714801427157165 
		0.028796070602522005;
	setAttr -s 3 ".wl[25].w[1:3]"  0.19404211104043531 0.77705359109974292 
		0.028904297859821692;
	setAttr -s 3 ".wl[26].w[1:3]"  0.1939994826846736 0.7767810276965208 
		0.029219489618805682;
	setAttr -s 3 ".wl[27].w[1:3]"  0.19392564769600071 0.77636065417901634 
		0.029713698124983003;
	setAttr -s 3 ".wl[28].w[1:3]"  0.19381996316092734 0.77583790964672561 
		0.030342127192347104;
	setAttr -s 3 ".wl[29].w[1:3]"  0.19368671507440746 0.77526714558537591 
		0.031046139340216695;
	setAttr -s 3 ".wl[30].w[1:3]"  0.19353702809967968 0.77470505778319831 
		0.031757914117121998;
	setAttr -s 3 ".wl[31].w[1:3]"  0.1933882369576348 0.77420511373716094 
		0.032406649305204233;
	setAttr -s 3 ".wl[32].w[1:3]"  0.1932611118426821 0.7738129261200416 
		0.032925962037276227;
	setAttr -s 3 ".wl[33].w[1:3]"  0.19317536233243798 0.77356317101643512 
		0.033261466651126843;
	setAttr -s 3 ".wl[34].w[1:3]"  0.19314506570820464 0.77347748656494764 
		0.033377447726847774;
	setAttr -s 3 ".wl[35].w[1:3]"  0.19317533851013247 0.77356320227149133 
		0.033261459218376206;
	setAttr -s 3 ".wl[36].w[1:3]"  0.19326107823057601 0.77381297006242777 
		0.032925951706996248;
	setAttr -s 3 ".wl[37].w[1:3]"  0.19338818545804937 0.77420518076084544 
		0.032406633781105185;
	setAttr -s 3 ".wl[38].w[1:3]"  0.19353695709060748 0.77470514975608784 
		0.031757893153304718;
	setAttr -s 3 ".wl[39].w[1:3]"  0.19368664518539949 0.77526723554870647 
		0.03104611926589405;
	setAttr -s 3 ".wl[40].w[0:2]"  3.0605332266199951e-008 0.99999948042817066 
		4.8896649714854969e-007;
	setAttr -s 3 ".wl[41].w[1:3]"  6.3270865571218755e-008 0.99999993276223731 
		3.9668971425283988e-009;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 3.3235322154790733e-016 -2.1119276620065353e-014 -1 0
		 0.0052909312324092815 0.99998600292538797 -2.1116465764888392e-014 0 0.99998600292538797 -0.0052909312324092824 4.4479890150450817e-016 0
		 1.9999720058507759 -0.010581862464818565 8.8959780300901635e-016 1;
	setAttr ".pm[1]" -type "matrix" 3.3235322154790733e-016 -2.1119276620065353e-014 -1 0
		 0.0052909312324092815 0.99998600292538797 -2.1116465764888392e-014 0 0.99998600292538797 -0.0052909312324092824 4.4479890150450817e-016 0
		 -1.0000279941492243 -0.010581862464819137 -1.0863469166304853e-016 1;
	setAttr ".pm[2]" -type "matrix" 7.7918506596029739e-016 -2.1107514639381319e-014 -1.0000000000000002 0
		 -0.015871016626723699 0.99987404748359887 -2.1116465764888396e-014 0 0.99987404748359887 0.015871016626723699 4.4479890150450817e-016 0
		 -3.9989083833191605 -0.095224322577911302 -1.1068671863351276e-015 1;
	setAttr ".pm[3]" -type "matrix" 6.7483822650032495e-016 -2.1111108378926155e-014 -1 0
		 -0.010928309117472416 0.99994028424693082 -2.1116465764888392e-014 0 0.99994028424693082 0.010928309117472416 4.4479890150450807e-016 0
		 -6.999293581845718 -0.060626601743815192 -3.4445097499056145e-015 1;
	setAttr ".pm[4]" -type "matrix" 1.0000000000000002 -2.0880631776087113e-014 -2.1203966963162691e-014 0
		 2.0880543372155553e-014 1 -5.2041704283730678e-018 0 2.120455007868605e-014 3.469446951968024e-018 1 0
		 -2.1108611139618595e-013 0.04865238983807442 -9.999359012743918 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 0 4 1;
	setAttr -s 4 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "5ADDCC06-4971-FE0E-FBF7-C297BC5FB0B8";
createNode objectSet -n "skinCluster1Set";
	rename -uid "4CB581D2-4AE4-20BE-D935-A8A14DFE3BC3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "36B8018F-4372-5234-841E-2CB33042736B";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "7E92BC9F-4948-9081-3931-BC8970694F3D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "A3B6553B-4872-5059-9DD4-7FAB0B497A00";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "A347D025-4CE1-ADD6-EFC4-52BAF6527D91";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "7BA38B57-414C-7AB6-0404-B7881171F19D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "A935647E-4F14-6EB3-5D9B-63867513E1B2";
	setAttr -s 5 ".wm";
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 -2 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 -0.0018706332224663336 -0.70710430682562442 0.0018706332224812661 0.70710430682562464 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 3 5.7072402359636953e-016
		 9.9823249467206519e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 3 5.7419347054832315e-016
		 9.9823249467207979e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.010581122001158587 0.99994401836162639 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9999999999999996 -4.0245584642661925e-016
		 2.337642563570486e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0024715756528389814 0.99999694565223163 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3 5.7488735993871387e-014
		 1.9604698872380411e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0038637984247725365 0.70709622475425649 0.0038637984247724532 0.7070962247542717 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 3 5.7474858206063573e-014
		 1.9604698872380411e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0038637984247725365 0.70709622475425649 0.0038637984247724532 0.7070962247542717 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "05552BE3-49E9-86DB-FBCB-E9B75A5985C3";
	setAttr -s 42 ".wl";
	setAttr -s 3 ".wl[0].w[1:3]"  0.031282496453311208 0.77638966318519798 
		0.19232784036149098;
	setAttr -s 3 ".wl[1].w[1:3]"  0.03154896817329951 0.77754561815427536 
		0.19090541367242506;
	setAttr -s 3 ".wl[2].w[1:3]"  0.031760736775177732 0.77846131188938728 
		0.18977795133543493;
	setAttr -s 3 ".wl[3].w[1:3]"  0.031896830776724588 0.77904844284417951 
		0.18905472637909596;
	setAttr -s 3 ".wl[4].w[1:3]"  0.031943747160971481 0.77925061794023787 
		0.18880563489879068;
	setAttr -s 3 ".wl[5].w[1:3]"  0.031896825827165423 0.77904846404180172 
		0.18905471013103287;
	setAttr -s 3 ".wl[6].w[1:3]"  0.031760718143334622 0.7784613923506486 
		0.18977788950601676;
	setAttr -s 3 ".wl[7].w[1:3]"  0.031548938418709892 0.77754574825854694 
		0.19090531332274327;
	setAttr -s 3 ".wl[8].w[1:3]"  0.031282464373833571 0.77638980505553468 
		0.19232773057063182;
	setAttr -s 3 ".wl[9].w[1:3]"  0.030987592891750002 0.77510567306468903 
		0.19390673404356107;
	setAttr -s 3 ".wl[10].w[1:3]"  0.030693299533796323 0.77381864519113297 
		0.19548805527507071;
	setAttr -s 3 ".wl[11].w[1:3]"  0.030428322728968671 0.7726551930259572 
		0.19691648424507407;
	setAttr -s 3 ".wl[12].w[1:3]"  0.030218398521191174 0.77173024348041153 
		0.19805135799839735;
	setAttr -s 3 ".wl[13].w[1:3]"  0.030083795180232981 0.77113562697849125 
		0.19878057784127579;
	setAttr -s 3 ".wl[14].w[1:3]"  0.030037443558144059 0.77093061283661335 
		0.19903194360524254;
	setAttr -s 3 ".wl[15].w[1:3]"  0.030083788330780972 0.7711356589641577 
		0.19878055270506137;
	setAttr -s 3 ".wl[16].w[1:3]"  0.030218388850999735 0.77173028827121704 
		0.19805132287778335;
	setAttr -s 3 ".wl[17].w[1:3]"  0.030428307919042996 0.77265526097967241 
		0.19691643110128457;
	setAttr -s 3 ".wl[18].w[1:3]"  0.030693279151186748 0.77381873788071576 
		0.19548798296809758;
	setAttr -s 3 ".wl[19].w[1:3]"  0.030987572845371243 0.7751057630343624 
		0.19390666412026633;
	setAttr -s 3 ".wl[20].w[2:4]"  0.19732608123806172 0.77113205176336341 
		0.031541866998574829;
	setAttr -s 3 ".wl[21].w[2:4]"  0.20044841513935344 0.76757392878695452 
		0.031977656073692018;
	setAttr -s 3 ".wl[22].w[2:4]"  0.20290508201198532 0.7647756732214066 
		0.032319244766608017;
	setAttr -s 3 ".wl[23].w[2:4]"  0.20447242287303552 0.76299099738884346 
		0.032536579738120859;
	setAttr -s 3 ".wl[24].w[2:4]"  0.20501068491287749 0.76237820544937385 
		0.03261110963774861;
	setAttr -s 3 ".wl[25].w[2:4]"  0.20447240643791667 0.76299101860878416 
		0.032536574953299181;
	setAttr -s 3 ".wl[26].w[2:4]"  0.20290501979540909 0.76477575353749405 
		0.032319226667096863;
	setAttr -s 3 ".wl[27].w[2:4]"  0.20044831484760303 0.76757405820556512 
		0.031977626946831893;
	setAttr -s 3 ".wl[28].w[2:4]"  0.19732597124562856 0.77113219350560047 
		0.031541835248770952;
	setAttr -s 3 ".wl[29].w[2:4]"  0.19383013393049101 0.77511812380735878 
		0.031051742262150208;
	setAttr -s 3 ".wl[30].w[2:4]"  0.19029805373066155 0.77914769957589358 
		0.030554246693444809;
	setAttr -s 3 ".wl[31].w[2:4]"  0.18708081209741928 0.78282012343756124 
		0.030099064465019532;
	setAttr -s 3 ".wl[32].w[2:4]"  0.18450691164499772 0.7857595746880699 
		0.029733513666932443;
	setAttr -s 3 ".wl[33].w[2:4]"  0.18284479494886657 0.78765840338630777 
		0.029496801664825666;
	setAttr -s 3 ".wl[34].w[2:4]"  0.1822703326059934 0.78831479927736037 
		0.029414868116646262;
	setAttr -s 3 ".wl[35].w[2:4]"  0.18284476969538244 0.78765843574688055 
		0.029496794557736961;
	setAttr -s 3 ".wl[36].w[2:4]"  0.18450687619235159 0.78575962012984413 
		0.029733503677804314;
	setAttr -s 3 ".wl[37].w[2:4]"  0.18708075849307917 0.78282019221501975 
		0.030099049291901089;
	setAttr -s 3 ".wl[38].w[2:4]"  0.1902979814016158 0.77914779254891364 
		0.030554226049470529;
	setAttr -s 3 ".wl[39].w[2:4]"  0.19383006407090339 0.7751182137335465 
		0.031051722195550142;
	setAttr ".wl[40].w[2]"  1;
	setAttr -s 3 ".wl[41].w[2:4]"  5.1464767558534154e-007 0.99999945310800065 
		3.2244323795039221e-008;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 3.3235322154790733e-016 -2.1119276620065353e-014 -1 0
		 0.0052909312324092815 0.99998600292538797 -2.1116465764888392e-014 0 0.99998600292538797 -0.0052909312324092824 4.4479890150450817e-016 0
		 1.9999720058507759 -0.010581862464818565 8.8959780300901635e-016 1;
	setAttr ".pm[1]" -type "matrix" 3.3235322154790733e-016 -2.1119276620065353e-014 -1 0
		 0.0052909312324092815 0.99998600292538797 -2.1116465764888392e-014 0 0.99998600292538797 -0.0052909312324092824 4.4479890150450817e-016 0
		 -1.0000279941492243 -0.010581862464819137 -1.0863469166304853e-016 1;
	setAttr ".pm[2]" -type "matrix" 7.7918506596029739e-016 -2.1107514639381319e-014 -1.0000000000000002 0
		 -0.015871016626723699 0.99987404748359887 -2.1116465764888396e-014 0 0.99987404748359887 0.015871016626723699 4.4479890150450817e-016 0
		 -3.9989083833191605 -0.095224322577911302 -1.1068671863351276e-015 1;
	setAttr ".pm[3]" -type "matrix" 6.7483822650032495e-016 -2.1111108378926155e-014 -1 0
		 -0.010928309117472416 0.99994028424693082 -2.1116465764888392e-014 0 0.99994028424693082 0.010928309117472416 4.4479890150450807e-016 0
		 -6.999293581845718 -0.060626601743815192 -3.4445097499056145e-015 1;
	setAttr ".pm[4]" -type "matrix" 1.0000000000000002 -2.0880631776087113e-014 -2.1203966963162691e-014 0
		 2.0880543372155553e-014 1 -5.2041704283730678e-018 0 2.120455007868605e-014 3.469446951968024e-018 1 0
		 -2.1108611139618595e-013 0.04865238983807442 -9.999359012743918 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 0 7 1;
	setAttr -s 4 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "FC91A4B1-49A2-D338-85EE-BFA70395B716";
createNode objectSet -n "skinCluster2Set";
	rename -uid "8BBE2DE3-4463-9A22-959D-9EBFA3083E88";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "0C8D663D-48F8-F319-B5D0-3A9526C3FBE8";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "8D7D3ED7-4C20-B544-A680-F399910617AE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "DE213DFD-4DBC-C58D-8AAB-95BEFB9232DB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "6972F755-4F1A-9D31-2DB3-DA843CE2D076";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "37B454C2-452B-7963-F66D-AD9DD1F5C57C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	rename -uid "571AEF1E-4003-13BF-FF69-E2BDC9092501";
	setAttr -s 42 ".wl";
	setAttr -s 3 ".wl[0].w[2:4]"  0.032247560062216289 0.77140894707308161 
		0.19634349286470215;
	setAttr -s 3 ".wl[1].w[2:4]"  0.033331662423320682 0.76833968094395866 
		0.1983286566327207;
	setAttr -s 3 ".wl[2].w[2:4]"  0.034198926761541161 0.76594487768830299 
		0.19985619555015594;
	setAttr -s 3 ".wl[3].w[2:4]"  0.034758896137627331 0.7644259353886218 
		0.20081516847375092;
	setAttr -s 3 ".wl[4].w[2:4]"  0.034952409635508851 0.76390586381911973 
		0.20114172654537144;
	setAttr -s 3 ".wl[5].w[2:4]"  0.034758891043328653 0.76442595625228016 
		0.20081515270439126;
	setAttr -s 3 ".wl[6].w[2:4]"  0.034198907700038299 0.76594495685617581 
		0.19985613544378597;
	setAttr -s 3 ".wl[7].w[2:4]"  0.033331632249472415 0.7683398090175444 
		0.19832855873298311;
	setAttr -s 3 ".wl[8].w[2:4]"  0.032247527685200866 0.77140908794869623 
		0.19634338436610296;
	setAttr -s 3 ".wl[9].w[2:4]"  0.031057479213914427 0.77488100502588475 
		0.19406151576020084;
	setAttr -s 3 ".wl[10].w[2:4]"  0.029880118334080625 0.7784289074710371 
		0.19169097419488232;
	setAttr -s 3 ".wl[11].w[2:4]"  0.028829222255798249 0.78169729687599143 
		0.18947348086821042;
	setAttr -s 3 ".wl[12].w[2:4]"  0.028003015897881324 0.78433845090848597 
		0.18765853319363263;
	setAttr -s 3 ".wl[13].w[2:4]"  0.027476274533534788 0.78605686795052099 
		0.18646685751594425;
	setAttr -s 3 ".wl[14].w[2:4]"  0.027295451491669689 0.78665319264572631 
		0.18605135586260402;
	setAttr -s 3 ".wl[15].w[2:4]"  0.027476267825012397 0.78605690087539171 
		0.18646683129959593;
	setAttr -s 3 ".wl[16].w[2:4]"  0.028003006361833459 0.78433849699205094 
		0.18765849664611553;
	setAttr -s 3 ".wl[17].w[2:4]"  0.028829207572076986 0.78169736631921216 
		0.18947342610871087;
	setAttr -s 3 ".wl[18].w[2:4]"  0.029880098083463428 0.77842900089905975 
		0.19169090101747688;
	setAttr -s 3 ".wl[19].w[2:4]"  0.031057459160552563 0.77488109489518708 
		0.19406144594426036;
	setAttr -s 3 ".wl[20].w[2:4]"  0.0070934934393723252 0.49645325328031387 
		0.49645325328031387;
	setAttr -s 3 ".wl[21].w[2:4]"  0.007275079841200207 0.49636246007939994 
		0.49636246007939994;
	setAttr -s 3 ".wl[22].w[2:4]"  0.007420647718170398 0.49628967614091479 
		0.49628967614091479;
	setAttr -s 3 ".wl[23].w[2:4]"  0.0075147864838246833 0.49624260675808773 
		0.49624260675808762;
	setAttr -s 3 ".wl[24].w[2:4]"  0.0075473469213210107 0.49622632653933951 
		0.49622632653933951;
	setAttr -s 3 ".wl[25].w[2:4]"  0.0075147857367087786 0.49624260713164559 
		0.49624260713164559;
	setAttr -s 3 ".wl[26].w[2:4]"  0.0074206449333541766 0.49628967753332293 
		0.49628967753332293;
	setAttr -s 3 ".wl[27].w[2:4]"  0.0072750754584867457 0.49636246227075659 
		0.49636246227075659;
	setAttr -s 3 ".wl[28].w[2:4]"  0.0070934887643844258 0.49645325561780779 
		0.49645325561780779;
	setAttr -s 3 ".wl[29].w[2:4]"  0.0068946073071789469 0.49655269634641053 
		0.49655269634641053;
	setAttr -s 3 ".wl[30].w[2:4]"  0.0066982716238234456 0.49665086418808829 
		0.49665086418808829;
	setAttr -s 3 ".wl[31].w[2:4]"  0.0065233476176464146 0.4967383261911768 
		0.4967383261911768;
	setAttr -s 3 ".wl[32].w[2:4]"  0.0063860145375735731 0.49680699273121326 
		0.49680699273121326;
	setAttr -s 3 ".wl[33].w[2:4]"  0.0062985377013455961 0.49685073114932715 
		0.49685073114932715;
	setAttr -s 3 ".wl[34].w[2:4]"  0.0062685212579112288 0.49686573937104439 
		0.49686573937104439;
	setAttr -s 3 ".wl[35].w[2:4]"  0.006298536757767462 0.49685073162111631 
		0.49685073162111631;
	setAttr -s 3 ".wl[36].w[2:4]"  0.0063860131915213997 0.49680699340423945 
		0.49680699340423923;
	setAttr -s 3 ".wl[37].w[2:4]"  0.0065233455358350125 0.49673832723208255 
		0.49673832723208255;
	setAttr -s 3 ".wl[38].w[2:4]"  0.0066982687393118299 0.49665086563034405 
		0.49665086563034405;
	setAttr -s 3 ".wl[39].w[2:4]"  0.0068946044322093494 0.49655269778389532 
		0.49655269778389532;
	setAttr -s 3 ".wl[40].w[2:4]"  1.2649890672811778e-007 0.99999785178499767 
		2.0217160956500162e-006;
	setAttr -s 3 ".wl[41].w[2:4]"  0.0019625771172287788 0.4990187114413856 
		0.4990187114413856;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 3.3235322154790733e-016 -2.1119276620065353e-014 -1 0
		 0.0052909312324092815 0.99998600292538797 -2.1116465764888392e-014 0 0.99998600292538797 -0.0052909312324092824 4.4479890150450817e-016 0
		 1.9999720058507759 -0.010581862464818565 8.8959780300901635e-016 1;
	setAttr ".pm[1]" -type "matrix" 3.3235322154790733e-016 -2.1119276620065353e-014 -1 0
		 0.0052909312324092815 0.99998600292538797 -2.1116465764888392e-014 0 0.99998600292538797 -0.0052909312324092824 4.4479890150450817e-016 0
		 -1.0000279941492243 -0.010581862464819137 -1.0863469166304853e-016 1;
	setAttr ".pm[2]" -type "matrix" 7.7918506596029739e-016 -2.1107514639381319e-014 -1.0000000000000002 0
		 -0.015871016626723699 0.99987404748359887 -2.1116465764888396e-014 0 0.99987404748359887 0.015871016626723699 4.4479890150450817e-016 0
		 -3.9989083833191605 -0.095224322577911302 -1.1068671863351276e-015 1;
	setAttr ".pm[3]" -type "matrix" 6.7483822650032495e-016 -2.1111108378926155e-014 -1 0
		 -0.010928309117472416 0.99994028424693082 -2.1116465764888392e-014 0 0.99994028424693082 0.010928309117472416 4.4479890150450807e-016 0
		 -6.999293581845718 -0.060626601743815192 -3.4445097499056145e-015 1;
	setAttr ".pm[4]" -type "matrix" 1.0000000000000002 -2.0880631776087113e-014 -2.1203966963162691e-014 0
		 2.0880543372155553e-014 1 -5.2041704283730678e-018 0 2.120455007868605e-014 3.469446951968024e-018 1 0
		 -2.1108611139618595e-013 0.04865238983807442 -9.999359012743918 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 0 10 1;
	setAttr -s 3 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak3";
	rename -uid "4F0CF759-49F6-3FFF-80DB-51B8BD926E65";
createNode objectSet -n "skinCluster3Set";
	rename -uid "FD3C457B-400E-4D5C-B810-518E4083F7C6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "24393919-46A7-502D-AC99-6BB5075EB1DC";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "A9A0B582-44D6-44BA-EFD3-44887874A8B2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "7E00EB82-4E4B-7150-F1BB-1FA1EE683035";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "19D9BCFA-4E89-42B4-4487-558480206C2E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "7D56E40C-4113-A88C-CDE7-38BA480FC06D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	rename -uid "FFEBDA20-4660-716F-CD8E-A289ADED6FC9";
	setAttr -s 42 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  0.79832931280723018 0.19893751124250567 
		0.0027331759502641083;
	setAttr -s 3 ".wl[1].w[0:2]"  0.79882877999857249 0.19846311226846386 
		0.0027081077329635405;
	setAttr -s 3 ".wl[2].w[0:2]"  0.79922912338034391 0.19808263682132005 
		0.0026882397983360737;
	setAttr -s 3 ".wl[3].w[0:2]"  0.79948803313176042 0.19783647078961822 
		0.0026754960786213901;
	setAttr -s 3 ".wl[4].w[0:2]"  0.79957759380664528 0.19775129919129888 
		0.0026711070020558236;
	setAttr -s 3 ".wl[5].w[0:2]"  0.79948805188151351 0.19783645255467008 
		0.0026754955638164084;
	setAttr -s 3 ".wl[6].w[0:2]"  0.79922919429099848 0.19808256786779144 
		0.002688237841210158;
	setAttr -s 3 ".wl[7].w[0:2]"  0.79882889402591772 0.19846300141344733 
		0.0027081045606350308;
	setAttr -s 3 ".wl[8].w[0:2]"  0.79832943641861143 0.19893739110165451 
		0.0027331724797341108;
	setAttr -s 3 ".wl[9].w[0:2]"  0.79778218861587114 0.19945680777181773 
		0.002761003612311093;
	setAttr -s 3 ".wl[10].w[0:2]"  0.79724156602391227 0.19996955421287435 
		0.0027888797632133894;
	setAttr -s 3 ".wl[11].w[0:2]"  0.7967595168556475 0.20042641937433703 
		0.00281406377001551;
	setAttr -s 3 ".wl[12].w[0:2]"  0.79638071554231926 0.2007852098685797 
		0.0028340745891010854;
	setAttr -s 3 ".wl[13].w[0:2]"  0.7961392381356498 0.20101382799197781 
		0.0028469338723724254;
	setAttr -s 3 ".wl[14].w[0:2]"  0.79605635383439677 0.20109227956597064 
		0.0028513665996326328;
	setAttr -s 3 ".wl[15].w[0:2]"  0.79613926526218626 0.20101380165905874 
		0.002846933078754956;
	setAttr -s 3 ".wl[16].w[0:2]"  0.796380753663116 0.20078517285751982 
		0.0028340734793641919;
	setAttr -s 3 ".wl[17].w[0:2]"  0.79675957496128269 0.20042636294818267 
		0.0028140620905345599;
	setAttr -s 3 ".wl[18].w[0:2]"  0.79724164569229039 0.19996947682776853 
		0.0027888774799411133;
	setAttr -s 3 ".wl[19].w[0:2]"  0.79778226645786299 0.19945673213834381 
		0.0027610014037933134;
	setAttr -s 3 ".wl[20].w[0:2]"  0.19142658127844739 0.77800336933652037 
		0.030570049385032296;
	setAttr -s 3 ".wl[21].w[0:2]"  0.18919040455289179 0.7806507562366618 
		0.030158839210446396;
	setAttr -s 3 ".wl[22].w[0:2]"  0.18740167393611687 0.7827673978830042 
		0.029830928180878916;
	setAttr -s 3 ".wl[23].w[0:2]"  0.18624665154749437 0.78413368200631972 
		0.029619666446185959;
	setAttr -s 3 ".wl[24].w[0:2]"  0.18584745952518988 0.78460580267053281 
		0.029546737804277384;
	setAttr -s 3 ".wl[25].w[0:2]"  0.18624663473461314 0.78413370353104184 
		0.029619661734345049;
	setAttr -s 3 ".wl[26].w[0:2]"  0.18740161024841018 0.78276747947275338 
		0.029830910278836432;
	setAttr -s 3 ".wl[27].w[0:2]"  0.1891903019458929 0.78065088782638559 
		0.03015881022772144;
	setAttr -s 3 ".wl[28].w[0:2]"  0.19142647027057633 0.77800351195167183 
		0.030570017777751913;
	setAttr -s 3 ".wl[29].w[0:2]"  0.19388221355508656 0.77509453946102391 
		0.031023246983889616;
	setAttr -s 3 ".wl[30].w[0:2]"  0.19631378521186918 0.77221248785592644 
		0.031473726932204432;
	setAttr -s 3 ".wl[31].w[0:2]"  0.19848662608412182 0.76963565107813203 
		0.031877722837746113;
	setAttr -s 3 ".wl[32].w[0:2]"  0.20019708135914621 0.76760620022815751 
		0.032196718412696446;
	setAttr -s 3 ".wl[33].w[0:2]"  0.20128879270682956 0.76631043689225053 
		0.03240077040091998;
	setAttr -s 3 ".wl[34].w[0:2]"  0.20166379060054532 0.76586526788710052 
		0.032470941512354239;
	setAttr -s 3 ".wl[35].w[0:2]"  0.20128876852948396 0.76631046819576332 
		0.032400763274752643;
	setAttr -s 3 ".wl[36].w[0:2]"  0.20019704741533856 0.76760624414673084 
		0.032196708437930606;
	setAttr -s 3 ".wl[37].w[0:2]"  0.19848657426402314 0.76963571803341002 
		0.031877707702566781;
	setAttr -s 3 ".wl[38].w[0:2]"  0.19631371382822937 0.77221257990253667 
		0.031473706269234;
	setAttr -s 3 ".wl[39].w[0:2]"  0.1938821436700976 0.77509462940249341 
		0.031023226927409067;
	setAttr -s 2 ".wl[40].w[0:1]"  0.99999998746562846 1.2534371567037664e-008;
	setAttr -s 3 ".wl[41].w[0:2]"  2.0048256246644168e-007 0.99999978698306846 
		1.2534369054727072e-008;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 3.3235322154790733e-016 -2.1119276620065353e-014 -1 0
		 0.0052909312324092815 0.99998600292538797 -2.1116465764888392e-014 0 0.99998600292538797 -0.0052909312324092824 4.4479890150450817e-016 0
		 1.9999720058507759 -0.010581862464818565 8.8959780300901635e-016 1;
	setAttr ".pm[1]" -type "matrix" 3.3235322154790733e-016 -2.1119276620065353e-014 -1 0
		 0.0052909312324092815 0.99998600292538797 -2.1116465764888392e-014 0 0.99998600292538797 -0.0052909312324092824 4.4479890150450817e-016 0
		 -1.0000279941492243 -0.010581862464819137 -1.0863469166304853e-016 1;
	setAttr ".pm[2]" -type "matrix" 7.7918506596029739e-016 -2.1107514639381319e-014 -1.0000000000000002 0
		 -0.015871016626723699 0.99987404748359887 -2.1116465764888396e-014 0 0.99987404748359887 0.015871016626723699 4.4479890150450817e-016 0
		 -3.9989083833191605 -0.095224322577911302 -1.1068671863351276e-015 1;
	setAttr ".pm[3]" -type "matrix" 6.7483822650032495e-016 -2.1111108378926155e-014 -1 0
		 -0.010928309117472416 0.99994028424693082 -2.1116465764888392e-014 0 0.99994028424693082 0.010928309117472416 4.4479890150450807e-016 0
		 -6.999293581845718 -0.060626601743815192 -3.4445097499056145e-015 1;
	setAttr ".pm[4]" -type "matrix" 1.0000000000000002 -2.0880631776087113e-014 -2.1203966963162691e-014 0
		 2.0880543372155553e-014 1 -5.2041704283730678e-018 0 2.120455007868605e-014 3.469446951968024e-018 1 0
		 -2.1108611139618595e-013 0.04865238983807442 -9.999359012743918 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 0 1 1;
	setAttr -s 3 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak4";
	rename -uid "094FD718-47AB-73A9-4C82-90BB09898415";
createNode objectSet -n "skinCluster4Set";
	rename -uid "46589064-4E2D-E750-8AF4-BCB768CDBF2A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	rename -uid "B5998DB7-4FE6-B439-520F-1FACF2DC45DA";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	rename -uid "0CD6F8EB-494C-8070-B013-F6813C44F8AE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "4C0BF1A7-4114-2CEE-B005-618263D4DD36";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "04DD458E-4F3A-CFB6-0731-BF9E604A529C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "23B36933-489E-D5B0-3B1E-9CBAAC5C169A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster5";
	rename -uid "14B02A86-471A-ACBD-1BBA-41A529ACA13D";
	setAttr -s 42 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  0.9847770794596864 0.013646027370503749 
		0.0015768931698097585;
	setAttr -s 3 ".wl[1].w[0:2]"  0.98476196909984592 0.013660044513186902 
		0.0015779863869671193;
	setAttr -s 3 ".wl[2].w[0:2]"  0.98474996261162306 0.013671182765123798 
		0.0015788546232531038;
	setAttr -s 3 ".wl[3].w[0:2]"  0.98474224758162554 0.013678340108072246 
		0.0015794123103022861;
	setAttr -s 3 ".wl[4].w[0:2]"  0.98473958840648279 0.013680807117794196 
		0.0015796044757230786;
	setAttr -s 3 ".wl[5].w[0:2]"  0.98474224910127228 0.013678338758121701 
		0.0015794121406060579;
	setAttr -s 3 ".wl[6].w[0:2]"  0.98474996836284923 0.013671177656307999 
		0.0015788539808427402;
	setAttr -s 3 ".wl[7].w[0:2]"  0.98476197835979484 0.013660036288008185 
		0.0015779853521970062;
	setAttr -s 3 ".wl[8].w[0:2]"  0.98477708952887399 0.013646018426954501 
		0.0015768920441715602;
	setAttr -s 3 ".wl[9].w[0:2]"  0.98479381397494437 0.013630504615062317 
		0.0015756814099932481;
	setAttr -s 3 ".wl[10].w[0:2]"  0.98481050903692402 0.013615018627865346 
		0.0015744723352106879;
	setAttr -s 3 ".wl[11].w[0:2]"  0.98482554836362202 0.013601069095777709 
		0.0015733825406001394;
	setAttr -s 3 ".wl[12].w[0:2]"  0.98483746781545611 0.01359001373510837 
		0.0015725184494355159;
	setAttr -s 3 ".wl[13].w[0:2]"  0.98484511261528773 0.013582923289020719 
		0.0015719640956915624;
	setAttr -s 3 ".wl[14].w[0:2]"  0.98484774638322126 0.013580480571954229 
		0.0015717730448244673;
	setAttr -s 3 ".wl[15].w[0:2]"  0.98484511485359139 0.013582921301398491 
		0.0015719638450100981;
	setAttr -s 3 ".wl[16].w[0:2]"  0.98483747095842977 0.013590010944040809 
		0.001572518097529342;
	setAttr -s 3 ".wl[17].w[0:2]"  0.98482555314330311 0.013601064851088772 
		0.0015733820056081456;
	setAttr -s 3 ".wl[18].w[0:2]"  0.98481051556510701 0.013615012830159715 
		0.0015744716047332383;
	setAttr -s 3 ".wl[19].w[0:2]"  0.9847938203329355 0.013630498968187762 
		0.0015756806988766643;
	setAttr -s 3 ".wl[20].w[0:2]"  0.96027541701096264 0.038311142711597926 
		0.0014134402774393855;
	setAttr -s 3 ".wl[21].w[0:2]"  0.96036951571951368 0.038223363177881026 
		0.001407121102605428;
	setAttr -s 3 ".wl[22].w[0:2]"  0.96044459251498482 0.038153306369379636 
		0.0014021011156355272;
	setAttr -s 3 ".wl[23].w[0:2]"  0.96049298400664596 0.038108140349111266 
		0.0013988756442428285;
	setAttr -s 3 ".wl[24].w[0:2]"  0.96050969474421655 0.038092541551057756 
		0.0013977637047255613;
	setAttr -s 3 ".wl[25].w[0:2]"  0.96049299099631669 0.038108133656067272 
		0.0013988753476161363;
	setAttr -s 3 ".wl[26].w[0:2]"  0.96044461899513933 0.038153281014704714 
		0.0014020999901559151;
	setAttr -s 3 ".wl[27].w[0:2]"  0.9603695584176285 0.03822332229880173 
		0.0014071192835697648;
	setAttr -s 3 ".wl[28].w[0:2]"  0.96027546348229087 0.03831109822526392 
		0.0014134382924452221;
	setAttr -s 3 ".wl[29].w[0:2]"  0.96017180348421349 0.038407761550734144 
		0.0014204349650523652;
	setAttr -s 3 ".wl[30].w[0:2]"  0.9600688122241865 0.038503764338145327 
		0.001427423437668185;
	setAttr -s 3 ".wl[31].w[0:2]"  0.95997649160182319 0.038589788429891546 
		0.0014337199682852842;
	setAttr -s 3 ".wl[32].w[0:2]"  0.95990361615127751 0.038657672029114645 
		0.00143871181960784;
	setAttr -s 3 ".wl[33].w[0:2]"  0.95985700636859017 0.03870107913127184 
		0.0014419145001379054;
	setAttr -s 3 ".wl[34].w[0:2]"  0.95984098273503549 0.038715999811452247 
		0.0014430174535123165;
	setAttr -s 3 ".wl[35].w[0:2]"  0.95985701674532764 0.038701069203115862 
		0.0014419140515564732;
	setAttr -s 3 ".wl[36].w[0:2]"  0.95990363070883367 0.038657658099942004 
		0.0014387111912241941;
	setAttr -s 3 ".wl[37].w[0:2]"  0.959976513723796 0.038589767260833886 
		0.0014337190153701628;
	setAttr -s 3 ".wl[38].w[0:2]"  0.96006884242856538 0.038503735431674409 
		0.0014274221397602425;
	setAttr -s 3 ".wl[39].w[0:2]"  0.96017183286966845 0.038407733424300462 
		0.001420433706031093;
	setAttr -s 3 ".wl[40].w[0:2]"  0.99569581906673199 0.0038894776241036417 
		0.00041470330916436017;
	setAttr ".wl[41].w[0]"  1;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 3.3235322154790733e-016 -2.1119276620065353e-014 -1 0
		 0.0052909312324092815 0.99998600292538797 -2.1116465764888392e-014 0 0.99998600292538797 -0.0052909312324092824 4.4479890150450817e-016 0
		 1.9999720058507759 -0.010581862464818565 8.8959780300901635e-016 1;
	setAttr ".pm[1]" -type "matrix" 3.3235322154790733e-016 -2.1119276620065353e-014 -1 0
		 0.0052909312324092815 0.99998600292538797 -2.1116465764888392e-014 0 0.99998600292538797 -0.0052909312324092824 4.4479890150450817e-016 0
		 -1.0000279941492243 -0.010581862464819137 -1.0863469166304853e-016 1;
	setAttr ".pm[2]" -type "matrix" 7.7918506596029739e-016 -2.1107514639381319e-014 -1.0000000000000002 0
		 -0.015871016626723699 0.99987404748359887 -2.1116465764888396e-014 0 0.99987404748359887 0.015871016626723699 4.4479890150450817e-016 0
		 -3.9989083833191605 -0.095224322577911302 -1.1068671863351276e-015 1;
	setAttr ".pm[3]" -type "matrix" 6.7483822650032495e-016 -2.1111108378926155e-014 -1 0
		 -0.010928309117472416 0.99994028424693082 -2.1116465764888392e-014 0 0.99994028424693082 0.010928309117472416 4.4479890150450807e-016 0
		 -6.999293581845718 -0.060626601743815192 -3.4445097499056145e-015 1;
	setAttr ".pm[4]" -type "matrix" 1.0000000000000002 -2.0880631776087113e-014 -2.1203966963162691e-014 0
		 2.0880543372155553e-014 1 -5.2041704283730678e-018 0 2.120455007868605e-014 3.469446951968024e-018 1 0
		 -2.1108611139618595e-013 0.04865238983807442 -9.999359012743918 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 0 -2 1;
	setAttr -s 3 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak5";
	rename -uid "A2F41987-41B4-FA82-061D-B4BF06A1B74E";
createNode objectSet -n "skinCluster5Set";
	rename -uid "7DCE0529-4036-C6D0-BC6F-28B55DC7F2F9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	rename -uid "F2265693-425E-9D1E-C066-12A6C606E0BA";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	rename -uid "3950C5B7-49E4-D91C-2C55-AEA5A1EEDEE9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	rename -uid "B5CCF1A1-413D-802D-970C-499672CC1C29";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "E3E4F256-47CE-4A5D-2DF6-539212A256B7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "CAF08054-4A16-D058-410A-0B809927D3E0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B1E2C162-4098-8283-78F0-B095915D8778";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 515\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 515\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 515\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 515\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 515\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 515\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 515\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 515\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 1\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 1\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -currentNode \"ffd1Lattice\" \n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -currentNode \"ffd1Lattice\" \n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n"
		+ "                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 515\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 515\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 515\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 515\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 515\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 515\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 515\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 515\\n    -height 342\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "047F9C98-40A7-AF40-B30D-4B9B1FAB0664";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "skinCluster1GroupId.id" "pCylinderShape3.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "pCylinderShape3.iog.og[2].gco";
connectAttr "groupId2.id" "pCylinderShape3.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "pCylinderShape3.iog.og[3].gco";
connectAttr "skinCluster1.og[0]" "pCylinderShape3.i";
connectAttr "tweak1.vl[0].vt[0]" "pCylinderShape3.twl";
connectAttr "polyCylinder3.out" "pCylinderShape3Orig.i";
connectAttr "skinCluster2GroupId.id" "pCylinderShape2.iog.og[2].gid";
connectAttr "skinCluster2Set.mwc" "pCylinderShape2.iog.og[2].gco";
connectAttr "groupId4.id" "pCylinderShape2.iog.og[3].gid";
connectAttr "tweakSet2.mwc" "pCylinderShape2.iog.og[3].gco";
connectAttr "skinCluster2.og[0]" "pCylinderShape2.i";
connectAttr "tweak2.vl[0].vt[0]" "pCylinderShape2.twl";
connectAttr "polyCylinder2.out" "pCylinderShape2Orig.i";
connectAttr "skinCluster3GroupId.id" "pCylinderShape1.iog.og[2].gid";
connectAttr "skinCluster3Set.mwc" "pCylinderShape1.iog.og[2].gco";
connectAttr "groupId6.id" "pCylinderShape1.iog.og[3].gid";
connectAttr "tweakSet3.mwc" "pCylinderShape1.iog.og[3].gco";
connectAttr "skinCluster3.og[0]" "pCylinderShape1.i";
connectAttr "tweak3.vl[0].vt[0]" "pCylinderShape1.twl";
connectAttr "polyCylinder1.out" "pCylinderShape1Orig.i";
connectAttr "skinCluster4GroupId.id" "pCylinderShape4.iog.og[0].gid";
connectAttr "skinCluster4Set.mwc" "pCylinderShape4.iog.og[0].gco";
connectAttr "groupId8.id" "pCylinderShape4.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "pCylinderShape4.iog.og[1].gco";
connectAttr "skinCluster4.og[0]" "pCylinderShape4.i";
connectAttr "tweak4.vl[0].vt[0]" "pCylinderShape4.twl";
connectAttr "polyCylinder4.out" "pCylinderShape4Orig.i";
connectAttr "skinCluster5GroupId.id" "pCylinderShape5.iog.og[0].gid";
connectAttr "skinCluster5Set.mwc" "pCylinderShape5.iog.og[0].gco";
connectAttr "groupId10.id" "pCylinderShape5.iog.og[1].gid";
connectAttr "tweakSet5.mwc" "pCylinderShape5.iog.og[1].gco";
connectAttr "skinCluster5.og[0]" "pCylinderShape5.i";
connectAttr "tweak5.vl[0].vt[0]" "pCylinderShape5.twl";
connectAttr "polyCylinder5.out" "pCylinderShape5Orig.i";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4.s" "joint5.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint4.wm" "skinCluster1.ma[3]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCylinderShape3.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCylinderShape3.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCylinderShape3Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "joint4.msg" "bindPose1.m[3]";
connectAttr "joint5.msg" "bindPose1.m[5]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[5]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "joint4.bps" "bindPose1.wm[3]";
connectAttr "joint5.bps" "bindPose1.wm[5]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "joint2.wm" "skinCluster2.ma[1]";
connectAttr "joint3.wm" "skinCluster2.ma[2]";
connectAttr "joint4.wm" "skinCluster2.ma[3]";
connectAttr "joint5.wm" "skinCluster2.ma[4]";
connectAttr "joint2.liw" "skinCluster2.lw[1]";
connectAttr "joint3.liw" "skinCluster2.lw[2]";
connectAttr "joint4.liw" "skinCluster2.lw[3]";
connectAttr "joint5.liw" "skinCluster2.lw[4]";
connectAttr "joint2.obcc" "skinCluster2.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster2.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster2.ifcl[3]";
connectAttr "joint5.obcc" "skinCluster2.ifcl[4]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "pCylinderShape2.iog.og[2]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "pCylinderShape2.iog.og[3]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "pCylinderShape2Orig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "joint3.wm" "skinCluster3.ma[2]";
connectAttr "joint4.wm" "skinCluster3.ma[3]";
connectAttr "joint5.wm" "skinCluster3.ma[4]";
connectAttr "joint3.liw" "skinCluster3.lw[2]";
connectAttr "joint4.liw" "skinCluster3.lw[3]";
connectAttr "joint5.liw" "skinCluster3.lw[4]";
connectAttr "joint3.obcc" "skinCluster3.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster3.ifcl[3]";
connectAttr "joint5.obcc" "skinCluster3.ifcl[4]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "pCylinderShape1.iog.og[2]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "pCylinderShape1.iog.og[3]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "pCylinderShape1Orig.w" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "joint1.wm" "skinCluster4.ma[0]";
connectAttr "joint2.wm" "skinCluster4.ma[1]";
connectAttr "joint3.wm" "skinCluster4.ma[2]";
connectAttr "joint1.liw" "skinCluster4.lw[0]";
connectAttr "joint2.liw" "skinCluster4.lw[1]";
connectAttr "joint3.liw" "skinCluster4.lw[2]";
connectAttr "joint1.obcc" "skinCluster4.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster4.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster4.ifcl[2]";
connectAttr "bindPose1.msg" "skinCluster4.bp";
connectAttr "groupParts8.og" "tweak4.ip[0].ig";
connectAttr "groupId8.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "pCylinderShape4.iog.og[0]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId8.msg" "tweakSet4.gn" -na;
connectAttr "pCylinderShape4.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "pCylinderShape4Orig.w" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "joint1.wm" "skinCluster5.ma[0]";
connectAttr "joint2.wm" "skinCluster5.ma[1]";
connectAttr "joint3.wm" "skinCluster5.ma[2]";
connectAttr "joint1.liw" "skinCluster5.lw[0]";
connectAttr "joint2.liw" "skinCluster5.lw[1]";
connectAttr "joint3.liw" "skinCluster5.lw[2]";
connectAttr "joint1.obcc" "skinCluster5.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster5.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster5.ifcl[2]";
connectAttr "bindPose1.msg" "skinCluster5.bp";
connectAttr "groupParts10.og" "tweak5.ip[0].ig";
connectAttr "groupId10.id" "tweak5.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "pCylinderShape5.iog.og[0]" "skinCluster5Set.dsm" -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak5.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet5.gn" -na;
connectAttr "pCylinderShape5.iog.og[1]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "pCylinderShape5Orig.w" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog" ":initialShadingGroup.dsm" -na;
// End of SimpleSnakeScene.ma
