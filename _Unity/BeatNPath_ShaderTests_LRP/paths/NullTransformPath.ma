//Maya ASCII 2018 scene
//Name: NullTransformPath.ma
//Last modified: Sun, May 05, 2019 05:15:04 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "0DFD13CA-46D5-CE59-A940-8D848C139B17";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2789.1406317357942 1274.1865985432642 -126.599828760929 ;
	setAttr ".r" -type "double3" 697.46164728637802 -96.600000000134543 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "662F206F-44E7-78E8-A3BA-9E86D356E30F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 3327.7025195022993;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -96.951350413311559 16.972654469716222 -18.26844558600834 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "97366DC1-4D1B-AD8B-5334-D49E888BEBCC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 198.99527268375556 1477.4036414179395 220.15030023277492 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "430543C3-429E-2A2D-AC6B-57B932FD68D9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1451.173051177313;
	setAttr ".ow" 3935.8634447728805;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 201.32348286550507 26.230590240626512 -132.69872209268314 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "C1178346-4089-9BD2-DE61-2DA1B1C88210";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 199.10316625586503 33.640798790616543 1121.1336970133802 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "88ABDFAB-4B01-8C4D-DF4E-D4B346B887EF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 900.95073962439608;
	setAttr ".ow" 386.92326175123628;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 199.10316625586503 33.640798790616543 220.18295738898428 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "74229BF1-4C6A-9BB0-44BD-33BF7421930E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1078.8490941812033 24.798987183090581 220.18295738898448 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1CC5EB11-40EC-2343-09D1-60BDFF6B958D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 879.74592792533826;
	setAttr ".ow" 0.032961460552441951;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 199.10316625586503 24.798987183090581 220.18295738898428 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "left1";
	rename -uid "B45973A8-495E-9C33-F5BA-85BCD2476270";
	setAttr ".t" -type "double3" -858.7302876705653 0 455.82394345695644 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape2" -p "left1";
	rename -uid "C67F0655-4906-7886-18B8-37A691CCD5E2";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 38.898180400025403;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "right1";
	rename -uid "BDAEF3AA-4662-6FAC-1BA7-5CB3C57E8F04";
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -n "rightShape2" -p "right1";
	rename -uid "555B95F2-4B93-B16A-6DEB-8FAECB2FFDA4";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 86.800910058551693;
	setAttr ".imn" -type "string" "right1";
	setAttr ".den" -type "string" "right1_depth";
	setAttr ".man" -type "string" "right1_mask";
	setAttr ".hc" -type "string" "viewSet -rs %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Path_Curve";
	rename -uid "C1B65D94-4AA7-8AD9-382D-8FAD1F4CD72A";
	setAttr ".rp" -type "double3" 200.14133002771436 25.861693752718509 215.03687515826817 ;
	setAttr ".sp" -type "double3" 200.14133002771436 25.861693752718509 215.03687515826817 ;
createNode nurbsCurve -n "Path_CurveShape" -p "Path_Curve";
	rename -uid "80FF85C6-40AE-2942-665C-549296D79F4C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 238 0 no 3
		243 0 0 0 0.012499999999999734 0.024999999999999911 0.037499999999999645 0.049999999999999822
		 0.0625 0.074999999999999734 0.087499999999999911 0.099999999999999645 0.11249999999999982
		 0.125 0.13749999999999973 0.14999999999999991 0.16250000000000009 0.17499999999999982
		 0.1875 0.20000000000000018 0.21249999999999991 0.22499999999999964 0.23749999999999982
		 0.25 0.26249999999999973 0.27499999999999991 0.28749999999999964 0.29999999999999982
		 0.3125 0.32499999999999973 0.33749999999999991 0.34999999999999964 0.36249999999999982
		 0.375 0.38749999999999973 0.39999999999999991 0.41249999999999964 0.42499999999999982
		 0.4375 0.44999999999999973 0.46249999999999991 0.47499999999999964 0.48749999999999982
		 0.5 0.51249999999999973 0.52499999999999991 0.53749999999999964 0.54999999999999982
		 0.5625 0.57500000000000018 0.58749999999999991 0.61249999999999982 0.625 0.63749999999999973
		 0.64999999999999991 0.66249999999999964 0.67499999999999982 0.6875 0.69999999999999973
		 0.71249999999999991 0.72499999999999964 0.73749999999999982 0.75 0.76249999999999973
		 0.77499999999999991 0.78749999999999964 0.79999999999999982 0.8125 0.82499999999999973
		 0.83749999999999991 0.84999999999999964 0.86249999999999982 0.875 0.88749999999999973
		 0.89999999999999991 0.91249999999999964 0.92499999999999982 0.9375 0.94999999999999973
		 0.96249999999999991 0.97499999999999964 0.98749999999999982 1.0041666666666664 1.020833333333333
		 1.0374999999999999 1.0541666666666665 1.0708333333333333 1.0874999999999999 1.1041666666666665
		 1.1208333333333331 1.1374999999999997 1.1541666666666663 1.1708333333333332 1.1874999999999998
		 1.2041666666666666 1.2208333333333332 1.2374999999999998 1.2541666666666664 1.270833333333333
		 1.2874999999999999 1.3041666666666665 1.3208333333333331 1.3374999999999999 1.3541666666666665
		 1.3708333333333331 1.3874999999999997 1.4041666666666663 1.4208333333333332 1.4374999999999998
		 1.4541666666666666 1.4708333333333332 1.4874999999999998 1.5041666666666664 1.520833333333333
		 1.5374999999999999 1.5541666666666665 1.5708333333333333 1.5874999999999999 1.6041666666666665
		 1.6208333333333331 1.6375 1.6541666666666663 1.6708333333333332 1.6874999999999998
		 1.7041666666666666 1.7208333333333332 1.7374999999999998 1.7541666666666664 1.770833333333333
		 1.7874999999999999 1.8041666666666665 1.8208333333333331 1.8374999999999999 1.8541666666666665
		 1.8708333333333331 1.8874999999999997 1.9041666666666663 1.9208333333333334 1.9374999999999998
		 1.9541666666666666 1.9708333333333332 1.9874999999999998 1.9974999999999998 2.0074999999999998
		 2.0175000000000001 2.0274999999999999 2.0374999999999996 2.0474999999999999 2.0575000000000001
		 2.0674999999999999 2.0774999999999997 2.0874999999999999 2.0974999999999997 2.1074999999999999
		 2.1174999999999997 2.1274999999999999 2.1374999999999997 2.1475 2.1574999999999998
		 2.1674999999999995 2.1774999999999998 2.1875 2.1974999999999998 2.2074999999999996
		 2.2174999999999998 2.2275 2.2374999999999998 2.2474999999999996 2.2574999999999998
		 2.2675000000000001 2.2774999999999999 2.2874999999999996 2.2974999999999999 2.3075000000000001
		 2.3174999999999999 2.3274999999999997 2.3374999999999995 2.3474999999999997 2.3574999999999999
		 2.3674999999999997 2.3774999999999999 2.3875000000000002 2.3975 2.4074999999999998
		 2.4174999999999995 2.4274999999999998 2.4375 2.4474999999999998 2.4574999999999996
		 2.4674999999999998 2.4775 2.4874999999999998 2.4974999999999996 2.5074999999999998
		 2.5175000000000001 2.5274999999999999 2.5374999999999996 2.5474999999999999 2.5574999999999997
		 2.5674999999999999 2.5774999999999997 2.5874999999999999 2.5974999999999997 2.6074999999999999
		 2.6174999999999997 2.6274999999999999 2.6374999999999997 2.6475 2.6574999999999998
		 2.6675 2.6774999999999998 2.6874999999999996 2.6974999999999998 2.7074999999999996
		 2.7174999999999998 2.7275 2.7374999999999998 2.7474999999999996 2.7574999999999998
		 2.7675000000000001 2.7774999999999999 2.7875000000000001 2.7974999999999999 2.8074999999999997
		 2.8174999999999999 2.8274999999999997 2.8374999999999999 2.8474999999999997 2.8574999999999999
		 2.8674999999999997 2.8774999999999999 2.8874999999999997 2.8975 2.9074999999999998
		 2.9175 2.9274999999999998 2.9375 2.9474999999999998 2.9574999999999996 2.9674999999999998
		 2.9775 2.9874999999999998 2.9874999999999998 2.9874999999999998
		241
		200.14132787412208 25.861694428535117 215.03688206662073
		206.52993296839665 25.904018558543306 212.63637132520358
		216.14479492908671 26.047008366214193 209.1243604419106
		225.73727414145887 23.659118228932527 205.72293509501162
		235.41572600039106 22.830392318983794 202.49120221473115
		245.16793604167029 21.993346469912634 199.48818586375563
		255.00857657680464 21.146051105497026 196.79408445166246
		264.89217255993924 20.293647963482499 194.26634973038296
		274.81659403006051 19.43632596169865 191.90486651261057
		284.77153719667763 18.575240536588957 189.67854753668439
		294.73556719733494 17.713023721739084 187.49385383918121
		304.72803055472298 16.847240922076622 185.44266782597958
		314.76421136358044 15.975812404310926 183.61734197428808
		324.84675593832117 15.098073266906729 182.0723943707327
		334.95609642584054 14.216437292864569 180.72104259954494
		345.08363012927157 13.332041209313264 179.51558525943773
		355.21840637069715 12.4464816536873 178.37638504477951
		365.35070313888821 11.561331490421999 177.21310138702
		375.46875437149595 10.67838730313211 175.92992118764408
		385.57221804541473 9.7976098289354638 174.53562315834432
		395.66776999914873 8.9179730653097788 173.08541104905561
		405.75981844492208 8.0388422318157264 171.61033830881752
		415.85043914267783 7.1599111830076705 170.12594228386627
		425.9382060240381 6.2813928701798902 168.62121670507946
		436.02069506535327 5.4036109959099354 167.08229057663334
		446.098226894086 4.5265410971775504 165.50867878034518
		456.15707079349056 3.6520341787476149 163.81960894879569
		466.16848702565858 2.7838971454376504 161.85453964663714
		476.08499218266934 1.9275998746621572 159.45185328080066
		485.85858079616526 1.0882516201524233 156.50133928451396
		495.9520037100815 1.3918596297075512 152.83153099552737
		505.01431718897618 1.4156103854797149 148.00055813733127
		512.7868509944667 1.4359808518705561 141.16863315907085
		518.04438838474903 1.4497599477725496 132.22690613456831
		520.36040771937962 1.4558298337579023 122.14147885114306
		519.62918311685246 1.4539134205826501 111.80512188049858
		515.71113366200075 1.4436448908168056 102.21253060456576
		509.39818999755937 1.4270997576643536 94.068428190420889
		501.65603369534881 1.4068089054540471 87.317531646345685
		493.05855513059362 1.3842764015715154 81.731861102251855
		484.05686615160778 1.3606845321250671 76.849472535670259
		474.82390370275061 1.3364865349263311 72.422776002511512
		465.4811647232508 1.3120008324330379 68.237291209202908
		456.02698457548638 1.2872230619179779 64.308126411511466
		446.44928389679296 1.2621215654614373 60.687879491654655
		436.71572676755477 1.2366115962124882 57.507288393624208
		426.85509197163719 1.2107685783846716 54.751657157480054
		416.95302908056146 1.1848169846868526 52.155509659580957
		407.05135896908837 1.1588664203964179 49.556075038508709
		396.13725932073123 1.130262453448692 46.66889610749007
		383.92674973060582 1.0982608203324635 43.430116715135682
		369.7079023745049 1.0609956813920745 39.644505737022257
		357.58992253237 1.0292365527379248 36.385137387507484
		347.74566924750513 1.0034364680164387 33.574288222180485
		337.97787665122439 0.97783677353139375 30.506850763355487
		328.33374920996391 0.9525611840225503 27.064630622281015
		318.89006871116555 0.92781093127090264 23.101459871030329
		309.71896712140199 0.9037750606814049 18.539010700768983
		300.92521269660983 0.88072815172708152 13.278831116261699
		292.69444218269439 0.85915672620224148 7.1642755207062123
		285.45074602360773 0.84017225178928923 -0.13561590525296197
		279.9828157831214 0.82584175262663417 -8.882607341220762
		277.06624661424485 0.81819792942586578 -18.81924591894699
		277.13075390787276 0.81836699188216344 -29.141592140066336
		279.29830206638132 0.82404776060165574 -39.180324517464157
		282.70111670665051 0.83296594905841126 -48.844494222181936
		286.75167499095346 0.84358176154111142 -58.25230998285349
		291.33328613383014 0.85558937168954774 -67.40928883008371
		295.99365540311624 0.86780339326148881 -76.521446622808412
		300.72319671562479 1.0359388781507481 -85.60601628097686
		306.18030925240419 1.5444275274129717 -94.282786125391453
		311.9650399812524 2.2063836543495152 -102.73481245657138
		317.5122911960317 2.7817171608881046 -111.34213245953117
		322.35018969770499 3.3452131560351526 -120.76165496550436
		325.88472579710879 4.4948261219613244 -130.24436804846857
		328.25726529857604 5.3110557545583141 -140.0849160390311
		329.6936908114518 6.2753757590399424 -150.12492557428607
		330.13091058297368 7.662482103459106 -160.24708191397769
		329.74174633967971 9.2477438410310064 -170.36031821097151
		328.83703868150837 10.947801462748732 -180.49665536260679
		327.68011828963085 13.452331794307694 -188.44146333582529
		326.48553455419392 15.591117095551231 -196.26769435844247
		325.36001101120371 17.261064852192252 -204.23089531640659
		324.35278798033346 18.533535604588007 -212.4495815715089
		323.4400377830857 19.543368660668822 -220.91792952975962
		322.52737769706869 20.251632188901937 -229.51937594109776
		321.46734668451347 20.707153812389215 -238.09238145494382
		320.08771044240586 20.945702209845791 -246.49755241123137
		318.17123207010991 21.038612285161356 -254.64755101644826
		315.56397126877425 20.817065534767966 -262.55786250773826
		312.0011329822604 20.616778971278279 -270.10697280856658
		307.26657373568332 20.470231187241794 -276.97564622082933
		301.85898949035106 20.250072867341324 -283.30970917969393
		295.73830608035507 19.876099020629947 -288.98222976702959
		288.78364904660145 19.478192728020449 -293.61562638937181
		281.11494009067769 19.131901031208905 -296.93931679410122
		273.08808050190271 18.832767449623383 -299.19540910188539
		264.88023257067312 18.569038316661782 -300.68853318778815
		256.53175453558868 18.360010898411261 -301.06378498595512
		248.22499061019548 18.216387059435867 -300.19448443662094
		240.08299737602769 18.126183230585855 -298.36597550425716
		232.15066589154799 18.079757322416512 -295.78411669797543
		224.50144448288543 18.079131028242525 -292.44207877630606
		217.29935561245151 18.134285320978911 -288.21906704018585
		210.59060701539087 18.238674686739333 -283.26172718540215
		204.22832110503333 18.373064360672284 -277.87704847617516
		198.08028657829132 18.524841680665389 -272.25058850301423
		192.11900441675041 18.691057040753634 -266.42724154394733
		186.3467521663475 18.87123955309038 -260.41709841564841
		180.77697653300771 19.065783842393056 -254.21843580228418
		175.46805805563235 19.277885183454625 -247.79515726745458
		170.41048079035696 19.505965834036452 -241.1735539398689
		165.52334309670894 19.744409123654126 -234.42660037862589
		160.72854768510174 19.988338122430548 -227.61421756464998
		155.92822714400657 20.231938924516022 -220.80574899880025
		151.05405852027209 20.471149678651564 -214.04966371183974
		146.14337396921766 20.70815265058695 -207.32019536142607
		141.2190821055494 20.944335427895702 -200.60059700996374
		136.30804043733033 21.181319371916452 -193.87133946624951
		131.44658197112929 21.421289104378147 -187.1061727777446
		126.67020721072227 21.666315112585778 -180.28068570742212
		121.9974150384682 21.917376436010475 -173.38408612336121
		117.43045967586923 22.17448435563368 -166.41714466750426
		112.95933352615572 22.436955287605631 -159.38867204287575
		108.54610772489715 22.702618789409513 -152.32394465034153
		104.14786534832496 22.969103834576543 -145.24992463243524
		99.733793257321054 23.234718999451268 -138.18575946032314
		95.274670495154453 23.497856339090639 -131.14968291910108
		90.718803114946098 23.755589461607773 -124.17553174935858
		86.062848155023119 24.007616991305795 -117.26765919209868
		81.343509473131448 24.172596737300466 -110.40266436756193
		76.576882658547717 24.06182754539013 -103.53047997543774
		71.759411979725883 23.753377821773391 -96.580589316062913
		66.950999543972358 23.184837763260251 -89.545193294195826
		62.213762226125198 22.353954786279054 -82.460840123515766
		57.58491853592605 21.260679004242753 -75.399060782711956
		53.095801558786548 19.847861483642721 -68.428540884527422
		48.76029020761689 18.124545838979707 -61.586887062149628
		44.464666645525426 16.569923502664935 -54.715000615267911
		40.25257432739545 15.451446952286606 -47.749569195068972
		33.632191871684711 14.055290670256646 -38.527098011759449
		26.81663419939197 14.011526071040677 -28.541971044897423
		20.28024944099954 13.726364006982886 -19.55542405145826
		13.799955473589407 13.375651886121194 -10.681751932131988
		7.2424732152918239 14.283469396877885 -1.698120111458195
		0.51504666216078476 16.365750364841894 7.1888300603806101
		-6.7167537790189726 18.656275127383253 15.597685864160326
		-14.674513885596838 20.681081133052 23.291055081942147
		-23.385050974564791 22.127483339086112 30.188698793522008
		-32.391407316499027 22.730829566278576 36.859608240378805
		-41.602195845564466 23.413037027479366 43.281772403580703
		-51.132237536159749 23.957624467032371 49.232173971143879
		-61.082306175737102 24.035391918626189 54.448523566590666
		-71.292287768612766 24.035391918626189 59.121553816508026
		-81.516860414264642 24.035391918626189 63.762621291205733
		-91.484109437818546 24.035391918626189 68.94315145763585
		-101.19167122190433 24.035391918626189 74.58622348009709
		-110.79029456954061 24.035391918626189 80.411807192669755
		-120.23703001428132 24.035391918626189 86.48311221923359
		-129.40884072257532 24.035391918626189 92.964255249046971
		-138.2745326456326 24.035391918626189 99.859952724248387
		-146.68493169220713 24.035391918626189 107.30807925782898
		-154.54421650292588 24.035391918626189 115.33864584972656
		-161.75891694307009 24.031874279037236 123.95152968210704
		-168.60800264186301 24.04630546628195 132.86098238539654
		-175.2739297860185 24.136957455627268 141.91014481627275
		-181.93217580770661 24.257761146933692 150.95614319900068
		-188.74052246181881 24.358822769932114 159.88415114402136
		-195.59756485764294 24.461100785183323 168.77378770364118
		-202.44172094932432 24.563054930197659 177.67398804844191
		-209.18527149880859 24.662510470264568 186.65046778119012
		-215.89624134484049 24.761158897362758 195.6512256327681
		-222.72317753249584 24.862682550692256 204.56506707025318
		-229.76996306483673 24.969692076632839 213.30688078242002
		-237.17519854914681 25.085729378742212 221.75093639376547
		-245.13443256629083 25.215979032133959 229.68103307390794
		-253.70391364805491 25.362349276780954 236.94862774167467
		-262.9304762943334 25.526696903617214 243.37454543475639
		-272.85652320193515 25.711336544066221 248.66534541929133
		-283.47198009814258 25.917867526841231 252.44558804870502
		-294.60493064088337 26.144975771614103 254.23345663047479
		-305.90630123347989 26.387720686394829 253.52128713111114
		-316.54347963316877 26.632407474468447 249.49389650266158
		-325.43372487209797 26.85453553848976 242.47720312189011
		-332.69852262966344 27.049861913873148 233.88282988592226
		-338.74711069069656 27.223742415221487 224.39630750899261
		-343.57106687778764 27.374948277553585 214.23520200016395
		-347.13932340834572 27.501985229823667 203.5727522784826
		-349.82761577815029 27.611555848307972 192.66861086535727
		-352.07880585118858 27.712336081654019 181.66810491979123
		-354.14321200588427 27.809331282819095 170.63236402946694
		-356.12382043881689 27.904627599786959 159.58097872360389
		-358.19390430467149 28.001738672557661 148.54613962505078
		-360.3529997506746 28.100651858774413 137.52843087427078
		-362.39465207369415 28.197188435929199 126.4878871724996
		-364.2196599625496 28.289320398279294 115.40947522996504
		-365.90934670654633 28.378688876139599 104.30994917502352
		-367.59127419704578 28.467898103416083 93.209376824025412
		-369.31653728639412 28.557993950025701 82.115227715838046
		-371.20870064772237 28.651493566758752 71.048075463555392
		-373.32142088008993 28.749471228074214 60.020741724972368
		-375.62374972964597 28.85127788336894 49.031926059504258
		-378.02636498505956 28.955103715042846 38.064731450218289
		-380.48184909495944 29.059992207368801 27.109309078113256
		-383.07573220520464 29.167658922472931 16.18544706850787
		-385.86667295605173 29.279263554030663 5.3102128689238839
		-388.95422443800783 29.39676636575237 -5.4857865432086896
		-392.47013538580063 29.522707733188764 -16.150894218687654
		-396.56433227079617 29.659905526211016 -26.611204343561838
		-401.43545047994496 29.811938921907711 -36.736866674300245
		-407.20958717976112 29.980766363977118 -46.380480153009444
		-413.9164690675816 30.166336184915409 -55.400967842891191
		-421.54359454422854 30.367724469413542 -63.661796295787269
		-430.00643610984196 30.582639809213283 -71.059085934048653
		-439.22356398612919 30.80891909100577 -77.501943862534858
		-449.15230584297035 31.044643642918778 -82.780123765827625
		-459.54898189036862 31.285331893105706 -87.034126176069321
		-470.13311936562457 31.527505862544267 -90.773684358243372
		-480.79499922702701 31.770235142519596 -94.287296592164353
		-491.51536440938298 32.013310331762455 -97.61604902226378
		-502.29206330772661 32.256679529046046 -100.75862829021167
		-513.1265523851464 32.50028372271619 -103.69642403356801
		-524.03233990781109 32.744067640749321 -106.35874360210477
		-534.99803350551406 32.987861559361605 -108.76039820172412
		-546.00058196781424 33.23158202706513 -110.98520130136086
		-557.02067039449082 33.475241937637293 -113.12053485130963
		-568.03780070626101 33.718912136314785 -115.27097300463117
		-579.05793968269984 33.962571728867161 -117.40601898439371
		-590.09047785422831 34.206181958139567 -119.47646031204636
		-601.13920031630062 34.44970918745603 -121.45872941132296
		-612.20618685288844 34.693120432903058 -123.33687306932524
		-623.29085951292859 34.958115299112904 -125.09590921404066
		-634.38473600549628 35.228002891961381 -126.75871592610287
		-645.4933703933591 35.25801880963305 -128.37137378071321
		-656.60912100778046 35.134077381385396 -129.95808659417395
		-667.7250460728435 35.048518570796588 -131.53600276125422
		-678.84092671976828 34.962959493599499 -133.11427057058046
		-689.95594986695414 34.877396599270689 -134.69854464306866
		-701.06976104004605 34.791828284671887 -136.29132268390242
		-708.47801503386574 34.734778609356674 -137.35978718360025
		-712.18189502377709 34.706252690429778 -137.89573881711982
		;
createNode transform -n "positionMarker1" -p "Path_CurveShape";
	rename -uid "8BBE9C1F-4128-BD51-4D03-FFA9A93E6161";
createNode positionMarker -n "positionMarkerShape1" -p "positionMarker1";
	rename -uid "5977848A-4152-8489-15B8-5CA017A5C0D1";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".t" 1;
createNode transform -n "positionMarker2" -p "Path_CurveShape";
	rename -uid "E50762A7-4B8E-B134-1006-DA8EC9BBA85F";
createNode positionMarker -n "positionMarkerShape2" -p "positionMarker2";
	rename -uid "8FAC1CB0-4807-6374-6715-969003A4827A";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".lp" -type "double3" 1 0 0 ;
	setAttr ".t" 2880;
createNode transform -n "BikeTransform";
	rename -uid "DD8C64D2-415B-A4DE-49CF-0FAAEFE5E171";
	setAttr ".smd" 7;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "842FEAB1-48F7-D409-5AF1-148DDB1639A1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D4DC83E2-44D1-54AF-CC68-AB9BF7FB1CD4";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0685D335-4ECF-3778-4AF4-368CB7C566A3";
createNode displayLayerManager -n "layerManager";
	rename -uid "1AACD7F2-43CB-0C6E-1DC1-1CBCB388ED3E";
createNode displayLayer -n "defaultLayer";
	rename -uid "9C687BE4-44A7-832D-99AF-CC802E773280";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C05D9E60-4325-2EB4-6B53-40A2A5C1A187";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B67D9A8C-4F92-081E-6B6E-BBAE13A32645";
	setAttr ".g" yes;
createNode renderLayerManager -n "path_renderLayerManager";
	rename -uid "A228E76D-4CD2-EB26-2F0B-2888DFA311B0";
createNode renderLayer -n "path_defaultRenderLayer";
	rename -uid "263E9E5D-4A88-6274-71DD-D6AE2131E746";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B5E41804-4F7B-D9F5-B2EE-09A4E8C1A9C7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 651\n            -height 317\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 651\n            -height 362\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 651\n            -height 362\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1309\n            -height 723\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1309\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1309\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7F7EAD0B-443F-56C9-E8BD-258032AAED42";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 2880 -ast 1 -aet 2880 ";
	setAttr ".st" 6;
createNode lambert -n "industrial";
	rename -uid "F7C415E6-49C4-1F4D-AD0E-A98CBE76E7EE";
	setAttr ".c" -type "float3" 1 0.37800002 0.98998582 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "959B41A2-4543-690E-BD34-9EAA8080E763";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "8184EC1C-4946-8B99-6E88-D6829800E097";
createNode groupId -n "groupId2";
	rename -uid "5661A2CC-4B86-0403-293B-7E9242C847B8";
	setAttr ".ihi" 0;
createNode lambert -n "organic";
	rename -uid "9506D4C3-4D05-D964-DAF4-4A9E483B68E0";
	setAttr ".c" -type "float3" 0 0.41572797 0.77205884 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "34A7A18C-48AD-0736-945F-9F80E66C7749";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "4F41EC2D-4AF9-D4E7-D22B-908BDAD02AF5";
createNode lambert -n "mixed";
	rename -uid "75E7C57F-42D5-30B2-D965-848D7EF30470";
	setAttr ".c" -type "float3" 1 0.94117397 0.12199998 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "7C50B0CF-4094-315C-C7FA-1098E5CFD1C0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "FCBF29E0-4D2A-06E0-2643-9A942C0AEEA4";
createNode motionPath -n "motionPath1";
	rename -uid "8213F962-4278-A0C2-D33C-08B9FDFCBF17";
	setAttr -s 2 ".pmt";
	setAttr -s 2 ".pmt";
	setAttr ".f" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode animCurveTL -n "motionPath1_uValue";
	rename -uid "17E4795F-461B-FFE5-534F-F69D06D84DB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 2880 1;
createNode addDoubleLinear -n "addDoubleLinear1";
	rename -uid "843C7DED-453B-EE21-AD37-BAAD950E7BE0";
createNode addDoubleLinear -n "addDoubleLinear2";
	rename -uid "B8F18662-4AD8-4BFE-547E-ED8C2733A5BA";
createNode addDoubleLinear -n "addDoubleLinear3";
	rename -uid "65571042-49E6-A65C-1CAB-0BADCEC812B0";
select -ne :time1;
	setAttr ".o" 2846;
	setAttr ".unw" 2846;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
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
connectAttr "addDoubleLinear1.o" "BikeTransform.tx";
connectAttr "addDoubleLinear2.o" "BikeTransform.ty";
connectAttr "addDoubleLinear3.o" "BikeTransform.tz";
connectAttr "motionPath1.msg" "BikeTransform.sml";
connectAttr "motionPath1.rx" "BikeTransform.rx";
connectAttr "motionPath1.ry" "BikeTransform.ry";
connectAttr "motionPath1.rz" "BikeTransform.rz";
connectAttr "motionPath1.ro" "BikeTransform.ro";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "path_renderLayerManager.rlmi[0]" "path_defaultRenderLayer.rlid";
connectAttr "industrial.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "industrial.msg" "materialInfo1.m";
connectAttr "organic.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "organic.msg" "materialInfo2.m";
connectAttr "mixed.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "mixed.msg" "materialInfo3.m";
connectAttr "motionPath1_uValue.o" "motionPath1.u";
connectAttr "Path_CurveShape.ws" "motionPath1.gp";
connectAttr "positionMarkerShape1.t" "motionPath1.pmt[0]";
connectAttr "positionMarkerShape2.t" "motionPath1.pmt[1]";
connectAttr "BikeTransform.tmrx" "addDoubleLinear1.i1";
connectAttr "motionPath1.xc" "addDoubleLinear1.i2";
connectAttr "BikeTransform.tmry" "addDoubleLinear2.i1";
connectAttr "motionPath1.yc" "addDoubleLinear2.i2";
connectAttr "BikeTransform.tmrz" "addDoubleLinear3.i1";
connectAttr "motionPath1.zc" "addDoubleLinear3.i2";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "industrial.msg" ":defaultShaderList1.s" -na;
connectAttr "organic.msg" ":defaultShaderList1.s" -na;
connectAttr "mixed.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "path_defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of NullTransformPath.ma
