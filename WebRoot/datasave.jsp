<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title id="ftitle">丹霞地貌信息系统</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<script type="text/javascript" src="js/jquery.i18n.properties-1.0.9.js"></script>
<link rel="stylesheet" type="text/css" href="maincss.css">
<noscript>
	<link rel="stylesheet" href="css/skel-noscript.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-wide.css" />
</noscript>
<!--[if lte IE 9]><link rel="stylesheet" href="css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie8.css" /><![endif]-->
<script type="text/javascript">
    
	$(document).ready(function() {			
	var filename='IndexStrings';
    <% String lang = (String)session.getAttribute("language");
    if (null == lang) {
    	lang = "zh_CN";
    } 
    %>
    jQuery.i18n.properties({
     name:filename,
     path:'',
     mode:'map',
     language: '<%=lang%>',
     callback:function(){
        //alert("1");
        $('#ftitle').text($.i18n.prop('D_title'));
        $('#feditor').text($.i18n.prop('D_editor'));
        $('#fsubmit').val($.i18n.prop('D_submit'));
        
        $('#fiphone').text($.i18n.prop('D_iphone'));
        $('#fifax').text($.i18n.prop('D_ifax'));
        $('#fiwebsite').text($.i18n.prop('D_iwebsite'));
        
        $('#fbasicinfo').text($.i18n.prop('D_basicinfo'));
        $('#fgeologyinfo').text($.i18n.prop('D_geologyinfo'));
        $('#fenvironmentinfo').text($.i18n.prop('D_environmentinfo'));
        $('#fcultureinfo').text($.i18n.prop('D_cultureinfo'));
        $('#fcontactinfo').text($.i18n.prop('D_contactinfo'));
        $('#fsave').text($.i18n.prop('D_save'));
        $('#fgeneralpic').text($.i18n.prop('D_generalpic'));
        $('#flandmark').text($.i18n.prop('D_landmark'));
        $('#fgeology').text($.i18n.prop('D_geology'));
        $('#fculture').text($.i18n.prop('D_culture'));
        $('#finvesgater').text($.i18n.prop('D_invesgater'));
 
        $('#fname').text($.i18n.prop('D_name'));
        $('#fposition').text($.i18n.prop('D_position'));
        $('#fagency').text($.i18n.prop('D_agency'));
        $('#flongitudelatitude').text($.i18n.prop('D_longitudelatitude'));
        $('#farea').text($.i18n.prop('D_area'));
        $('#faltitude').text($.i18n.prop('D_altitude'));
        $('#fred').text($.i18n.prop('D_redbedAge'));
        $('#fstratumName').text($.i18n.prop('D_stratumName'));
        $('#fthickName').text($.i18n.prop('D_thickName'));
        $('#foffshore').text($.i18n.prop('D_offshore'));
        $('#fconglomerate').text($.i18n.prop('D_conglomerate'));
        $('#fsandstone').text($.i18n.prop('D_sandstone'));
        $('#fsiltstone').text($.i18n.prop('D_siltstone'));
        $('#fclay').text($.i18n.prop('D_clay'));
        $('#fstructure').text($.i18n.prop('D_structure'));
        $('#frelief').text($.i18n.prop('D_relief'));
        $('#fgeomorphic').text($.i18n.prop('D_geomorphic'));
        $('#fslope').text($.i18n.prop('D_slope'));
        $('#fland').text($.i18n.prop('D_land'));
        $('#fclimate').text($.i18n.prop('D_climate'));
        $('#friver1').text($.i18n.prop('D_river1'));
        $('#friver2').text($.i18n.prop('D_river2'));
        $('#fplant').text($.i18n.prop('D_plant'));
        $('#fanimal').text($.i18n.prop('D_animal'));
        $('#fother').text($.i18n.prop('D_other'));
        $('#fgeo').text($.i18n.prop('D_geo'));
        $('#fcul').text($.i18n.prop('D_cul'));
        $('#fuse').text($.i18n.prop('D_use'));
        $('#fotherinfo').text($.i18n.prop('D_otherinfo'));
        $('#finvestigatorinfo').text($.i18n.prop('D_investigatorinfo'));
        $('#fprovincenamed').text($.i18n.prop('D_provincenamed'));
        $('#fworldnamed').text($.i18n.prop('D_worldnamed'));
        $('#fcountrynamed').text($.i18n.prop('D_countrynamed'));
        $('#flakenamed').text($.i18n.prop('D_lakenamed'));
        $('#fgeneral').text($.i18n.prop('D_generalpic'));
        $('#flandmark2').text($.i18n.prop('D_landmark'));
        $('#fgeology2').text($.i18n.prop('D_geology'));
        $('#fculture2').text($.i18n.prop('D_culture'));
        $('#fsuggesterinfo').text($.i18n.prop('D_suggesterinfo'));
        
        
        $('#fnameCurrent').text($.i18n.prop('D_nameCurrent'));
        $('#fnameOther').text($.i18n.prop('D_nameOther'));
        $('#fregionProvince').text($.i18n.prop('D_regionProvince'));
        $('#fregionCity').text($.i18n.prop('D_regionCity'));
        $('#fregionDistrict').text($.i18n.prop('D_regionDistrict'));
        $('#fregionSpecification').text($.i18n.prop('D_regionSpecification'));
        $('#fagencyName').text($.i18n.prop('D_agencyName'));
        $('#fagencyAffiliation').text($.i18n.prop('D_agencyAffiliation'));
        $('#fagencyOfficePosition').text($.i18n.prop('D_agencyOfficePosition'));
        $('#fagencyLinkman').text($.i18n.prop('D_agencyLinkman'));
        $('#fagencyMobilePhone').text($.i18n.prop('D_agencyMobilePhone'));
        $('#fagencyOfficePhone').text($.i18n.prop('D_agencyOfficePhone'));
        $('#fagencyFax').text($.i18n.prop('D_agencyFax'));
        $('#fagencyWebsite').text($.i18n.prop('D_agencyWebsite'));
        $('#fagencyEmail').text($.i18n.prop('D_agencyEmail'));
        $('#fagencyOtherInfo').text($.i18n.prop('D_agencyOtherInfo'));
        
        
        $('#fnorthLatitude').text($.i18n.prop('D_northLatitude'));
        $('#fsouthLatitude').text($.i18n.prop('D_southLatitude'));
        $('#feastLatitude').text($.i18n.prop('D_eastLatitude'));
        $('#fwestLatitude').text($.i18n.prop('D_westLatitude'));
        $('#fnorthLongitude').text($.i18n.prop('D_northLongitude'));
        $('#fsouthLongitude').text($.i18n.prop('D_southLongitude'));
        $('#feastLongitude').text($.i18n.prop('D_eastLongitude'));
        $('#fwestLongitude').text($.i18n.prop('D_westLongitude'));
        $('#fcenterLatitude').text($.i18n.prop('D_centerLatitude'));
        $('#fcenterLongitude').text($.i18n.prop('D_centerLongitude'));
        $('#freliefContinuousArea').text($.i18n.prop('D_reliefContinuousArea'));
        $('#fredbedContinuousArea').text($.i18n.prop('D_redbedContinuousArea'));
        $('#fredbedTotalArea').text($.i18n.prop('D_redbedTotalArea'));
        $('#flowAltitude').text($.i18n.prop('D_lowAltitude'));
        $('#fhighAltitude').text($.i18n.prop('D_highAltitude'));
        $('#fmediumAltitude').text($.i18n.prop('D_mediumAltitude'));
        $('#fredbedAge').text($.i18n.prop('D_redbedAge'));
        $('#fredbedAgeDescription').text($.i18n.prop('D_redbedAgeDescription'));
        $('#fstratumName1').text($.i18n.prop('D_stratumName1'));
        $('#fstratumDescription1').text($.i18n.prop('D_stratumDescription1'));
        $('#fstratumName2').text($.i18n.prop('D_stratumName2'));
        $('#fstratumDescription2').text($.i18n.prop('D_stratumDescription2'));
        $('#fthickName1').text($.i18n.prop('D_thickName1'));
        $('#fthickness1').text($.i18n.prop('D_thickness1'));
        $('#fthickName2').text($.i18n.prop('D_thickName2'));
        $('#fthickness2').text($.i18n.prop('D_thickness2'));
        $('#foffshore1').text($.i18n.prop('D_offshore1'));
        $('#feolianDeposit').text($.i18n.prop('D_eolianDeposit'));
        $('#feolianDepositDescription').text($.i18n.prop('D_eolianDepositDescription'));
        $('#fconglomerateSize').text($.i18n.prop('D_conglomerateSize'));
        $('#fconglomerateCement').text($.i18n.prop('D_conglomerateCement'));
        $('#fconglomerateFossil').text($.i18n.prop('D_conglomerateFossil'));
        $('#fconglomerateColor').text($.i18n.prop('D_conglomerateColor'));
        $('#fconglomerateStructure').text($.i18n.prop('D_conglomerateStructure'));
        $('#fconglomerateAppearance').text($.i18n.prop('D_conglomerateAppearance'));
        $('#fconglomerateIngredient').text($.i18n.prop('D_conglomerateIngredient'));
        $('#fconglomerateResistence').text($.i18n.prop('D_conglomerateResistence'));
        $('#fconglomeratePickup').text($.i18n.prop('D_conglomeratePickup'));
        $('#fsandstoneSize').text($.i18n.prop('D_sandstoneSize'));
        $('#fsandstoneCement').text($.i18n.prop('D_sandstoneCement'));
        $('#fsandstoneFossil').text($.i18n.prop('D_sandstoneFossil'));
        $('#fsandstoneColor').text($.i18n.prop('D_sandstoneColor'));
        $('#fsandstoneStructure').text($.i18n.prop('D_sandstoneStructure'));
        $('#fsandstoneAppearance').text($.i18n.prop('D_sandstoneAppearance'));
        $('#fsandstoneIngredient').text($.i18n.prop('D_sandstoneIngredient'));
        $('#fsandstoneResistence').text($.i18n.prop('D_sandstoneResistence'));
        $('#fsandstonePickup').text($.i18n.prop('D_sandstonePickup'));
        $('#fsiltstoneSize').text($.i18n.prop('D_siltstoneSize'));
        $('#fsiltstoneCement').text($.i18n.prop('D_siltstoneCement'));
        $('#fsiltstoneFossil').text($.i18n.prop('D_siltstoneFossil'));
        $('#fsiltstoneColor').text($.i18n.prop('D_siltstoneColor'));
        $('#fsiltstoneStructure').text($.i18n.prop('D_siltstoneStructure'));
        $('#fsiltstoneAppearance').text($.i18n.prop('D_siltstoneAppearance'));
        $('#fsiltstoneIngredient').text($.i18n.prop('D_siltstoneIngredient'));
        $('#fsiltstoneResistence').text($.i18n.prop('D_siltstoneResistence'));
        $('#fsiltstonePickup').text($.i18n.prop('D_siltstonePickup'));
        $('#fclaySize').text($.i18n.prop('D_claySize'));
        $('#fclayCement').text($.i18n.prop('D_clayCement'));
        $('#fclayFossil').text($.i18n.prop('D_clayFossil'));
        $('#fclayColor').text($.i18n.prop('D_clayColor'));
        $('#fclayStructure').text($.i18n.prop('D_clayStructure'));
        $('#fclayAppearance').text($.i18n.prop('D_clayAppearance'));
        $('#fclayIngredient').text($.i18n.prop('D_clayIngredient'));
        $('#fclayResistence').text($.i18n.prop('D_clayResistence'));
        $('#fclayPickup').text($.i18n.prop('D_clayPickup'));
        $('#fstructurePosition').text($.i18n.prop('D_structurePosition'));
        $('#fstructureMotion').text($.i18n.prop('D_structureMotion'));
        $('#ffault').text($.i18n.prop('D_fault'));
        $('#fbasinName').text($.i18n.prop('D_basinName'));
        $('#fstructureLine').text($.i18n.prop('D_structureLine'));
        $('#fjoint').text($.i18n.prop('D_joint'));
        $('#fbasinAge').text($.i18n.prop('D_basinAge'));
        $('#fcrumple').text($.i18n.prop('D_crumple'));
        $('#fstructureDescription').text($.i18n.prop('D_structureDescription'));
        $('#freliefUnit').text($.i18n.prop('D_reliefUnit'));
        $('#freliefPosition').text($.i18n.prop('D_reliefPosition'));
        $('#fterrain').text($.i18n.prop('D_terrain'));
        $('#freliefDescription').text($.i18n.prop('D_reliefDescription'));
        $('#fdependentType').text($.i18n.prop('D_dependentType'));
        $('#fdependentAppearance').text($.i18n.prop('D_dependentAppearance'));
        $('#fdependentForce').text($.i18n.prop('D_dependentForce'));
        $('#fslopeType').text($.i18n.prop('D_slopeType'));
        $('#fslopeRock').text($.i18n.prop('D_slopeRock'));
        $('#fslopeBody').text($.i18n.prop('D_slopeBody'));
        $('#fdanxiaRavine').text($.i18n.prop('D_danxiaRavine'));
        $('#fdanxiaWall').text($.i18n.prop('D_danxiaWall'));
        $('#fdanxiaCave').text($.i18n.prop('D_danxiaCave'));
        $('#fdanxiaValt').text($.i18n.prop('D_danxiaValt'));
        $('#fdependentShape').text($.i18n.prop('D_dependentShape'));
        $('#fdependentStage').text($.i18n.prop('D_dependentStage'));
        $('#fdependentDescription').text($.i18n.prop('D_dependentDescription'));
        $('#fcliffMaxHeight').text($.i18n.prop('D_cliffMaxHeight'));
        $('#fcliffMediumHeight').text($.i18n.prop('D_cliffMediumHeight'));
        $('#fcliffMaxGradient').text($.i18n.prop('D_cliffMaxGradient'));
        $('#fslopeShape').text($.i18n.prop('D_slopeShape'));
        $('#fcornerType').text($.i18n.prop('D_cornerType'));
        $('#fslopeDescription').text($.i18n.prop('D_slopeDescription'));
        $('#flandmarkScene').text($.i18n.prop('D_landmarkScene'));
        $('#fspecialScene').text($.i18n.prop('D_specialScene'));
        $('#freliefStructure').text($.i18n.prop('D_reliefStructure'));
        $('#foverallScene').text($.i18n.prop('D_overallScene'));
        $('#fclimateType').text($.i18n.prop('D_climateType'));
        $('#fjauTemperature').text($.i18n.prop('D_jauTemperature'));
        $('#fjulTemperature').text($.i18n.prop('D_julTemperature'));
        $('#fyearTemperature').text($.i18n.prop('D_yearTemperature'));
        $('#fyearPrecipitation').text($.i18n.prop('D_yearPrecipitation'));
        $('#fwaterArea1').text($.i18n.prop('D_waterArea1'));
        $('#fflowQuantity1').text($.i18n.prop('D_flowQuantity1'));
        $('#fflowDirection1').text($.i18n.prop('D_flowDirection1'));
        $('#fwaterTime1').text($.i18n.prop('D_waterTime1'));
        $('#fwaterDescription1').text($.i18n.prop('D_waterDescription1'));
        $('#fwaterArea2').text($.i18n.prop('D_waterArea2'));
        $('#fflowQuantity2').text($.i18n.prop('D_flowQuantity2'));
        $('#fflowDirection2').text($.i18n.prop('D_flowDirection2'));
        $('#fwaterTime2').text($.i18n.prop('D_waterTime2'));
        $('#fwaterDescription2').text($.i18n.prop('D_waterDescription2'));
        $('#fplantType').text($.i18n.prop('D_plantType'));
        $('#fplantQuantity').text($.i18n.prop('D_plantQuantity'));
        $('#fspecialPlant').text($.i18n.prop('D_specialPlant'));
        $('#fanimalQuantity').text($.i18n.prop('D_animalQuantity'));
        $('#fspecialAnimal').text($.i18n.prop('D_specialAnimal'));
        $('#foverallEnvironment').text($.i18n.prop('D_overallEnvironment'));
        $('#fforestCoverage').text($.i18n.prop('D_forestCoverage'));
        $('#fdesertSign').text($.i18n.prop('D_desertSign'));
        $('#fecologySign').text($.i18n.prop('D_ecologySign'));
        $('#fdisasterQuantity').text($.i18n.prop('D_disasterQuantity'));
        $('#frecentDisaster').text($.i18n.prop('D_recentDisaster'));
        $('#flandsllideQuantity').text($.i18n.prop('D_landsllideQuantity'));
        $('#frecentLandslide').text($.i18n.prop('D_recentLandslide'));
        $('#fmudslideQuantity').text($.i18n.prop('D_mudslideQuantity'));
        $('#frecentMudslide').text($.i18n.prop('D_recentMudslide'));
        $('#fmudslideQuantity').text($.i18n.prop('D_mudslideQuantity'));
        $('#frecentMudslide').text($.i18n.prop('D_recentMudslide'));
        $('#fgeologyDescription').text($.i18n.prop('D_geologyDescription'));
        $('#fenvironmentProblem').text($.i18n.prop('D_environmentProblem'));
        $('#fnation').text($.i18n.prop('D_nation'));
        $('#freligion').text($.i18n.prop('D_religion'));
        $('#farchitecture').text($.i18n.prop('D_architecture'));
        $('#fantiquity').text($.i18n.prop('D_antiquity'));
        $('#fcustom').text($.i18n.prop('D_custom'));
        $('#fcultureDescription').text($.i18n.prop('D_cultureDescription'));
        $('#fuseType').text($.i18n.prop('D_useType'));
        $('#fuseDegree').text($.i18n.prop('D_useDegree'));
        $('#ftransport').text($.i18n.prop('D_transport'));
        $('#fprotectCondition').text($.i18n.prop('D_protectCondition'));
        $('#fuseDescription').text($.i18n.prop('D_useDescription'));
        $('#fcultureOtherInfo').text($.i18n.prop('D_cultureOtherInfo'));
        $('#finvestigatorName').text($.i18n.prop('D_investigatorName'));
        $('#finvestigatorSex').text($.i18n.prop('D_investigatorSex'));
        $('#finvestigatorAge').text($.i18n.prop('D_investigatorAge'));
        $('#finvestigatorCompany').text($.i18n.prop('D_investigatorCompany'));
        $('#finvestigatorPosition').text($.i18n.prop('D_investigatorPosition'));
        $('#finvestigatorMailAddr').text($.i18n.prop('D_investigatorMailAddr'));
        $('#finvestigatorPostcode').text($.i18n.prop('D_investigatorPostcode'));
        $('#finvestigatorPhone').text($.i18n.prop('D_investigatorPhone'));
        $('#finvestigatorFax').text($.i18n.prop('D_investigatorFax'));
        $('#finvestigatorEmail').text($.i18n.prop('D_investigatorEmail'));
        $('#finvestigatorSubmitTime').text($.i18n.prop('D_investigatorSubmitTime'));
        $('#fsuggestions').text($.i18n.prop('D_suggestions'));
        $('#fsignature').text($.i18n.prop('D_signature'));
        $('#fresponsibility').text($.i18n.prop('D_responsibility'));
        $('#fcompany').text($.i18n.prop('D_company'));
        $('#faddress').text($.i18n.prop('D_address'));
        $('#fphone').text($.i18n.prop('D_phone'));
        $('#ffax').text($.i18n.prop('D_fax'));
        $('#femail').text($.i18n.prop('D_email'));
        $('#fdate').text($.i18n.prop('D_date'));
        $('#fmylakeLevelPic').text($.i18n.prop('D_mylakeLevelPic'));
       	$('#btn_back').val($.i18n.prop('S_back'));
       
     }
    });
    
});

        function init(){     
      
			var myName="<%=session.getAttribute("userName")%>";
			if (myName == "null") {

				window.location.href = "mainn.jsp";

			}
		}
		
		var ldmPicCount = 1;
		function addldmPic() {
			ldmPicCount++;
			if (ldmPicCount == 2) {
				$('#ldmPicdiv2').attr("style", "display:block;")
			}
			if (ldmPicCount == 3) {
				$('#ldmPicdiv3').attr("style", "display:block;")
			}
			if (ldmPicCount == 4) {
				$('#ldmPicdiv4').attr("style", "display:block;")
			}
			if (ldmPicCount == 5) {
				$('#ldmPicdiv5').attr("style", "display:block;")
			}
		}
		
		var culPicCount = 1;
		function addculPic() {
			culPicCount++;
			if (culPicCount == 2) {
				$('#culPicdiv2').attr("style", "display:block;")
			}
			if (culPicCount == 3) {
				$('#culPicdiv3').attr("style", "display:block;")
			}
			if (culPicCount == 4) {
				$('#culPicdiv4').attr("style", "display:block;")
			}
			if (culPicCount == 5) {
				$('#culPicdiv5').attr("style", "display:block;")
			}
		}
		
		var geoPicCount = 1;
		function addgeoPic() {
			geoPicCount++;
			if (geoPicCount == 2) {
				$('#geoPicdiv2').attr("style", "display:block;")
			}
			if (geoPicCount == 3) {
				$('#geoPicdiv3').attr("style", "display:block;")
			}
			if (geoPicCount == 4) {
				$('#geoPicdiv4').attr("style", "display:block;")
			}
			if (geoPicCount == 5) {
				$('#geoPicdiv5').attr("style", "display:block;")
			}
		}
</script>
</head>
<body onload="init()">
	<!-- Header -->
	<div id="header" class="skel-panels-fixed">
		<div class="top">
			<!-- Nav -->
			<nav id="nav">
				<ul style="text-align:center">
					<li><a href="#top" id="top-link"
						class="skel-panels-ignoreHref"><span id="fbasicinfo"
							class="icon icon-th"></span>
					</a>
					</li>
					<li><a href="#portfolio" id="portfolio-link"
						class="skel-panels-ignoreHref"><span id="fgeologyinfo"
							class="icon icon-th"></span>
					</a>
					</li>
					<li><a href="#about" id="about-link"
						class="skel-panels-ignoreHref"><span id="fenvironmentinfo"
							class="icon icon-th"></span>
					</a>
					</li>
					<li><a href="#contact" id="contact-link"
						class="skel-panels-ignoreHref"><span id="fcultureinfo"
							class="icon icon-th"></span>
					</a>
					</li>
					<li><a href="#contact2" id="top-link"
						class="skel-panels-ignoreHref"><span id="fcontactinfo"
							class="icon icon-th"></span>
					</a>
					</li>
					<li><a href="#contact3" id="portfolio-link"
						class="skel-panels-ignoreHref"><span id="fsave"
							class="icon icon-th"></span>
					</a>
					</li>
					<li><a href="#contact4" id="about-link"
						class="skel-panels-ignoreHref"><span id="fgeneralpic"
							class="icon icon-th"></span>
					</a>
					</li>
					<li><a href="#contact5" id="contact-link"
						class="skel-panels-ignoreHref"><span id="flandmark"
							class="icon icon-th"></span>
					</a>
					</li>
					<li><a href="#contact6" id="top-link"
						class="skel-panels-ignoreHref"><span id="fgeology"
							class="icon icon-th"></span>
					</a>
					</li>
					<li><a href="#contact7" id="portfolio-link"
						class="skel-panels-ignoreHref"><span id="fculture"
							class="icon icon-th"></span>
					</a>
					</li>
					<li><a href="#contact8" id="about-link"
						class="skel-panels-ignoreHref"><span id="finvesgater"
							class="icon icon-th"></span>
					</a>
					</li>
					<br/><br/>
					<li><input type="button" class="button03" id="btn_back"
						onclick="window.location.href='mainn.jsp'" /></li>
				</ul>
			</nav>

		</div>


	</div>

	<!-- Main -->
	<div id="main">

		<!-- 基本信息 -->
		<form method="post" action="saveinfo" id="form"
			enctype="multipart/form-data">
			<section id="top" class="one">
				<div class="container">

					<header> </header>
					<h3 id="fname"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fnameCurrent"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="nameCurrent" />
						</div>
						<div class="2u">
							<span id="fnameOther"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="nameOther" />
						</div>
					</div>
					<h3 id="fposition"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fregionProvince"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="regionProvince" />
						</div>
						<div class="2u">
							<span id="fregionCity"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="regionCity" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fregionDistrict"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="regionDistrict" />
						</div>
						<div class="2u">
							<span id="fregionSpecification"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="regionSpecification" />
						</div>
					</div>
					<h3 id="fagency"></h3>

					<div class="row half">
						<div class="2u">
							<span id="fagencyName"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="agencyName" />
						</div>
						<div class="2u">
							<span id="fagencyAffiliation"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="agencyAffiliation" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fagencyOfficePosition"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="agencyOfficePosition" />
						</div>
						<div class="2u">
							<span id="fagencyLinkman"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="agencyLinkman" />
						</div>

					</div>
					<div class="row half">
						<div class="2u">
							<span id="fagencyMobilePhone"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="agencyMobilePhone" />
						</div>
						<div class="2u">
							<span id="fagencyOfficePhone"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="agencyOfficePhone" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fagencyFax"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="agencyFax" />
						</div>
						<div class="2u">
							<span id="fagencyWebsite"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="agencyWebsite" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fagencyEmail"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="agencyEmail" />
						</div>
						<div class="2u">
							<span id="fagencyOtherInfo"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="agencyOtherInfo" />
						</div>
					</div>

				</div>
			</section>

			<!-- 地理地貌 -->
			<section id="portfolio" class="two">
				<div class="container">
					<h3 id="flongitudelatitude"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fnorthLatitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="northLatitude" />
						</div>
						<div class="2u">
							<span id="fnorthLongitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="northLongitude" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fsouthLatitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="southLatitude" />
						</div>
						<div class="2u">
							<span id="fsouthLongitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="southLongitude" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="feastLatitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="eastLatitude" />
						</div>
						<div class="2u">
							<span id="feastLongitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="eastLongitude" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fwestLatitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="westLatitude" />
						</div>
						<div class="2u">
							<span id="fwestLongitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="westLongitude" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fcenterLatitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="centerLatitude" />
						</div>
						<div class="2u">
							<span id="fcenterLongitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="centerLongitude" />
						</div>
					</div>
					<h3 id="farea"></h3>
					<div class="row half">
						<div class="2u">
							<span id="freliefContinuousArea"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="reliefContinuousArea" />
						</div>

						<div class="2u">
							<span id="fredbedContinuousArea"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="redbedContinuousArea" />
						</div>
					</div>

					<div class="row half">
						<div class="2u">
							<span id="fredbedTotalArea"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="redbedTotalArea" />
						</div>
						<div class="2u">
							<span id="flowAltitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="lowAltitude" />
						</div>
					</div>
					<h3 id="faltitude"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fhighAltitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="highAltitude" />
						</div>
						<div class="2u">
							<span id="fmediumAltitude"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="mediumAltitude" />
						</div>
					</div>
					<h3 id="fred"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fredbedAge"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="redbedAge" />
						</div>
						<div class="2u">
							<span id="fredbedAgeDescription"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="redbedAgeDescription" />
						</div>
					</div>
					<h3 id="fstratumName"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fstratumName1"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="stratumName1" />
						</div>
						<div class="2u">
							<span id="fstratumDescription1"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="stratumDescription1" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fstratumName2"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="stratumName2" />
						</div>
						<div class="2u">
							<span id="fstratumDescription2"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="stratumDescription2" />
						</div>
					</div>
					<h3 id="fthickName"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fthickName1"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="thickName1" />
						</div>
						<div class="2u">
							<span id="fthickness1"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="thickness1" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fthickName2"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="thickName2" />
						</div>
						<div class="2u">
							<span id="fthickness2"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="thickness2" />
						</div>
					</div>
					<h3 id="foffshore"></h3>
					<div class="row half">
						<div class="2u">
							<span id="foffshore1"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="offshore1" />
						</div>
						<div class="2u">
							<span id="foffshore2"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="offshore2" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="feolianDeposit"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="eolianDeposit" />
						</div>
						<div class="2u">
							<span id="feolianDepositDescription"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="eolianDepositDescription" />
						</div>
					</div>
					<h3 id="fconglomerate"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fconglomerateSize"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="conglomerateSize" />
						</div>
						<div class="2u">
							<span id="fconglomerateCement"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="conglomerateCement" />
						</div>

					</div>
					<div class="row half">
						<div class="2u">
							<span id="fconglomerateFossil"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="conglomerateFossil" />
						</div>
						<div class="2u">
							<span id="fconglomerateColor"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="conglomerateColor" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fconglomerateStructure"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="conglomerateStructure" />
						</div>
						<div class="2u">
							<span id="fconglomerateAppearance"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="conglomerateAppearance" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fconglomerateIngredient"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="conglomerateIngredient" />
						</div>
						<div class="2u">
							<span id="fconglomerateResistence"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="conglomerateResistence" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fconglomeratePickup"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="conglomeratePickup" />
						</div>
					</div>
					<h3 id="fsandstone"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fsandstoneSize"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="sandstoneSize" />
						</div>
						<div class="2u">
							<span id="fsandstoneCement"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="sandstoneCement" />
						</div>

					</div>
					<div class="row half">
						<div class="2u">
							<span id="fsandstoneFossil"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="sandstoneFossil" />
						</div>
						<div class="2u">
							<span id="fsandstoneColor"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="sandstoneColor" />
						</div>

					</div>
					<div class="row half">
						<div class="2u">
							<span id="fsandstoneStructure"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="sandstoneStructure" />
						</div>
						<div class="2u">
							<span id="fsandstoneAppearance"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="sandstoneAppearance" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fsandstoneIngredient"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="sandstoneIngredient" />
						</div>
						<div class="2u">
							<span id="fsandstoneResistence"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="sandstoneResistence" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fsandstonePickup"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="sandstonePickup" />
						</div>
					</div>
					<h3 id="fsiltstone"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fsiltstoneSize"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="siltstoneSize" />
						</div>
						<div class="2u">
							<span id="fsiltstoneCement"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="siltstoneCement" />
						</div>

					</div>
					<div class="row half">
						<div class="2u">
							<span id="fsiltstoneFossil"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="siltstoneFossil" />
						</div>
						<div class="2u">
							<span id="fsiltstoneColor"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="siltstoneColor" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fsiltstoneStructure"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="siltstoneStructure" />
						</div>
						<div class="2u">
							<span id="fsiltstoneAppearance"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="siltstoneAppearance" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fsiltstoneIngredient"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="siltstoneIngredient" />
						</div>
						<div class="2u">
							<span id="fsiltstoneResistence"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="siltstoneResistence" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fsiltstonePickup"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="siltstonePickup" />
						</div>
					</div>
					<h3 id="fclay"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fclaySize"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="claySize" />
						</div>
						<div class="2u">
							<span id="fclayCement"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="clayCement" />
						</div>

					</div>
					<div class="row half">
						<div class="2u">
							<span id="fclayFossil"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="clayFossil" />
						</div>
						<div class="2u">
							<span id="fclayColor"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="clayColor" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fclayStructure"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="clayStructure" />
						</div>
						<div class="2u">
							<span id="fclayAppearance"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="clayAppearance" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fclayIngredient"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="clayIngredient" />
						</div>
						<div class="2u">
							<span id="fclayResistence"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="clayResistence" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fclayPickup"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="clayPickup" />
						</div>
					</div>
					<h3 id="fstructure"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fstructurePosition"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="structurePosition" />
						</div>
						<div class="2u">
							<span id="fstructureMotion"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="structureMotion" />
						</div>

					</div>
					<div class="row half">
						<div class="2u">
							<span id="ffault"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="fault" />
						</div>
						<div class="2u">
							<span id="fbasinName"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="basinName" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fstructureLine"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="structureLine" />
						</div>
						<div class="2u">
							<span id="fjoint">:</span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="joint" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fbasinAge"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="basinAge" />
						</div>
						<div class="2u">
							<span id="fcrumple"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="crumple" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fstructureDescription"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="structureDescription" />
						</div>
					</div>
					<h3 id="frelief"></h3>
					<div class="row half">
						<div class="2u">
							<span id="freliefUnit"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="reliefUnit" />
						</div>
						<div class="2u">
							<span id="freliefPosition"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="reliefPosition" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fterrain"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="terrain" />
						</div>
						<div class="2u">
							<span id="freliefDescription"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="reliefDescription" />
						</div>
					</div>
					<h3 id="fgeomorphic"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fdependentType"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="dependentType" />
						</div>
						<div class="2u">
							<span id="fdependentAppearance"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="dependentAppearance" />
						</div>

					</div>
					<div class="row half">
						<div class="2u">
							<span id="fdependentForce"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="dependentForce" />
						</div>
						<div class="2u">
							<span id="fslopeType"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="slopeType" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fslopeRock"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="slopeRock" />
						</div>
						<div class="2u">
							<span id="fslopeBody"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="slopeBody" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fdanxiaRavine"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="danxiaRavine" />
						</div>
						<div class="2u">
							<span id="fdanxiaWall"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="danxiaWall" />
						</div>

					</div>
					<div class="row half">
						<div class="2u">
							<span id="fdanxiaCave"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="danxiaCave" />
						</div>
						<div class="2u">
							<span id="fdanxiaValt"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="danxiaValt" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fdependentShape"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="dependentShape" />
						</div>
						<div class="2u">
							<span id="fdependentStage"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="dependentStage" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fdependentDescription"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="dependentDescription" />
						</div>
					</div>
					<h3 id="fslope"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fcliffMaxHeight"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="cliffMaxHeight" />
						</div>
						<div class="2u">
							<span id="fcliffMediumHeight"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="cliffMediumHeight" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fcliffMaxGradient"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="cliffMaxGradient" />
						</div>
						<div class="2u">
							<span id="fcliffMediumGradient"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="cliffMediumGradient" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fslopeShape"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="slopeShape" />
						</div>
						<div class="2u">
							<span id="fcornerType"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="cornerType" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fslopeDescription"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="slopeDescription" />
						</div>
					</div>
					<h3 id="fland"></h3>
					<div class="row half">
						<div class="2u">
							<span id="flandmarkScene"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="landmarkScene" />
						</div>
						<div class="2u">
							<span id="fspecialScene"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="specialScene" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="freliefStructure"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="reliefStructure" />
						</div>
						<div class="2u">
							<span id="foverallScene"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="overallScene" />
						</div>
					</div>
				</div>

			</section>

			<!-- 自然环境 -->
			<section id="about" class="three">
				<div class="container">
					<h3 id="fclimate"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fclimateType"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="climateType" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fjauTemperature"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="jauTemperature" />
						</div>
						<div class="2u">
							<span id="fjulTemperature"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="julTemperature" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fyearTemperature"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="yearTemperature" />
						</div>
						<div class="2u">
							<span id="fyearPrecipitation"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="yearPrecipitation" />
						</div>
					</div>
					<h3 id="friver1"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fwaterArea1"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="waterArea1" />
						</div>
						<div class="2u">
							<span id="fflowQuantity1"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="flowQuantity1" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fflowDirection1"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="flowDirection1" />
						</div>
						<div class="2u">
							<span id="fwaterTime1"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="waterTime1" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fwaterDescription1"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="waterDescription1" />
						</div>
					</div>
					<h3 id="friver2"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fwaterArea2"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="waterArea2" />
						</div>
						<div class="2u">
							<span id="fflowQuantity2"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="flowQuantity2" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fflowDirection2"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="flowDirection2" />
						</div>
						<div class="2u">
							<span id="fwaterTime2"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="waterTime2" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fwaterDescription2"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="waterDescription2" />
						</div>
					</div>
					<h3 id="fplant"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fplantType"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="plantType" />
						</div>
						<div class="2u">
							<span id="fplantQuantity"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="plantQuantity" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fspecialPlant"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="specialPlant" />
						</div>
					</div>
					<h3 id="fanimal"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fanimalQuantity"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="animalQuantity" />
						</div>
						<div class="2u">
							<span id="fspecialAnimal"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="specialAnimal" />
						</div>
					</div>
					<h3 id="fother"></h3>
					<div class="row half">
						<div class="2u">
							<span id="foverallEnvironment"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="overallEnvironment" />
						</div>
						<div class="2u">
							<span id="fforestCoverage"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="forestCoverage" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fdesertSign"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="desertSign" />
						</div>
						<div class="2u">
							<span id="fecologySign"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="ecologySign" />
						</div>
					</div>
					<h3 id="fgeo"></h3>
					<div class="row half">
						<div class="2u">
							<span id="disasterQuantity"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="disasterQuantity" />
						</div>
						<div class="2u">
							<span ID="frecentDisaster"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="recentDisaster" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="flandsllideQuantity"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="landsllideQuantity" />
						</div>
						<div class="2u">
							<span ID="frecentLandslide"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="recentLandslide" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fmudslideQuantity"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="mudslideQuantity" />
						</div>
						<div class="2u">
							<span id="frecentMudslide"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="recentMudslide" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fgeologyDescription"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="geologyDescription" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fenvironmentProblem"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="environmentProblem" />
						</div>
					</div>
				</div>
			</section>

			<!-- 地方文化 -->
			<section id="contact" class="four">
				<div class="container">

					<h3 id="fcul"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fnation"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="nation" />
						</div>
					</div>
			   		<div class="row half">
						<div class="2u">
							<span id="freligion"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="religion" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="farchitecture"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="architecture" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fantiquity"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="antiquity" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fcustom"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="custom" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fcultureDescription"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="cultureDescription" />
						</div>
					</div>
					<h3 id="fuse"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fuseType"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="useType" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fuseDegree"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="useDegree" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="ftransport"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="transport" />
						</div>
						<div class="2u">
							<span id="fprotectCondition"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="protectCondition" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fuseDescription"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="useDescription" />
						</div>
					</div>
					<h3 id="fotherinfo"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fcultureOtherInfo"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="cultureOtherInfo" />
						</div>
					</div>
				</div>
			</section>

			<section id="contact2" class="five">
				<div class="container">

					<h3 id="finvestigatorinfo"></h3>
					<div class="row half">
						<div class="2u">
							<span id="finvestigatorName"></span>
						</div>
						<div class="1u">
							<input type="text" class="text" name="investigatorName" />
						</div>
						<div class="3u">
							<span id="finvestigatorSex"></span>
						</div>
						<div class="1u">
							<input type="text" class="text" name="investigatorSex" />
						</div>
						<div class="2u">
							<span id="finvestigatorAge"></span>
						</div>
						<div class="1u">
							<input type="text" class="text" name="investigatorAge" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="finvestigatorCompany"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="investigatorCompany" />
						</div>
						<div class="2u">
							<span id="finvestigatorPosition"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="investigatorPosition" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="finvestigatorMailAddr"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="investigatorMailAddr" />
						</div>

						<div class="2u">
							<span id="finvestigatorPostcode"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="investigatorPostcode" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="finvestigatorPhone"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="investigatorPhone" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="finvestigatorFax"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="investigatorFax" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="finvestigatorEmail"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="investigatorEmail" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="finvestigatorSubmitTime"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="investigatorSubmitTime" />
						</div>
					</div>
				</div>
			</section>

			<section id="contact3" class="six">

				<div class="container">
					<h3 id="fworldnamed"></h3>
					<s:checkboxlist name="worldLevel" list="worldlevels"
						listKey="worldLevelId" listValue="worldLevelName">
					</s:checkboxlist>
					<br /> <br />
					
					<h3 id="fcountrynamed"></h3>
					<s:checkboxlist name="countryLevel" list="countrylevels"
						listKey="countryLevelId" listValue="countryLevelName">
					</s:checkboxlist>
					<br /> <br />
					
					<h3 id="fprovincenamed"></h3>
					<s:checkboxlist name="provinceLevel" list="provincelevels"
						listKey="provinceLevelId" listValue="provinceLevelName">
					</s:checkboxlist>
					<br /> <br />

					<h3 id="flakenamed"></h3>
					<s:checkboxlist name="lakeLevel" list="lakelevels"
						listKey="lakeLevelId" listValue="lakeLevelName">
					</s:checkboxlist>

				</div>
			</section>
			<section id="contact4" class="seven">
				<div class="container">
					<h3 id="fgeneral"></h3>
					<br /> <br />
					<div class="row half">

						<div class="2u">
							<s:file name="mylakeLevelPic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="mylakeLevelPicDescription"
								placeholder="河湖相沉积地层图片" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="myconglomeratePic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text"
								name="myconglomeratePicDescription" placeholder="XX组砾岩层图片" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="mysandstonePic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="mysandstonePicDescription"
								placeholder="XX组XX段中粒砂岩及交错层理图片" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="mysiltstonePic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="mysiltsstonePicDescription"
								placeholder="XX组XX段的粉砂岩夹层图片" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="myclayPic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="myclayPicDescription"
								placeholder="XX组XX段中的泥质岩图片" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="mybasinLinePic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="mybasinLinePicDescription"
								placeholder="XX盆地中的主要构造线" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="mybasinPositionPic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text"
								name="mybasinPositionPicDescription" placeholder="盆地的位置" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="mybasinGeologyPic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text"
								name="mybasinGeologyPicDescription" placeholder="盆地地质图" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="myterrainPic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="myterrainPicDescription"
								placeholder="XX盆地地形大势图" />
						</div>
					</div>


					<div class="row half">

						<div class="2u">
							<s:file name="mychanzhuangPic1" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text"
								name="mychanzhuangPic1Description" placeholder="依据产状图片1" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="mychanzhuangPic2" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text"
								name="mychanzhuangPic2Description" placeholder="依据产状图片2" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="mypositiveReliefPic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text"
								name="mypositiveReliefPicDecsription" placeholder="正地貌图片" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="mynegativeReliefPic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text"
								name="mynegativeReliefPicDecsription" placeholder="负地貌图片" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="myreliefPic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="myreliefPicDescription"
								placeholder="单体形态图片" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="mydependentShapePic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text"
								name="mydependentShapePicDescription" placeholder="群体形态与发育阶段图片 " />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="myslopeShapePic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="myslopeShapePicDescription"
								placeholder="崖坡特点图片" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="myoverallScenePic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text"
								name="myoverallScenePicDescription" placeholder="综合景观图片" />
						</div>
					</div>
					<div class="row half">

						<div class="2u">
							<s:file name="myoverallEnvironmentPic" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text"
								name="myoverallEnvironmentPicDescription"
								placeholder="综合自然地理环境图片" />
						</div>
					</div>

				</div>
			</section>
			<section id="contact5" class="eight">
				<div class="container">
					<h3 id="flandmark2"></h3>
					<br /> <br />

					<div class="row half" id="ldmPicdiv1">

						<div class="2u">
							<s:file name="ldmPic1" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="ldmPic1Description"
								placeholder="图片1" />
						</div>
						<div class="1u">
							<img src="img/plus.png" height="40" width="40" onclick="addldmPic()">
						</div>
					</div>
					<div class="row half" id="ldmPicdiv2" style="display:none">

						<div class="2u">
							<s:file name="ldmPic2" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="ldmPic2Description"
								placeholder="图片2" />
						</div>
					</div>
					<div class="row half" id="ldmPicdiv3" style="display:none">

						<div class="2u">
							<s:file name="ldmPic3" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="ldmPic3Description"
								placeholder="图片3" />
						</div>
					</div>
					<div class="row half" id="ldmPicdiv4" style="display:none">

						<div class="2u">
							<s:file name="ldmPic4" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="ldmPic4Description"
								placeholder="图片4" />
						</div>
					</div>
					<div class="row half" id="ldmPicdiv5" style="display:none">

						<div class="2u">
							<s:file name="ldmPic5" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="ldmPic5Description"
								placeholder="图片5" />
						</div>
					</div>




				</div>
			</section>
			<section id="contact6" class="nine">
				<div class="container">
					<h3 id="fgeology2"></h3>
					<br /> <br />

					<div class="row half" id="geoPicdiv1">

						<div class="2u">
							<s:file name="geoPic1" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="geoPic1Description"
								placeholder="图片1" />
						</div>
						<div class="1u">
							<img src="img/plus.png" height="40" width="40" onclick="addgeoPic()">
						</div>
					</div>
					<div class="row half" id="geoPicdiv2" style="display:none">

						<div class="2u">
							<s:file name="geoPic2" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="geoPic2Description"
								placeholder="图片2" />
						</div>
					</div>
					<div class="row half" id="geoPicdiv3" style="display:none">

						<div class="2u">
							<s:file name="geoPic3" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="geoPic3Description"
								placeholder="图片3" />
						</div>
					</div>
					<div class="row half" id="geoPicdiv4" style="display:none">

						<div class="2u">
							<s:file name="geoPic4" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="geoPic4Description"
								placeholder="图片4" />
						</div>
					</div>
					<div class="row half" id="geoPicdiv5" style="display:none">

						<div class="2u">
							<s:file name="geoPic5" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="geoPic5Description"
								placeholder="图片5" />
						</div>
					</div>



				</div>
			</section>
			<section id="contact7" class="ten">

				<div class="container">
					<h3 id="fculture2"></h3>
					<br /> <br />

					<div class="row half" id="culPicdiv1">

						<div class="2u">

							<s:file name="culPic1" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="culPic1Description"
								placeholder="图片1" />
						</div>
						<div class="1u">
							<img src="img/plus.png" height="40" width="40" onclick="addculPic()">
						</div>
					</div>

					<div class="row half" id="culPicdiv2" style="display:none">

						<div class="2u">

							<s:file name="culPic2" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="culPic2Description"
								placeholder="图片2" />
						</div>
					</div>
					<div class="row half" id="culPicdiv3" style="display:none">

						<div class="2u">

							<s:file name="culPic3" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="culPic3Description"
								placeholder="图片3" />
						</div>
					</div>
					<div class="row half" id="culPicdiv4" style="display:none">

						<div class="2u">
							<s:file name="culPic4" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="culPic4Description"
								placeholder="图片4" />
						</div>
					</div>
					<div class="row half" id="culPicdiv5" style="display:none">

						<div class="2u">
							<s:file name="culPic5" />
						</div>
						<div class="5u"></div>
						<div class="3u">
							<input type="text" class="text" name="culPic5Description"
								placeholder="图片5" />
						</div>






					</div>

				</div>
			</section>
			<section id="contact8" class="eleven">
				<div class="container">

					<h3 id="fsuggesterinfo"></h3>
					<div class="row half">
						<div class="2u">
							<span id="fsuggestions"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="suggestions" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fsignature"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="signature" />
						</div>

						<div class="2u">
							<span id="fresponsibility"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="responsibility" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fcompany"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="company" />
						</div>

						<div class="2u">
							<span id="faddress"></span>
						</div>
						<div class="3u">
							<input type="text" class="text" name="address" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fphone"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="phone" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="ffax"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="fax" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="femail"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="email" />
						</div>
					</div>
					<div class="row half">
						<div class="2u">
							<span id="fdate"></span>
						</div>
						<div class="8u">
							<input type="text" class="text" name="date" />
						</div>
					</div>
					<br /> <br /> <br /> <br />
					<p>
						<input id="fsubmit" value="保存" type="submit" class="button03" />
					</p>
				</div>
			</section>

		</form>
	</div>

	<!-- Footer -->
	<div id="footer">

		<!-- Copyright -->
		<div class="copyright">
			<p id="feditor"></p>
			<a href="http://weibo.com/SandstoneLandforms"> <img
				src="img/weibo.jpg"
				style="vertical-align:bottom;height:25px;width:25px" /> </a>
			<p>
			<div>
				<font id="fiphone"></font> 862084113980 <font id="fifax"></font>8620
				84113980 mail: danxiadimaoxitong@126.com <font id="fiwebsite"></font>http://tcloud.sjtu.edu.cn:8888
			</div>
			</p>

		</div>
	</div>

</body>
</html>