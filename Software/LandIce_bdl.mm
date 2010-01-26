<map version="0.8.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1233138660368" ID="Freemind_Link_1634648506" MODIFIED="1236852828238" STYLE="fork" TEXT="            Land Ice&#xa;   model component&#xa;        description&#xa;Controlled Vocabulary">
<edge WIDTH="2"/>
<font ITALIC="true" NAME="Arial" SIZE="15"/>
<hook NAME="accessories/plugins/CreationModificationPlugin_new.properties"/>
<node BACKGROUND_COLOR="#ffffff" CREATED="1233138750223" ID="Freemind_Link_1365872418" MODIFIED="1256685761483" POSITION="right" STYLE="bubble" TEXT="LandIce">
<edge COLOR="#999999"/>
<font BOLD="true" NAME="Arial" SIZE="16"/>
<node CREATED="1256246460197" ID="Freemind_Link_1866858245" MODIFIED="1259583356125" TEXT="LandIceKeyProperties_">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#990099" CREATED="1256249630445" ID="Freemind_Link_1822873806" MODIFIED="1257331015812" TEXT="LandIceKeyPropertiesAttributes_">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1233141022285" ID="Freemind_Link_599221753" MODIFIED="1257331919258" STYLE="bubble" TEXT="BasicApproximations">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<node COLOR="#338800" CREATED="1253871314332" ID="Freemind_Link_662019962" MODIFIED="1257331466880" STYLE="fork" TEXT="To fill-in this part, please go to the Model-Numerics part of each LandIce sub-components">
<edge WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233751261777" ID="Freemind_Link_1153520910" MODIFIED="1264502760587" STYLE="bubble" TEXT="TimeSteppingFramework">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<node COLOR="#338800" CREATED="1253871314332" ID="Freemind_Link_1386433205" MODIFIED="1257331466880" STYLE="fork" TEXT="To fill-in this part, please go to the Model-Numerics part of each LandIce sub-components">
<edge WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233751261777" ID="Freemind_Link_967191283" MODIFIED="1264502760603" STYLE="bubble" TEXT="ListOfPrognosticVariables">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<node COLOR="#338800" CREATED="1253871314332" ID="Freemind_Link_453290184" MODIFIED="1264442550186" STYLE="fork" TEXT="To fill-in this part, please go to the SnowTreatment  part of each LandIce sub-component">
<edge WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#996600" CREATED="1247228783195" ID="Freemind_Link_866012051" MODIFIED="1259580188921" TEXT="CouplingIceSheet-IceShelves">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Method by which ice sheets are coupled to ice shelves[/definition]</text>
</hook>
<node CREATED="1247228798707" ID="Freemind_Link_447276852" MODIFIED="1247738756914" STYLE="fork" TEXT="grounding line interactive">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247228837131" ID="Freemind_Link_71478561" MODIFIED="1247738756930" STYLE="fork" TEXT="grounding line prescribed">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1256246544508" ID="Freemind_Link_845164562" MODIFIED="1256249947656" TEXT="if CouplingIceSheet-IceShelves is &quot;grounding line interactive&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1247228851323" ID="Freemind_Link_805399726" MODIFIED="1259580417640" STYLE="bubble" TEXT="GroundingLineMethod">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Specify the technique used for modelling the grounding line [/definition]</text>
</hook>
<node CREATED="1247235077549" ID="Freemind_Link_1624878517" MODIFIED="1247738782553" STYLE="fork" TEXT="flux prescribed (Schoof)">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247235100063" ID="Freemind_Link_651985794" MODIFIED="1247738782553" STYLE="fork" TEXT="fixed grid size">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247235243951" ID="Freemind_Link_1479798628" MODIFIED="1247738782553" STYLE="fork" TEXT="moving grid">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1233668186242" ID="Freemind_Link_1887745984" MODIFIED="1259581403437" TEXT="LandIceAlbedo">
<font NAME="Arial" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[description]Specify how land ice albedo is modelled[/description]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" CREATED="1233673169895" ID="Freemind_Link_1832198821" MODIFIED="1253540120059" STYLE="fork" TEXT="prognostic">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node BACKGROUND_COLOR="#ffffff" CREATED="1233673169895" ID="Freemind_Link_1015543708" MODIFIED="1253540113723" STYLE="fork" TEXT="prescribed">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1256246544508" ID="Freemind_Link_51517757" MODIFIED="1256246580550" TEXT="if LandIceAlbedo is &quot;prognostic&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1241019098143" ID="Freemind_Link_16168954" MODIFIED="1259581607046" STYLE="bubble" TEXT="AlbedoFunctionOf">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]List those values that land ice albedo is a function of[/definition]</text>
</hook>
<node CREATED="1241019140864" ID="Freemind_Link_1194526347" MODIFIED="1253540108490" STYLE="fork" TEXT="ice age">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1241019127791" ID="Freemind_Link_740766345" MODIFIED="1253540105050" STYLE="fork" TEXT="ice density">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1241019370994" ID="Freemind_Link_1187816517" MODIFIED="1253540100736" STYLE="fork" TEXT="other">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
</node>
<node COLOR="#000000" CREATED="1253796609575" ID="Freemind_Link_1291132512" MODIFIED="1257331524736" TEXT="LandIceSpaceConfiguration_">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<node COLOR="#990099" CREATED="1233751003143" ID="Freemind_Link_305402916" MODIFIED="1257336035312" STYLE="bubble" TEXT="Horizontal.Domain">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<node COLOR="#996600" CREATED="1257238915649" ID="Freemind_Link_62478766" MODIFIED="1257331550542" TEXT="GridConfig">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<node COLOR="#338800" CREATED="1253871314332" ID="Freemind_Link_1049598590" MODIFIED="1259582912093" STYLE="fork" TEXT="To fill-in this part, please go to the Model-Numerics part of each LandIce sub-components">
<edge WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#000000" CREATED="1233140079676" ID="Freemind_Link_1605446502" MODIFIED="1256744719733" TEXT="LandIce_Glaciers">
<font BOLD="true" NAME="Arial" SIZE="14"/>
<node COLOR="#990099" CREATED="1256249630445" ID="Freemind_Link_1377307689" MODIFIED="1257331247670" TEXT="LandIceGlaciersAttributes_">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1244817030315" ID="Freemind_Link_1415826518" MODIFIED="1259581874765" STYLE="bubble" TEXT="DynamicArealExtent">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Does the model include a dynamic glacier extent? [/definition]</text>
</hook>
<node CREATED="1244817096986" ID="Freemind_Link_1852577531" MODIFIED="1245945490574" STYLE="fork" TEXT="yes">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1244817100738" ID="Freemind_Link_1634878088" MODIFIED="1245945490577" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node COLOR="#990099" CREATED="1256302015731" ID="Freemind_Link_872280634" MODIFIED="1256684049776" TEXT="MassBalance">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1256302095650" ID="Freemind_Link_1397451600" MODIFIED="1259582271640" TEXT="AblationCalculation">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Type of scheme used to model glacier ablation [/definition]</text>
</hook>
<node CREATED="1256302056170" ID="Freemind_Link_606373266" MODIFIED="1256684038018" STYLE="fork" TEXT="Energy balance model">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1256302089962" ID="Freemind_Link_1792692065" MODIFIED="1256684038014" STYLE="fork" TEXT="PDD">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1256302127722" ID="Freemind_Link_1177747191" MODIFIED="1257331146019" TEXT="DowscalingTechnique">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]How the atmospheric variables are used in the mass balance calculations.[/definition]</text>
</hook>
<node CREATED="1256302196652" ID="Freemind_Link_1596279209" MODIFIED="1257331161518" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="pencil"/>
</node>
</node>
</node>
<node COLOR="#990099" CREATED="1233672453356" ID="Freemind_Link_278416186" MODIFIED="1256227315111" TEXT="SnowTreatment">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1233674595314" ID="Freemind_Link_151187708" MODIFIED="1259582399093" STYLE="bubble" TEXT="Method">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Is glacier snow treated in the same way as that in the land surface scheme?[/definition]</text>
</hook>
<node CREATED="1247764167545" ID="Freemind_Link_919149416" MODIFIED="1253699625834" STYLE="fork" TEXT="same as Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247764167545" ID="Freemind_Link_1989456308" MODIFIED="1253699621146" STYLE="fork" TEXT="different from Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1256228018145" ID="Freemind_Link_699528774" MODIFIED="1256230348656" TEXT="if Method is &quot;different from Snow in LandSurface&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1233672493362" ID="Freemind_Link_417797983" MODIFIED="1259582890406" TEXT="NumberOfSnowLayers">
<edge COLOR="#808080" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]How many glacier snow layers does the model treat?[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" CREATED="1233881613647" ID="Freemind_Link_1876700916" MODIFIED="1246370592264" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node COLOR="#996600" CREATED="1244816980268" ID="Freemind_Link_286412016" MODIFIED="1259584427453" STYLE="bubble" TEXT="Properties">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Description of processes affecting snow on glaciers[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_438344018" MODIFIED="1253539043267" STYLE="fork" TEXT="prognostic snow albedo">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674393965" ID="Freemind_Link_1485132359" MODIFIED="1253539049577" STYLE="fork" TEXT="prognostic snow density">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078503222" ID="Freemind_Link_1967764473" MODIFIED="1253539059663" STYLE="fork" TEXT="prognostic snow water equivalent">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078550560" ID="Freemind_Link_1309041760" MODIFIED="1253539130947" STYLE="fork" TEXT="prognostic snow heat content">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078960980" ID="Freemind_Link_1588334439" MODIFIED="1253539309512" STYLE="fork" TEXT="prognostic snow temperature">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078982017" ID="Freemind_Link_1308636598" MODIFIED="1253539321657" STYLE="fork" TEXT="prognostic snow liquid water content">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_815307715" MODIFIED="1253539000414" STYLE="fork" TEXT="snow melting">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_611295361" MODIFIED="1253539008315" STYLE="fork" TEXT="snow refreezing">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1824889289" MODIFIED="1253539026419" STYLE="fork" TEXT="blowing snow">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#000000" CREATED="1233140113119" ID="Freemind_Link_1346102588" MODIFIED="1256251327092" TEXT="Land_IceSheet">
<font BOLD="true" NAME="Arial" SIZE="14"/>
<node COLOR="#990099" CREATED="1256230690992" ID="Freemind_Link_311297643" MODIFIED="1257331259298" TEXT="LandIceSheetAttributes_">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<node COLOR="#996600" CREATED="1247228540986" ID="Freemind_Link_940817690" MODIFIED="1251985941181" TEXT="Surface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node COLOR="#990099" CREATED="1256302015731" ID="Freemind_Link_1220296504" MODIFIED="1256684049776" TEXT="MassBalance">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1256302095650" ID="Freemind_Link_208318100" MODIFIED="1259583452281" TEXT="AblationCalculation">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Type of scheme used to calculate ablation in the ice sheet mass balance[/definition]</text>
</hook>
<node CREATED="1256302056170" ID="Freemind_Link_717436896" MODIFIED="1256684038018" STYLE="fork" TEXT="Energy balance model">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1256302089962" ID="Freemind_Link_585231205" MODIFIED="1256684038014" STYLE="fork" TEXT="PDD">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1256302127722" ID="Freemind_Link_767371184" MODIFIED="1257332144079" TEXT="DowscalingTechnique">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]How the atmospheric variables are used in the mass balance calculations.[/definition]</text>
</hook>
<node CREATED="1256302196652" ID="Freemind_Link_402737846" MODIFIED="1257332150817" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="pencil"/>
</node>
</node>
</node>
<node COLOR="#000000" CREATED="1247228545977" ID="Freemind_Link_1783289180" MODIFIED="1257332973365" TEXT="IceSheet_Dynamics">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Dynamics deals with geometry changes.[/definition]</text>
</hook>
<node COLOR="#990099" CREATED="1256249630445" ID="Freemind_Link_1080538958" MODIFIED="1257331273509" TEXT="IceSheetDynamicsAttributes_">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1247228568530" ID="Freemind_Link_1025473179" MODIFIED="1257332541827" TEXT="CouplingWithAtmosphere">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Coupling method between land ice sheet and atmosphere.[/definition]</text>
</hook>
<node CREATED="1253699422706" ID="_" MODIFIED="1257332076965" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="pencil"/>
</node>
</node>
</node>
<node COLOR="#990099" CREATED="1247228584842" ID="Freemind_Link_1044406016" MODIFIED="1264523194015" TEXT="Model-Numerics">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1253870854444" ID="Freemind_Link_1713086568" MODIFIED="1264523234848" TEXT="TimeSteppingMethod">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="ksmiletris"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Time stepping framework for land ice sheet scheme (same as that of land surface model or different?).[/definition]</text>
</hook>
<node CREATED="1241016231102" ID="Freemind_Link_1926509417" MODIFIED="1264440404722" STYLE="fork" TEXT="use LandSurface time step">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1241016236735" ID="Freemind_Link_1065066455" MODIFIED="1257289568991" STYLE="fork" TEXT="specific time step">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1257289874444" ID="Freemind_Link_1371926739" MODIFIED="1264523257327" TEXT="if TimeSteppingMethod is &quot;specific time step&quot;">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="ksmiletris"/>
<node COLOR="#996600" CREATED="1253870854444" ID="Freemind_Link_558777249" MODIFIED="1264440462332" TEXT="TimeStep">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Timestep of the land ice sheet scheme.[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233270123274" ID="Freemind_Link_857353586" MODIFIED="1257289977239" STYLE="fork" TEXT="seconds">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1257238915649" ID="Freemind_Link_1291656339" MODIFIED="1259583558906" TEXT="GridConfig">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]How does the grid configuration for the land ice sheet compare to that used in the land surface scheme?[/definition]</text>
</hook>
<node CREATED="1241016231102" ID="Freemind_Link_369571002" MODIFIED="1257331632030" STYLE="fork" TEXT="same as LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1241016236735" ID="Freemind_Link_1996761881" MODIFIED="1264440752945" STYLE="fork" TEXT="specific">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1257238168276" ID="Freemind_Link_1143551240" MODIFIED="1264440771049" TEXT="if  GridConfig is &quot;specific&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1256740460367" ID="Freemind_Link_1489121474" MODIFIED="1257332297463" TEXT="MeanResolution">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Mean horizontal resolution of the land ice sheet model.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_540590316" MODIFIED="1257038155267" STYLE="fork" TEXT="degrees">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node COLOR="#996600" CREATED="1256254990298" ID="Freemind_Link_437978356" MODIFIED="1257332312195" TEXT="GridCharacteristics">
<font NAME="Arial" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Description of the horizontal grid used for land ice sheet.[/definition]</text>
</hook>
<node CREATED="1256255021042" ID="Freemind_Link_1717188073" MODIFIED="1257238682406" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="pencil"/>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1247234863613" ID="Freemind_Link_514144065" MODIFIED="1259583788875" TEXT="Approximation">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Approximation type used in modelling ice sheet dynamics[/definition]</text>
</hook>
<node CREATED="1247234917309" ID="Freemind_Link_62539330" MODIFIED="1247737914079" STYLE="fork" TEXT="shallow ice">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247234922301" ID="Freemind_Link_1851002749" MODIFIED="1247737864432" STYLE="fork" TEXT="higher order">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247234928749" ID="Freemind_Link_342950716" MODIFIED="1247737864432" STYLE="fork" TEXT="full stokes">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247234928749" ID="Freemind_Link_763636627" MODIFIED="1253114705010" STYLE="fork" TEXT="other">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1247235130878" ID="Freemind_Link_224178183" MODIFIED="1259583912234" TEXT="IceStreams">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Are ice streams modelled within the land ice model?[/definition]</text>
</hook>
<node CREATED="1253799670431" ID="Freemind_Link_1612421685" MODIFIED="1256228120184" STYLE="fork" TEXT="yes">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1253799676538" ID="Freemind_Link_1863296728" MODIFIED="1256228120189" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
</node>
<node COLOR="#990099" CREATED="1233672453356" ID="Freemind_Link_644422294" MODIFIED="1256230674335" TEXT="SnowTreatment">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1233674595314" ID="Freemind_Link_329650456" MODIFIED="1259584020843" STYLE="bubble" TEXT="Method">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]How does the treatment of land-ice snow compare with treatment in the land-surface model?[/definition]</text>
</hook>
<node CREATED="1247764167545" ID="Freemind_Link_271354862" MODIFIED="1253538950517" STYLE="fork" TEXT="same as Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247764167545" ID="Freemind_Link_1098655363" MODIFIED="1253538955330" STYLE="fork" TEXT="different from Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1256228018145" ID="Freemind_Link_165925229" MODIFIED="1256230348656" TEXT="if Method is &quot;different from Snow in LandSurface&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1233672493362" ID="Freemind_Link_1684762854" MODIFIED="1259584184984" TEXT="NumberOfSnowLayers">
<edge COLOR="#808080" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]How many snow layers are included in modelling land ice sheets?[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" CREATED="1233881613647" ID="Freemind_Link_1915188418" MODIFIED="1246370592264" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node COLOR="#996600" CREATED="1244816980268" ID="Freemind_Link_951136697" MODIFIED="1264502796031" STYLE="bubble" TEXT="Properties">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<icon BUILTIN="clanbomber"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Description of processes affecting snow on ice sheets[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1243481514" MODIFIED="1253539043267" STYLE="fork" TEXT="prognostic snow albedo">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674393965" ID="Freemind_Link_461748323" MODIFIED="1253539049577" STYLE="fork" TEXT="prognostic snow density">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078503222" ID="Freemind_Link_171693" MODIFIED="1253539059663" STYLE="fork" TEXT="prognostic snow water equivalent">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078550560" ID="Freemind_Link_1645820616" MODIFIED="1253539130947" STYLE="fork" TEXT="prognostic snow heat content">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078960980" ID="Freemind_Link_1046330696" MODIFIED="1253539309512" STYLE="fork" TEXT="prognostic snow temperature">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078982017" ID="Freemind_Link_1603795660" MODIFIED="1253539321657" STYLE="fork" TEXT="prognostic snow liquid water content">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1838610803" MODIFIED="1253539000414" STYLE="fork" TEXT="snow melting">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1097037845" MODIFIED="1253539008315" STYLE="fork" TEXT="snow refreezing">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1652824724" MODIFIED="1253539026419" STYLE="fork" TEXT="blowing snow">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node COLOR="#996600" CREATED="1244816980268" ID="Freemind_Link_773240082" MODIFIED="1264502800523" STYLE="bubble" TEXT="ListOfPrognosticVariables">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="ksmiletris"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Prognostic snow variables of the ice sheet scheme.[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1869092506" MODIFIED="1264441988956" STYLE="fork" TEXT="snow albedo">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674393965" ID="Freemind_Link_1301751161" MODIFIED="1264441992875" STYLE="fork" TEXT="snow density">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078503222" ID="Freemind_Link_868130479" MODIFIED="1264442000170" STYLE="fork" TEXT="snow water equivalent">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078550560" ID="Freemind_Link_1784251402" MODIFIED="1264442004010" STYLE="fork" TEXT="snow heat content">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078960980" ID="Freemind_Link_5908158" MODIFIED="1264442007195" STYLE="fork" TEXT="snow temperature">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078982017" ID="Freemind_Link_1651876868" MODIFIED="1264442011785" STYLE="fork" TEXT="snow liquid water content">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node COLOR="#996600" CREATED="1244816980268" ID="Freemind_Link_1734406234" MODIFIED="1264523774085" STYLE="bubble" TEXT="Processes">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="ksmiletris"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Describe the properties of snow in the model&apos;s ice sheet scheme[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1947754101" MODIFIED="1253539000414" STYLE="fork" TEXT="snow melting">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1888821307" MODIFIED="1253539008315" STYLE="fork" TEXT="snow refreezing">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1105575626" MODIFIED="1253539026419" STYLE="fork" TEXT="blowing snow">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#000000" CREATED="1233140117582" ID="Freemind_Link_755676416" MODIFIED="1256745184925" TEXT="Land_IceShelves">
<font BOLD="true" NAME="Arial" SIZE="14"/>
<node COLOR="#990099" CREATED="1256230690992" FOLDED="true" ID="Freemind_Link_107019229" MODIFIED="1256230720390" TEXT="IceShelves_Attributes">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1247228540986" ID="Freemind_Link_1761390604" MODIFIED="1251985941181" TEXT="Surface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
</node>
<node COLOR="#996600" CREATED="1247228610794" ID="Freemind_Link_1527468335" MODIFIED="1247738065016" TEXT="Bottom">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1247228744131" ID="Freemind_Link_556935683" MODIFIED="1247738119047" STYLE="fork" TEXT="basal melting">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247228744131" ID="Freemind_Link_46621467" MODIFIED="1251985959628" STYLE="fork" TEXT="other">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node COLOR="#990099" CREATED="1256302015731" FOLDED="true" ID="Freemind_Link_804419122" MODIFIED="1256684049776" TEXT="MassBalance">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1256302095650" ID="Freemind_Link_1740751261" MODIFIED="1259584597265" TEXT="AblationCalculation">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]type of scheme used to model ablation in ice shelves [/definition]</text>
</hook>
<node CREATED="1256302056170" ID="Freemind_Link_251821957" MODIFIED="1256684038018" STYLE="fork" TEXT="Energy balance model">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1256302089962" ID="Freemind_Link_1361190981" MODIFIED="1256684038014" STYLE="fork" TEXT="PDD">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1256302127722" ID="Freemind_Link_1983163047" MODIFIED="1257332174975" TEXT="DowscalingTechnique">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]How the atmospheric variables are used in the mass balance calculations.[/definition]</text>
</hook>
<node CREATED="1256302196652" ID="Freemind_Link_1522570702" MODIFIED="1257332182931" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="pencil"/>
</node>
</node>
</node>
<node COLOR="#000000" CREATED="1247228660170" ID="Freemind_Link_591851092" MODIFIED="1256745194165" TEXT="LandIceShelves_Dynamics">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#990099" CREATED="1256249630445" ID="Freemind_Link_1817547019" MODIFIED="1257332204480" TEXT="LandIceShelvesDynamicsAttributes_">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1247228568530" ID="Freemind_Link_879721196" MODIFIED="1257332504499" TEXT="CouplingWithOcean">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Coupling method between LandIceShelves and Ocean.[/definition]</text>
</hook>
<node CREATED="1253699422706" ID="Freemind_Link_1398668612" MODIFIED="1257332479556" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="pencil"/>
</node>
</node>
</node>
<node COLOR="#990099" CREATED="1247228699627" ID="Freemind_Link_1762314208" MODIFIED="1256250144051" TEXT="Model-Numerics">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1253870854444" ID="Freemind_Link_815428737" MODIFIED="1264523284424" TEXT="TimeSteppingMethod">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="ksmiletris"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Time stepping framework for land ice shelves scheme (same as that of land surface or ocean model or different?).[/definition]</text>
</hook>
<node CREATED="1241016231102" ID="Freemind_Link_1405927361" MODIFIED="1264440645071" STYLE="fork" TEXT="use Ocean time step">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1241016231102" ID="Freemind_Link_1343454364" MODIFIED="1264440404722" STYLE="fork" TEXT="use LandSurface time step">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1241016236735" ID="Freemind_Link_1230141618" MODIFIED="1257289568991" STYLE="fork" TEXT="specific time step">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1257289874444" ID="Freemind_Link_1078937592" MODIFIED="1264523314103" TEXT="if TimeSteppingMethod is &quot;specific time step&quot;">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="ksmiletris"/>
<node COLOR="#996600" CREATED="1253870854444" ID="Freemind_Link_11335539" MODIFIED="1264440614916" TEXT="TimeStep">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Timestep of the land ice shelves scheme.[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233270123274" ID="Freemind_Link_1031269073" MODIFIED="1257289977239" STYLE="fork" TEXT="seconds">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1257238915649" ID="Freemind_Link_212494961" MODIFIED="1264442402001" TEXT="GridConfig">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>Properties</text>
</hook>
<node CREATED="1241016231102" ID="Freemind_Link_1889472435" MODIFIED="1257332230477" STYLE="fork" TEXT="same as Ocean">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1241016231102" ID="Freemind_Link_1927379525" MODIFIED="1257332258131" STYLE="fork" TEXT="same as LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1241016236735" ID="Freemind_Link_1685306874" MODIFIED="1257332240611" STYLE="fork" TEXT="specific">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1257238168276" ID="Freemind_Link_321431932" MODIFIED="1257332267352" TEXT="if  GridConfig is &quot;specific&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1256740460367" ID="Freemind_Link_1899209925" MODIFIED="1257332340201" TEXT="MeanResolution">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Mean horizontal resolution of the land ice shelves model.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1745512928" MODIFIED="1257038155267" STYLE="fork" TEXT="degrees">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node COLOR="#996600" CREATED="1256254990298" ID="Freemind_Link_1182774134" MODIFIED="1257332443900" TEXT="GridCharacteristics">
<font NAME="Arial" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Description of the horizontal grid used for land ice shelves.[/definition]</text>
</hook>
<node CREATED="1256255021042" ID="Freemind_Link_159413979" MODIFIED="1257238682406" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="pencil"/>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1247235018253" ID="Freemind_Link_1157421607" MODIFIED="1259584756718" TEXT="Approximation">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Numerical approximation used in modelling ice shelf dynamics[/definition]</text>
</hook>
<node CREATED="1247235045087" ID="Freemind_Link_1954058912" MODIFIED="1247738131527" STYLE="fork" TEXT="shallow shelf">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247235050126" ID="Freemind_Link_1142098229" MODIFIED="1247738131527" STYLE="fork" TEXT="full stokes">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247228744131" ID="Freemind_Link_277036154" MODIFIED="1251985959628" STYLE="fork" TEXT="other">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
</node>
<node COLOR="#990099" CREATED="1233672453356" ID="Freemind_Link_297736349" MODIFIED="1256230774664" TEXT="SnowTreatment">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1233674595314" ID="Freemind_Link_164423952" MODIFIED="1259584847125" STYLE="bubble" TEXT="Method">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]How does the treatment of snow on ice shelves compare to treatment of snow in the land surface model?[/definition]</text>
</hook>
<node CREATED="1247764167545" ID="Freemind_Link_311464813" MODIFIED="1253540078655" STYLE="fork" TEXT="same as Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247764167545" ID="Freemind_Link_1085373514" MODIFIED="1253539379065" STYLE="fork" TEXT="different from Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1256228018145" ID="Freemind_Link_774864256" MODIFIED="1256230348656" TEXT="if Method is &quot;different from Snow in LandSurface&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1233672493362" ID="Freemind_Link_1269127896" MODIFIED="1259584875562" TEXT="NumberOfSnowLayers">
<edge COLOR="#808080" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]How many snow layers are modelled in the ice shelf scheme[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" CREATED="1233881613647" ID="Freemind_Link_391875082" MODIFIED="1246370592264" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node COLOR="#996600" CREATED="1244816980268" ID="Freemind_Link_1803301455" MODIFIED="1264502828978" STYLE="bubble" TEXT="Properties">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<icon BUILTIN="clanbomber"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Describe the properties of the model&apos;s ice shelf scheme[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1653732725" MODIFIED="1253539043267" STYLE="fork" TEXT="prognostic snow albedo">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674393965" ID="Freemind_Link_911770792" MODIFIED="1253539049577" STYLE="fork" TEXT="prognostic snow density">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078503222" ID="Freemind_Link_203386446" MODIFIED="1253539059663" STYLE="fork" TEXT="prognostic snow water equivalent">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078550560" ID="Freemind_Link_450292497" MODIFIED="1253539130947" STYLE="fork" TEXT="prognostic snow heat content">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078960980" ID="Freemind_Link_208173103" MODIFIED="1253539309512" STYLE="fork" TEXT="prognostic snow temperature">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078982017" ID="Freemind_Link_222594476" MODIFIED="1253539321657" STYLE="fork" TEXT="prognostic snow liquid water content">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1021161371" MODIFIED="1253539000414" STYLE="fork" TEXT="snow melting">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_935565875" MODIFIED="1253539008315" STYLE="fork" TEXT="snow refreezing">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1608514810" MODIFIED="1253539026419" STYLE="fork" TEXT="blowing snow">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node COLOR="#996600" CREATED="1244816980268" ID="Freemind_Link_748723231" MODIFIED="1264502835764" STYLE="bubble" TEXT="ListOfPrognosticVariables">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="ksmiletris"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Prognostic snow variables of the ice shelf scheme.[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_906245868" MODIFIED="1264441988956" STYLE="fork" TEXT="snow albedo">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674393965" ID="Freemind_Link_1501160977" MODIFIED="1264441992875" STYLE="fork" TEXT="snow density">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078503222" ID="Freemind_Link_1536115257" MODIFIED="1264442000170" STYLE="fork" TEXT="snow water equivalent">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078550560" ID="Freemind_Link_559273038" MODIFIED="1264442004010" STYLE="fork" TEXT="snow heat content">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078960980" ID="Freemind_Link_949445296" MODIFIED="1264442007195" STYLE="fork" TEXT="snow temperature">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1241078982017" ID="Freemind_Link_1929787297" MODIFIED="1264442011785" STYLE="fork" TEXT="snow liquid water content">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
<node COLOR="#996600" CREATED="1244816980268" ID="Freemind_Link_912621648" MODIFIED="1264523762377" STYLE="bubble" TEXT="Processes">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="ksmiletris"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Describe the properties of snow in the model&apos;s ice shelf scheme[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1303221581" MODIFIED="1253539000414" STYLE="fork" TEXT="snow melting">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_391418363" MODIFIED="1253539008315" STYLE="fork" TEXT="snow refreezing">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node COLOR="#000000" CREATED="1233674595314" ID="Freemind_Link_1364581100" MODIFIED="1253539026419" STYLE="fork" TEXT="blowing snow">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1242815104070" FOLDED="true" ID="Freemind_Link_188906600" MODIFIED="1242815343835" POSITION="left" STYLE="bubble" TEXT="version">
<font ITALIC="true" NAME="SansSerif" SIZE="15"/>
<node CREATED="1242815129537" ID="Freemind_Link_93957810" MODIFIED="1251985194557" STYLE="fork" TEXT="based on r813 (mariepierre, 2009-08-19) of LandIce.mm">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" CREATED="1233138750223" FOLDED="true" ID="Freemind_Link_833352170" MODIFIED="1245945496310" POSITION="left" STYLE="bubble" TEXT="LandIce">
<edge COLOR="#999999"/>
<font BOLD="true" NAME="Arial" SIZE="16"/>
<node COLOR="#000000" CREATED="1233140079676" FOLDED="true" ID="Freemind_Link_927009838" MODIFIED="1247737698465" TEXT="LandGlaciers">
<font BOLD="true" NAME="Arial" SIZE="14"/>
<node COLOR="#996600" CREATED="1244816980268" FOLDED="true" ID="Freemind_Link_1877186457" MODIFIED="1246001113365" STYLE="bubble" TEXT="SnowTreatment">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1244817096986" ID="Freemind_Link_1261953352" MODIFIED="1245945490574" STYLE="fork" TEXT="yes">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1244817100738" ID="Freemind_Link_694896165" MODIFIED="1245945490577" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1244817030315" FOLDED="true" ID="Freemind_Link_1299396075" MODIFIED="1246001122413" STYLE="bubble" TEXT="DynamicArealExtent">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1244817096986" ID="Freemind_Link_1670818407" MODIFIED="1245945490574" STYLE="fork" TEXT="yes">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1244817100738" ID="Freemind_Link_1278042306" MODIFIED="1245945490577" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node CREATED="1247738137658" ID="Freemind_Link_403909812" MODIFIED="1247738882587" STYLE="fork" TEXT="On abandonne ces 2 caracteristiques ? (introduites pas Malyshov/Balaji)">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
<icon BUILTIN="help"/>
</node>
<node COLOR="#990099" CREATED="1233672453356" FOLDED="true" ID="Freemind_Link_1645609877" MODIFIED="1247763816998" TEXT="SnowTreatment">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1247764167545" ID="Freemind_Link_1252540423" MODIFIED="1247764258446" STYLE="fork" TEXT="Same as Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247764167545" FOLDED="true" ID="Freemind_Link_1193267366" MODIFIED="1247764246707" STYLE="fork" TEXT="Different from Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_700666315" MODIFIED="1247764311134" STYLE="bubble" TEXT="PrognosticSnowAlbedo">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1113674132" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_204408159" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_1572418127" MODIFIED="1233917872204" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674733109" FOLDED="true" ID="Freemind_Link_180799723" MODIFIED="1233917930642" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node COLOR="#996600" CREATED="1233674485038" FOLDED="true" ID="Freemind_Link_264046895" MODIFIED="1243332881123" STYLE="bubble" TEXT="Type">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1241078652826" ID="Freemind_Link_1662740874" MODIFIED="1243332835181" STYLE="fork" TEXT="diagnostic">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1241078659214" ID="Freemind_Link_1103505750" MODIFIED="1243332835181" STYLE="fork" TEXT="constant">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1233674393965" FOLDED="true" ID="Freemind_Link_826134906" MODIFIED="1243343736014" STYLE="bubble" TEXT="PrognosticSnowDensity">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1902952209" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_916847291" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_995338009" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674800219" FOLDED="true" ID="Freemind_Link_1699370539" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node COLOR="#996600" CREATED="1233674485038" FOLDED="true" ID="Freemind_Link_1503816172" MODIFIED="1243332881123" STYLE="bubble" TEXT="Type">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1241078659214" ID="Freemind_Link_1729764746" MODIFIED="1243332814558" STYLE="fork" TEXT="constant">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1241078503222" ID="Freemind_Link_449582600" MODIFIED="1243343734010" STYLE="bubble" TEXT="PrognosticSnowWaterEquivalent">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#996600" CREATED="1241078550560" FOLDED="true" ID="Freemind_Link_444476272" MODIFIED="1243343732021" STYLE="bubble" TEXT="PrognosticSnowHeatContent">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1427971728" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1116411349" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_1942958591" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674553436" ID="Freemind_Link_1670102060" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1241078960980" FOLDED="true" ID="Freemind_Link_1506787336" MODIFIED="1243343729533" STYLE="bubble" TEXT="PrognosticSnowTemperature">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1112308906" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1636373613" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_202422879" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674553436" ID="Freemind_Link_1379773697" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1241078982017" FOLDED="true" ID="Freemind_Link_40303049" MODIFIED="1243343727138" STYLE="bubble" TEXT="PrognosticSnowLiquidWaterContent">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_626222919" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_17438176" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_547592894" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674553436" ID="Freemind_Link_951469666" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_823010528" MODIFIED="1247761207483" STYLE="bubble" TEXT="SnowMelting">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_455701852" MODIFIED="1233917930611" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1609783881" MODIFIED="1233917872157" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_484736875" MODIFIED="1233917872157" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674674656" ID="Freemind_Link_179742430" MODIFIED="1233917930611" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_663745706" MODIFIED="1247761229143" STYLE="bubble" TEXT="SnowRefreezing">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1946009269" MODIFIED="1233917930611" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1789029883" MODIFIED="1233917872157" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_152054600" MODIFIED="1233917872157" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674674656" ID="Freemind_Link_690361462" MODIFIED="1233917930611" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_1528001394" MODIFIED="1247761290085" STYLE="bubble" TEXT="BlowingSnow">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1246013784" MODIFIED="1233917930611" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_666258436" MODIFIED="1233917872157" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_324072322" MODIFIED="1233917872157" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674674656" ID="Freemind_Link_166043469" MODIFIED="1233917930611" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node CREATED="1247738137658" ID="Freemind_Link_1160919524" MODIFIED="1247764070217" STYLE="fork" TEXT="SnowTreatment rajout&#xe9; selon les conseils de Gerhard Krinner. Adaptation de LS_Snow. Suppression des SnowCoverFractions et de SnowInterception. Ok comme &#xe7;a?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node COLOR="#000000" CREATED="1233140113119" FOLDED="true" ID="Freemind_Link_615100109" MODIFIED="1247738671933" TEXT="LandIceSheet">
<font BOLD="true" NAME="Arial" SIZE="14"/>
<node COLOR="#996600" CREATED="1247228540986" FOLDED="true" ID="Freemind_Link_1135544622" MODIFIED="1247738491964" TEXT="Surface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
<node CREATED="1247738137658" ID="Freemind_Link_241040921" MODIFIED="1247738882587" STYLE="fork" TEXT="On attend de l&apos;info sur le tiling ?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
<icon BUILTIN="help"/>
</node>
</node>
<node COLOR="#990099" CREATED="1247228545977" FOLDED="true" ID="Freemind_Link_1636765982" MODIFIED="1247737962049" TEXT="Dynamics (geometry change)">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1247228568530" ID="Freemind_Link_648194807" MODIFIED="1247737925958" TEXT="CouplingMethod (with atmosphere)">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990099" CREATED="1247228584842" FOLDED="true" ID="Freemind_Link_6295509" MODIFIED="1247737940006" TEXT="Model/Numerics">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1247234856917" FOLDED="true" ID="Freemind_Link_809611955" MODIFIED="1247737946191" TEXT="GridSize">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1247738137658" ID="Freemind_Link_58174939" MODIFIED="1247738937436" STYLE="fork" TEXT="Covered by/link to gridSpec?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
</node>
</node>
<node COLOR="#996600" CREATED="1247234863613" FOLDED="true" ID="Freemind_Link_598069445" MODIFIED="1247737950645" TEXT="Approximation">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1247234917309" ID="Freemind_Link_1881129120" MODIFIED="1247737914079" STYLE="fork" TEXT="shallow ice">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247234922301" ID="Freemind_Link_198919961" MODIFIED="1247737864432" STYLE="fork" TEXT="higher order">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247234928749" ID="Freemind_Link_205194138" MODIFIED="1247737864432" STYLE="fork" TEXT="full stokes">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1247235130878" FOLDED="true" ID="Freemind_Link_1361320230" MODIFIED="1247737956955" TEXT="IceStreams">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1247738137658" ID="Freemind_Link_620779387" MODIFIED="1247738891853" STYLE="fork" TEXT="Qu&apos;attend-on ici comme r&#xe9;ponses ?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
<icon BUILTIN="help"/>
</node>
</node>
</node>
</node>
<node COLOR="#990099" CREATED="1233672453356" FOLDED="true" ID="Freemind_Link_1294523958" MODIFIED="1247763816998" TEXT="SnowTreatment">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1247764167545" ID="Freemind_Link_1440721346" MODIFIED="1247764258446" STYLE="fork" TEXT="Same as Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247764167545" FOLDED="true" ID="Freemind_Link_578640100" MODIFIED="1247764246707" STYLE="fork" TEXT="Different from Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_301668525" MODIFIED="1247764311134" STYLE="bubble" TEXT="PrognosticSnowAlbedo">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1891002032" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1110663102" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_560617168" MODIFIED="1233917872204" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674733109" FOLDED="true" ID="Freemind_Link_293562199" MODIFIED="1233917930642" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node COLOR="#996600" CREATED="1233674485038" FOLDED="true" ID="Freemind_Link_1404523887" MODIFIED="1243332881123" STYLE="bubble" TEXT="Type">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1241078652826" ID="Freemind_Link_21273869" MODIFIED="1243332835181" STYLE="fork" TEXT="diagnostic">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1241078659214" ID="Freemind_Link_1653026984" MODIFIED="1243332835181" STYLE="fork" TEXT="constant">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1233674393965" FOLDED="true" ID="Freemind_Link_1091753204" MODIFIED="1243343736014" STYLE="bubble" TEXT="PrognosticSnowDensity">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1459329312" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_872407976" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_1806377601" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674800219" FOLDED="true" ID="Freemind_Link_1739013726" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node COLOR="#996600" CREATED="1233674485038" FOLDED="true" ID="Freemind_Link_1096494779" MODIFIED="1243332881123" STYLE="bubble" TEXT="Type">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1241078659214" ID="Freemind_Link_1813566300" MODIFIED="1243332814558" STYLE="fork" TEXT="constant">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1241078503222" ID="Freemind_Link_573270613" MODIFIED="1243343734010" STYLE="bubble" TEXT="PrognosticSnowWaterEquivalent">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#996600" CREATED="1241078550560" FOLDED="true" ID="Freemind_Link_1405821439" MODIFIED="1243343732021" STYLE="bubble" TEXT="PrognosticSnowHeatContent">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_296319440" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1040545271" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_500693802" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674553436" ID="Freemind_Link_1063425597" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1241078960980" FOLDED="true" ID="Freemind_Link_769661911" MODIFIED="1243343729533" STYLE="bubble" TEXT="PrognosticSnowTemperature">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_28472382" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_725605628" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_817274874" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674553436" ID="Freemind_Link_1142894904" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1241078982017" FOLDED="true" ID="Freemind_Link_818266180" MODIFIED="1243343727138" STYLE="bubble" TEXT="PrognosticSnowLiquidWaterContent">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1568045607" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_118023106" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_1715003190" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674553436" ID="Freemind_Link_1597528238" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_1657086215" MODIFIED="1247761207483" STYLE="bubble" TEXT="SnowMelting">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_565653694" MODIFIED="1233917930611" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1438185885" MODIFIED="1233917872157" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_1254791340" MODIFIED="1233917872157" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674674656" ID="Freemind_Link_664060696" MODIFIED="1233917930611" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_970157580" MODIFIED="1247761229143" STYLE="bubble" TEXT="SnowRefreezing">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_134800630" MODIFIED="1233917930611" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1109152056" MODIFIED="1233917872157" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_1440654858" MODIFIED="1233917872157" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674674656" ID="Freemind_Link_37989232" MODIFIED="1233917930611" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_1913086842" MODIFIED="1247761290085" STYLE="bubble" TEXT="BlowingSnow">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_224666715" MODIFIED="1233917930611" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1075778967" MODIFIED="1233917872157" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_1381307437" MODIFIED="1233917872157" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674674656" ID="Freemind_Link_1253398792" MODIFIED="1233917930611" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node CREATED="1247738137658" ID="Freemind_Link_1631744356" MODIFIED="1247764070217" STYLE="fork" TEXT="SnowTreatment rajout&#xe9; selon les conseils de Gerhard Krinner. Adaptation de LS_Snow. Suppression des SnowCoverFractions et de SnowInterception. Ok comme &#xe7;a?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node COLOR="#000000" CREATED="1233140117582" FOLDED="true" ID="Freemind_Link_1018160447" MODIFIED="1247761870523" TEXT="IceShelves">
<font BOLD="true" NAME="Arial" SIZE="14"/>
<node COLOR="#996600" CREATED="1247228540986" FOLDED="true" ID="Freemind_Link_142660344" MODIFIED="1247738491964" TEXT="Surface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
<node CREATED="1247738137658" ID="Freemind_Link_1137746825" MODIFIED="1247738891853" STYLE="fork" TEXT="On attend de l&apos;info sur le tiling ?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
<icon BUILTIN="help"/>
</node>
</node>
<node COLOR="#996600" CREATED="1247228610794" FOLDED="true" ID="Freemind_Link_245913366" MODIFIED="1247738065016" TEXT="Bottom">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1247228744131" ID="Freemind_Link_515336866" MODIFIED="1247738119047" STYLE="fork" TEXT="basal melting">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247738137658" ID="Freemind_Link_675505319" MODIFIED="1247738891837" STYLE="fork" TEXT="Description du &quot;Bottom treatment&quot; ? ">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
<icon BUILTIN="help"/>
</node>
<node CREATED="1247738137658" ID="Freemind_Link_970714564" MODIFIED="1247738891837" STYLE="fork" TEXT="&quot;basal melting&quot; est bien une valeur possible pour &quot;Bottom&quot; et non un parametre &#xe0; valoriser ? peut-on proposer un choix alternatif &quot;Other&quot;?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
<icon BUILTIN="help"/>
</node>
</node>
<node COLOR="#990099" CREATED="1247228660170" FOLDED="true" ID="Freemind_Link_1803624622" MODIFIED="1247738111325" TEXT="Dynamics">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#990099" CREATED="1247228699627" FOLDED="true" ID="Freemind_Link_1070854493" MODIFIED="1247738517080" TEXT="Model/Numerics">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1247234988150" FOLDED="true" ID="Freemind_Link_802761394" MODIFIED="1247738509459" TEXT="GridSize">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1247738137658" ID="Freemind_Link_1303120471" MODIFIED="1247738937436" STYLE="fork" TEXT="Covered by/link to gridSpec?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
</node>
</node>
<node COLOR="#996600" CREATED="1247235018253" FOLDED="true" ID="Freemind_Link_1523887840" MODIFIED="1247738360908" TEXT="Approximation">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1247235045087" ID="Freemind_Link_837298491" MODIFIED="1247738131527" STYLE="fork" TEXT="shallow shelf">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247235050126" ID="Freemind_Link_1562975536" MODIFIED="1247738131527" STYLE="fork" TEXT="full stokes">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node COLOR="#990099" CREATED="1247228691243" ID="Freemind_Link_435138952" MODIFIED="1247738524154" TEXT="CouplingMethod (ocean)">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#990099" CREATED="1233672453356" FOLDED="true" ID="Freemind_Link_192562714" MODIFIED="1247763816998" TEXT="SnowTreatment">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1247764167545" ID="Freemind_Link_654220220" MODIFIED="1247764258446" STYLE="fork" TEXT="Same as Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247764167545" FOLDED="true" ID="Freemind_Link_156712443" MODIFIED="1247764246707" STYLE="fork" TEXT="Different from Snow in LandSurface">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_904699524" MODIFIED="1247764311134" STYLE="bubble" TEXT="PrognosticSnowAlbedo">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1563313193" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_663595203" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_358464677" MODIFIED="1233917872204" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674733109" FOLDED="true" ID="Freemind_Link_250525144" MODIFIED="1233917930642" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node COLOR="#996600" CREATED="1233674485038" FOLDED="true" ID="Freemind_Link_702842214" MODIFIED="1243332881123" STYLE="bubble" TEXT="Type">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1241078652826" ID="Freemind_Link_1092359280" MODIFIED="1243332835181" STYLE="fork" TEXT="diagnostic">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1241078659214" ID="Freemind_Link_1678910508" MODIFIED="1243332835181" STYLE="fork" TEXT="constant">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1233674393965" FOLDED="true" ID="Freemind_Link_821776763" MODIFIED="1243343736014" STYLE="bubble" TEXT="PrognosticSnowDensity">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_305812318" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_460935407" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_250076160" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674800219" FOLDED="true" ID="Freemind_Link_992805231" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node COLOR="#996600" CREATED="1233674485038" FOLDED="true" ID="Freemind_Link_596978040" MODIFIED="1243332881123" STYLE="bubble" TEXT="Type">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1241078659214" ID="Freemind_Link_1941964916" MODIFIED="1243332814558" STYLE="fork" TEXT="constant">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1241078503222" ID="Freemind_Link_1069466068" MODIFIED="1243343734010" STYLE="bubble" TEXT="PrognosticSnowWaterEquivalent">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#996600" CREATED="1241078550560" FOLDED="true" ID="Freemind_Link_688458065" MODIFIED="1243343732021" STYLE="bubble" TEXT="PrognosticSnowHeatContent">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_813992523" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_38846233" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_1201975077" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674553436" ID="Freemind_Link_619258798" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1241078960980" FOLDED="true" ID="Freemind_Link_1509751561" MODIFIED="1243343729533" STYLE="bubble" TEXT="PrognosticSnowTemperature">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_195732603" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1487594375" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_726017946" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674553436" ID="Freemind_Link_580218822" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1241078982017" FOLDED="true" ID="Freemind_Link_617877299" MODIFIED="1243343727138" STYLE="bubble" TEXT="PrognosticSnowLiquidWaterContent">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1241492102" MODIFIED="1233917930626" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_237937455" MODIFIED="1233917872189" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_1151682312" MODIFIED="1233917872189" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674553436" ID="Freemind_Link_1600143613" MODIFIED="1233917930626" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_1678772766" MODIFIED="1247761207483" STYLE="bubble" TEXT="SnowMelting">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1272675580" MODIFIED="1233917930611" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_302273916" MODIFIED="1233917872157" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_1720696595" MODIFIED="1233917872157" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674674656" ID="Freemind_Link_1412310466" MODIFIED="1233917930611" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_669526095" MODIFIED="1247761229143" STYLE="bubble" TEXT="SnowRefreezing">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1528015049" MODIFIED="1233917930611" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1771058461" MODIFIED="1233917872157" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_97963031" MODIFIED="1233917872157" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674674656" ID="Freemind_Link_1529250567" MODIFIED="1233917930611" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233674595314" FOLDED="true" ID="Freemind_Link_37816369" MODIFIED="1247761290085" STYLE="bubble" TEXT="BlowingSnow">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1233671047851" FOLDED="true" ID="Freemind_Link_1368099792" MODIFIED="1233917930611" STYLE="fork" TEXT="yes ">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1810490782" MODIFIED="1233917872157" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_777432098" MODIFIED="1233917872157" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233674674656" ID="Freemind_Link_467980379" MODIFIED="1233917930611" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node CREATED="1247738137658" ID="Freemind_Link_1569516382" MODIFIED="1247764070217" STYLE="fork" TEXT="SnowTreatment rajout&#xe9; selon les conseils de Gerhard Krinner. Adaptation de LS_Snow. Suppression des SnowCoverFractions et de SnowInterception. Ok comme &#xe7;a?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node COLOR="#000000" CREATED="1247228783195" FOLDED="true" ID="Freemind_Link_1544024157" MODIFIED="1247738695450" TEXT="Coupling IceSheet-IceShelves">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1247228798707" FOLDED="true" ID="Freemind_Link_10408261" MODIFIED="1247738756914" STYLE="fork" TEXT="grounding line interactive">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node COLOR="#996600" CREATED="1247228851323" FOLDED="true" ID="Freemind_Link_320211811" MODIFIED="1247738848992" STYLE="bubble" TEXT="Model/Numerics">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1247235077549" ID="Freemind_Link_1648698881" MODIFIED="1247738782553" STYLE="fork" TEXT="flux prescribed (Schoof)">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247235100063" ID="Freemind_Link_1116897755" MODIFIED="1247738782553" STYLE="fork" TEXT="fixed grid size">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1247235243951" ID="Freemind_Link_747925982" MODIFIED="1247738782553" STYLE="fork" TEXT="moving grid">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node CREATED="1247228837131" ID="Freemind_Link_5635123" MODIFIED="1247738756930" STYLE="fork" TEXT="grounding line prescribed">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233668186242" FOLDED="true" ID="Freemind_Link_1876467742" MODIFIED="1247763419588" TEXT="LandIceAlbedo">
<font NAME="Arial" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" CREATED="1233673169895" FOLDED="true" ID="Freemind_Link_568577498" MODIFIED="1247763539442" STYLE="fork" TEXT="Prognostic">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node COLOR="#996600" CREATED="1241019098143" FOLDED="true" ID="Freemind_Link_941063030" MODIFIED="1243343600209" STYLE="bubble" TEXT="FunctionOf">
<font NAME="SansSerif" SIZE="14"/>
<node CREATED="1241019140864" ID="Freemind_Link_1373938094" MODIFIED="1247763563310" STYLE="fork" TEXT="Ice age">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1241019127791" ID="Freemind_Link_1387244614" MODIFIED="1247763569558" STYLE="fork" TEXT="Ice density">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1241019370994" ID="Freemind_Link_515124809" MODIFIED="1243333597781" STYLE="fork" TEXT="Other">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1233246454929" ID="Freemind_Link_1657585509" MODIFIED="1233917605616" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_228124225" MODIFIED="1233917605616" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" CREATED="1233673169895" FOLDED="true" ID="Freemind_Link_1673980408" MODIFIED="1233934397571" STYLE="fork" TEXT="Prescribed">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
<node CREATED="1233246454929" ID="Freemind_Link_1780699002" MODIFIED="1233917605616" STYLE="fork" TEXT="[reference]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
<node COLOR="#000000" CREATED="1233245998934" ID="Freemind_Link_1215345216" MODIFIED="1233917605616" STYLE="fork" TEXT="[free-text description]">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_ok"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node CREATED="1247738137658" ID="Freemind_Link_1849724534" MODIFIED="1247763947187" STYLE="fork" TEXT="IceAlbedo rajout&#xe9; selon les conseils de Gerhard Krinner. Adaptation de LS_SnowAlbedo. Ok comme &#xe7;a.">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1234216711628" FOLDED="true" ID="Freemind_Link_171465" MODIFIED="1246525408009" POSITION="left" STYLE="bubble" TEXT="ComponentDomain">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990099" CREATED="1233750974551" ID="Freemind_Link_1436213409" MODIFIED="1237373705130" STYLE="bubble" TEXT="Space">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233751261777" ID="Freemind_Link_634660337" MODIFIED="1237373737734" STYLE="bubble" TEXT="TimeSteppingFramework">
<font NAME="SansSerif" SIZE="15"/>
</node>
<node CREATED="1247738137658" ID="Freemind_Link_1997025091" MODIFIED="1247738974875" STYLE="fork" TEXT="To be removed?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1233141186319" FOLDED="true" ID="Freemind_Link_1329790666" MODIFIED="1246525408019" POSITION="left" STYLE="bubble" TEXT="NumericalProperties">
<edge WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<node COLOR="#996600" CREATED="1233140619821" ID="Freemind_Link_161148183" MODIFIED="1233938843399" STYLE="bubble" TEXT="ModelFamily">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990099" CREATED="1233140905740" ID="Freemind_Link_1853170669" MODIFIED="1237373942055" STYLE="bubble" TEXT="Spatial Extent">
<font NAME="Arial" SIZE="14"/>
</node>
<node COLOR="#996600" CREATED="1233140744489" ID="Freemind_Link_915589743" MODIFIED="1233937748310" STYLE="bubble" TEXT="Nudged">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node CREATED="1247738137658" ID="Freemind_Link_1000349640" MODIFIED="1247738974875" STYLE="fork" TEXT="To be removed?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="help"/>
</node>
</node>
</node>
</map>
