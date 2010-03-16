<map version="0.8.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#cc3300" CREATED="1267692092071" ID="Freemind_Link_1740199649" MODIFIED="1267724593646" TEXT="Models Grid">
<font ITALIC="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#000000" CREATED="1233751003143" ID="Freemind_Link_305402916" MODIFIED="1268737580903" POSITION="right" STYLE="bubble" TEXT="Component.Grid">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#000000" CREATED="1256810468669" ID="Freemind_Link_957671028" MODIFIED="1268737298434" TEXT="Horizontal.Grid">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#990099" CREATED="1268737370155" ID="_" MODIFIED="1268737401113" TEXT="HorizontalGridGeneralAttributes_">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1832686028" MODIFIED="1268749300598" TEXT="GridMnemonic">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Grid mnemonic commonly used to refer to the grid (eg. T42L26, ORCA1, OM3). Please, try to provide the same mnemonic as the one in CMOR &quot;source&quot; attribute.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1407036940" MODIFIED="1267723383687" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_874351839" MODIFIED="1268749344621" STYLE="bubble" TEXT="GridDiscretization">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]How the horizontal domain is discretized.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1182927049" MODIFIED="1267714174844" STYLE="fork" TEXT="logically rectangular">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node COLOR="#000000" CREATED="1233751977075" ID="Freemind_Link_1298521054" MODIFIED="1267714188455" STYLE="fork" TEXT="structured triangular">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node COLOR="#000000" CREATED="1233751977075" ID="Freemind_Link_1810861509" MODIFIED="1267714203423" STYLE="fork" TEXT="unstructured triangular">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node COLOR="#000000" CREATED="1233751977075" ID="Freemind_Link_1548024977" MODIFIED="1267714219452" STYLE="fork" TEXT="pixel-based catchment">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node COLOR="#000000" CREATED="1233751977075" ID="Freemind_Link_1762881050" MODIFIED="1267714232715" STYLE="fork" TEXT="unstructured polygonal">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node COLOR="#000000" CREATED="1233751977075" ID="Freemind_Link_583811260" MODIFIED="1253105355641" STYLE="fork" TEXT="other">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1268747246751" ID="Freemind_Link_670376346" MODIFIED="1268748001430" TEXT="if GridDiscretization is &quot;logically rectangular&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1233587048843" ID="Freemind_Link_826475234" MODIFIED="1268647620507" STYLE="bubble" TEXT="GridType">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Type of horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233330560635" ID="Freemind_Link_349927598" MODIFIED="1267713556929" STYLE="fork" TEXT="regular lat lon">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233330560635" ID="Freemind_Link_1483744398" MODIFIED="1268647380946" STYLE="fork" TEXT="spectral gaussian">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]&quot;spectral gaussian&quot; grid is the complete gaussian one (as opposed to &quot;reduced gaussian&quot;) corresponding to a given spectral decomposition.[/definition]</text>
</hook>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233330560635" ID="Freemind_Link_507546984" MODIFIED="1267713570088" STYLE="fork" TEXT="tripolar">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233330560635" ID="Freemind_Link_1821994551" MODIFIED="1267713612826" STYLE="fork" TEXT="displaced pole">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
</node>
<node COLOR="#000000" CREATED="1233270123274" ID="Freemind_Link_288419204" MODIFIED="1253869004853" STYLE="fork" TEXT="other">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1253713965343" ID="Freemind_Link_523781470" MODIFIED="1267722013132" TEXT="if GridType is &quot;displaced pole&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1525906303" MODIFIED="1267721933595" TEXT="NorthPoleLat">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Latitude of the north pole.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_763195307" MODIFIED="1267721903198" STYLE="fork" TEXT="degrees">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1221935886" MODIFIED="1267721954647" TEXT="NorthPoleLon">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Longitude of the north pole.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1837517867" MODIFIED="1267721903198" STYLE="fork" TEXT="degrees">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ff0033" CREATED="1268738273792" ID="Freemind_Link_731288763" MODIFIED="1268751105602" STYLE="fork" TEXT="MariePierre: and what about rotated pole?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1268747246751" ID="Freemind_Link_273812155" MODIFIED="1268748007202" TEXT="if GridDiscretization is not &quot;logically rectangular&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1233587048843" ID="Freemind_Link_1178935152" MODIFIED="1268647620507" STYLE="bubble" TEXT="GridType">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Type of horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233330560635" ID="Freemind_Link_361423170" MODIFIED="1254218480555" STYLE="fork" TEXT="reduced gaussian">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233330560635" ID="Freemind_Link_890090219" MODIFIED="1267713603274" STYLE="fork" TEXT="cubed sphere">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233330560635" ID="Freemind_Link_539501535" MODIFIED="1268671751192" STYLE="fork" TEXT="icosahedral geodesic">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233330560635" ID="Freemind_Link_1390631201" MODIFIED="1267713667766" STYLE="fork" TEXT="ying yang">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
</node>
<node COLOR="#000000" CREATED="1233270123274" ID="Freemind_Link_1077667486" MODIFIED="1253869004853" STYLE="fork" TEXT="other">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node BACKGROUND_COLOR="#ff0033" CREATED="1268738273792" ID="Freemind_Link_1076177112" MODIFIED="1268749130441" STYLE="fork" TEXT="MariePierre: not sure this condition is satisfying...">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
</node>
<node BACKGROUND_COLOR="#ff0033" CREATED="1268738273792" ID="Freemind_Link_1935783190" MODIFIED="1268750023844" STYLE="fork" TEXT="MariePierre: probably some bridges missing between GridType and GridDiscretization....">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1475026673" MODIFIED="1267721766940" TEXT="PoleSingularityTreatment">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Method used to deal with the pole singularities.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1118974934" MODIFIED="1253869568028" STYLE="fork" TEXT="filter">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_766130816" MODIFIED="1253869568043" STYLE="fork" TEXT="pole rotation">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1504021088" MODIFIED="1253869568043" STYLE="fork" TEXT="artificial island">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1658575277" MODIFIED="1253869568028" STYLE="fork" TEXT="none">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node COLOR="#990099" CREATED="1256740460367" ID="Freemind_Link_856779817" MODIFIED="1268751377049" TEXT="GridResolution">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1256740460367" ID="Freemind_Link_685844409" MODIFIED="1268751311662" TEXT="GridSpacing">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Provide information about the resolution by giving, if relevant, details about typical grid spacing is some particular locations of the Earth sphere&#xa;(using the format &quot;global: deg_lon0 x deg_lat0; location1: deg_lon1 x deg_lat1; location2: deg_lon2 x deg_lat2&quot;).[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1084948022" MODIFIED="1268734071297" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node COLOR="#996600" CREATED="1256740460367" ID="Freemind_Link_1556378656" MODIFIED="1268751315905" TEXT="NumberOfGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Provide information about the resolution by giving, if relevant, details about the number of grid cells&#xa;(using the format &quot;Nx x Ny or Ntot&quot;).[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_800220455" MODIFIED="1268734071297" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="pencil"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffff00" CREATED="1244812604050" ID="Freemind_Link_515101595" MODIFIED="1268749116385" STYLE="fork" TEXT="Balaji: MeanZonalResolution, ResolutionAtEquator, etc. are meaningless...">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="idea"/>
</node>
</node>
<node COLOR="#990099" CREATED="1268737370155" ID="Freemind_Link_1548830267" MODIFIED="1268749189908" TEXT="GridExtent_">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_131962856" MODIFIED="1268730841136" TEXT="LatMin">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Southern boundary of the geographical domain.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_33609826" MODIFIED="1257037352157" STYLE="fork" TEXT="degN">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_978370769" MODIFIED="1268730841136" TEXT="LatMax">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Northern boundary of the geographical domain.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1144380272" MODIFIED="1257037352157" STYLE="fork" TEXT="degN">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_823341833" MODIFIED="1268730841136" TEXT="LonMin">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Western boundary of the geographical domain.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1297746569" MODIFIED="1257037384464" STYLE="fork" TEXT="degE">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_600779154" MODIFIED="1268730841136" TEXT="LonMax">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Eastern boundary of the geographical domain.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1730088724" MODIFIED="1257037384464" STYLE="fork" TEXT="degE">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ff0033" COLOR="#990099" CREATED="1268737370155" FOLDED="true" ID="Freemind_Link_31000392" MODIFIED="1268751363095" TEXT="GridCells_">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
<node COLOR="#0033ff" CREATED="1253713965343" ID="Freemind_Link_232861084" MODIFIED="1268734916099" TEXT="if GridType is &quot;regular lat lon&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_556794718" MODIFIED="1268733775551" STYLE="bubble" TEXT="NumberOfZonalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of zonal grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1401204699" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1193055674" MODIFIED="1268733780277" STYLE="bubble" TEXT="NumberOfMeridionalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of Meridional grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1563646806" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1253713965343" ID="Freemind_Link_1297668022" MODIFIED="1268647666847" TEXT="if GridType is &quot;spectral gaussian&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_545109956" MODIFIED="1267718475445" STYLE="bubble" TEXT="SpectralTruncatureNumber">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Triangular truncature number of the horizontal discretization scheme.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1598025020" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_857189713" MODIFIED="1268733775551" STYLE="bubble" TEXT="NumberOfZonalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of zonal grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1467641212" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1875785258" MODIFIED="1268733780277" STYLE="bubble" TEXT="NumberOfMeridionalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of Meridional grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1063814492" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1253713965343" ID="Freemind_Link_831225471" MODIFIED="1268735218178" TEXT="if GridType is &quot;reduced gaussian&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1008543692" MODIFIED="1268733775551" STYLE="bubble" TEXT="NumberOfZonalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of zonal grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1142783357" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_742334368" MODIFIED="1268735299906" STYLE="bubble" TEXT="NumberOfTotalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of total grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1082282377" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1253713965343" ID="Freemind_Link_1661871062" MODIFIED="1268749886174" TEXT="if GridType is &quot;tripolar&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1847873140" MODIFIED="1268735299906" STYLE="bubble" TEXT="NumberOfTotalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of total grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1531820356" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1294184293" MODIFIED="1268749749589" TEXT="FirstNorthPoleLat">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Latitude of the north pole.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1632207506" MODIFIED="1267721903198" STYLE="fork" TEXT="degrees">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_622767427" MODIFIED="1268749765703" TEXT="FirstNorthPoleLon">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Longitude of the north pole.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_699350197" MODIFIED="1267721903198" STYLE="fork" TEXT="degrees">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1148518629" MODIFIED="1268749780063" TEXT="SecondNorthPoleLat">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Latitude of the north pole.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1775064774" MODIFIED="1267721903198" STYLE="fork" TEXT="degrees">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1976715927" MODIFIED="1268749786997" TEXT="SecondNorthPoleLon">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Longitude of the north pole.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_199910039" MODIFIED="1267721903198" STYLE="fork" TEXT="degrees">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1253713965343" ID="Freemind_Link_252819842" MODIFIED="1267722013132" TEXT="if GridType is &quot;displaced pole&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1663535418" MODIFIED="1267721933595" TEXT="NorthPoleLat">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Latitude of the north pole.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1940916691" MODIFIED="1267721903198" STYLE="fork" TEXT="degrees">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_295257559" MODIFIED="1267721954647" TEXT="NorthPoleLon">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Longitude of the north pole.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1934648605" MODIFIED="1267721903198" STYLE="fork" TEXT="degrees">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1735202524" MODIFIED="1268733775551" STYLE="bubble" TEXT="NumberOfZonalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of zonal grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_989354279" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_19764232" MODIFIED="1268733780277" STYLE="bubble" TEXT="NumberOfMeridionalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of Meridional grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1664916335" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1253713965343" ID="Freemind_Link_969431105" MODIFIED="1268749886174" TEXT="if GridType is &quot;cube sphere&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1647399854" MODIFIED="1268749496549" STYLE="bubble" TEXT="NumberOfZonalGridCellsOnCubeFace">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of zonal grid cells on each face of the cube.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1649764188" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1735664820" MODIFIED="1268749506323" STYLE="bubble" TEXT="NumberOfFaceMeridionalGridCellsOnCubeFace">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of Meridional grid cells on each face of the cube.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_37492950" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1253713965343" ID="Freemind_Link_1892415397" MODIFIED="1268749886174" TEXT="if GridType is &quot;isocahedral geodesic&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_696932597" MODIFIED="1268735299906" STYLE="bubble" TEXT="NumberOfTotalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of total grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1811199058" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1253713965343" ID="Freemind_Link_618902250" MODIFIED="1268749886174" TEXT="if GridType is &quot;ying yang&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_123047802" MODIFIED="1268735625065" STYLE="bubble" TEXT="NumberOfYingZonalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of zonal grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1312767274" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_787171900" MODIFIED="1268737049200" STYLE="bubble" TEXT="NumberOfYingMeridionalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of Meridional grid cells on each face of the cube.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1043357269" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_114668773" MODIFIED="1268735636312" STYLE="bubble" TEXT="NumberOfYangZonalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of zonal grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_830258673" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_367667899" MODIFIED="1268735641031" STYLE="bubble" TEXT="NumberOfYangMeridionalGridCells">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of Meridional grid cells of the horizontal grid.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_291341424" MODIFIED="1244564007398" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ff0033" CREATED="1268738273792" ID="Freemind_Link_320363121" MODIFIED="1268749147117" STYLE="fork" TEXT="MariePierre: is it useful to go in such detailed structure?">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
</node>
<node BACKGROUND_COLOR="#ff0033" CREATED="1268738273792" ID="Freemind_Link_204188202" MODIFIED="1268749930689" STYLE="fork" TEXT="MariePierre: not sure all of this is correct....">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
</node>
<node COLOR="#000000" CREATED="1233750994232" ID="Freemind_Link_1172504540" MODIFIED="1268739049441" STYLE="bubble" TEXT="VerticalGrid_">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node COLOR="#990099" CREATED="1268737370155" ID="Freemind_Link_954160404" MODIFIED="1268750239764" TEXT="VerticalCoordinateSystem_">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233751003143" ID="Freemind_Link_1766550583" MODIFIED="1268750244639" STYLE="bubble" TEXT="VerticalCoordinateType">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]vertical coordinate system.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233330589779" ID="Freemind_Link_886076062" MODIFIED="1268387699436" STYLE="fork" TEXT="space-based">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1240319809200" ID="Freemind_Link_1703562175" MODIFIED="1267725478314" STYLE="fork" TEXT="mass-based">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1240319766674" ID="Freemind_Link_1088857184" MODIFIED="1267725486013" STYLE="fork" TEXT="hybrid">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233330589779" ID="Freemind_Link_1066362453" MODIFIED="1267725499421" STYLE="fork" TEXT="terrain-following">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node COLOR="#000000" CREATED="1233270123274" ID="Freemind_Link_961551059" MODIFIED="1253868886792" STYLE="fork" TEXT="other">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1255360198907" ID="Freemind_Link_930426551" MODIFIED="1267725865951" TEXT="if VerticalCoordinateType is &quot;terrain-following&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#996600" CREATED="1233270123274" ID="Freemind_Link_1865623324" MODIFIED="1268731170725" STYLE="bubble" TEXT="ReferenceSurface">
<font NAME="Arial" SIZE="15"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Which is the surface taken as reference for terrain-following vertical corrdinate?[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233270123274" ID="Freemind_Link_1230307887" MODIFIED="1268731110821" STYLE="fork" TEXT="">
<font NAME="Arial" SIZE="15"/>
<icon BUILTIN="pencil"/>
</node>
</node>
</node>
<node COLOR="#996600" CREATED="1254225995108" ID="Freemind_Link_1066699992" MODIFIED="1268750249311" TEXT="VerticalCoordinate">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Usual name for the vertical coordinate used (eg. isentropic, sigma, hybrid, etc.).[/definition]</text>
</hook>
<node CREATED="1254226011363" ID="Freemind_Link_823579071" MODIFIED="1268739221630" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="pencil"/>
</node>
<node BACKGROUND_COLOR="#ffff33" CREATED="1244812604050" ID="Freemind_Link_1572962773" MODIFIED="1268739592784" STYLE="fork" TEXT="Balaji: no one can manage a CV list for vertical coordinate... ">
<font ITALIC="true" NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="idea"/>
</node>
</node>
<node COLOR="#996600" CREATED="1254225995108" ID="Freemind_Link_798296331" MODIFIED="1263575376117" TEXT="PartialSteps">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Does the model use partial steps at bottom or not.[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1254226011363" ID="Freemind_Link_516310548" MODIFIED="1258728796317" STYLE="fork" TEXT="yes">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1254226011363" ID="Freemind_Link_723190158" MODIFIED="1254226036128" STYLE="fork" TEXT="no">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node COLOR="#990099" CREATED="1268737370155" ID="Freemind_Link_1562143252" MODIFIED="1268739103870" TEXT="VerticalLevels_">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1307287703" MODIFIED="1258122864897" STYLE="bubble" TEXT="NumberOfLevels">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Total number of vertical levels.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_147995969" MODIFIED="1256812322078" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1256650877395" ID="Freemind_Link_988557356" MODIFIED="1267692466158" STYLE="bubble" TEXT="if ModelComponentType is &quot;Atmosphere&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1379456164" MODIFIED="1257329354130" TEXT="TopModelLevel">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Level at top of the atmosphere.[/definition]&#xa;</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_182343156" MODIFIED="1257038248580" STYLE="fork" TEXT="hPa">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_1700087151" MODIFIED="1256812372684" TEXT="NumberOfLevelsBellow850hPa">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of vertical levels bellow 850 hPa.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1111637724" MODIFIED="1256812397215" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_995947235" MODIFIED="1256812360828" TEXT="NumberOfLevelsAbove200hPa">
<font NAME="SansSerif" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of vertical levels above 200 hPa.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_104791940" MODIFIED="1256812322078" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1256650877395" ID="Freemind_Link_38359954" MODIFIED="1267725186625" STYLE="bubble" TEXT="if ModelComponentType is &quot;Ocean&quot;">
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="1233752067356" ID="Freemind_Link_314365752" MODIFIED="1258731030946" TEXT="NumberOfLevelsInUpper100m">
<font NAME="Arial" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Number of vertical levels in the upper 100 meters.[/definition]</text>
</hook>
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1233848466968" ID="Freemind_Link_1769112105" MODIFIED="1256812397215" STYLE="fork" TEXT="">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233250004110" ID="Freemind_Link_1252154617" MODIFIED="1258731039619" STYLE="bubble" TEXT="UpperLevel">
<font NAME="Arial" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Upper level.[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233250230686" ID="Freemind_Link_1910902026" MODIFIED="1257037434758" STYLE="fork" TEXT="meters">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
<node COLOR="#996600" CREATED="1233250004110" ID="Freemind_Link_455921828" MODIFIED="1258731049042" STYLE="bubble" TEXT="LowerLevel">
<font NAME="Arial" SIZE="14"/>
<hook NAME="accessories/plugins/NodeNote.properties">
<text>[definition]Lower level.[/definition]</text>
</hook>
<node COLOR="#000000" CREATED="1233250230686" ID="Freemind_Link_690806304" MODIFIED="1257037434758" STYLE="fork" TEXT="meters">
<font NAME="Arial" SIZE="14"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
