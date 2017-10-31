var projectsDetail = {
    ivoire_Biogas:{
        lat:5.3900623,
        lng:-4.5478169,
        title:'Abidjan-Cote_D ivoire_Biogas',
        content:getText('228bb02f6074445cbe1cb7c885e2e727','map_ivoire_Biogas.png','Shandong 800KW Biogas Power Station','The project is in the process selection and design, the use of thermoelectric fat cogeneration mode and high concentrations...')
      },
    Cote_Solar_Pump:{
        lat:7.3900623,
        lng:-6.8478169,
        title:'Abidjan-Cote_Solar_Pump',
        content:getText('6425526347024a18bae747c5ad514fb5','map_csp.jpg','Cote D’ivoire 2X1.5KW PV Power Pump Station','Deep Well Concrete Foundation.')
      },
    Anhui_PV:{
        lat:31.844,
        lng:117.25,
        title:'Anhui_PV Project',
        content:getText('656b7b4908fc48abb1bd0cb50cd0a236','map_ah_pv.jpg','Anhui 2MW Floating PV Project','The floating platform and the underwater coagulation anchor block are fixed together by a tension spring fixing device, and the tension spring device is composed of a special antiseptic natural fiber and a metal component...')
      },
    Jiangsu_PV:{
        lat:32.32168,
        lng:119.104307,
        title:'Jiangsu_PV Project',
        content:getText('1f0be984c0ce4e5ebad80fc810105c0f','map_js_pv.jpg','Jiangu 3kW single-axis tracking system','The system is composed of a horizontal turntable, an electric push rod, a main column, a main beam and a turntable, a connecting shaft...')
      },
    Nanjing_Biogas_Power_Plant:{
        lat:32.13,
        lng:118.78,
        title:'Nanjing_Biogas_Power_Plant',
        content:getText('f3890bdcc1c24266938a62686411a543','map_njpp.jpg','Nanjing 20 Tons/Day Biogas power plant','ertence provide Design, Inspection, Material supplement, project management, installation, commissioning services for this client.')
      },
    Nanjing_Intelligent_Greenhouse:{
        lat:31.967527,
        lng:118.81225,
        title:'Nanjing_Intelligent_Greenhouse',
        content:getText('40580cdfb743412491960dd3f2ab6c97','map_njig.jpg','Nanjing 100 greenhouses intelligent control system','Vertence supplies all the accessories for intelligent control system, irrigation system, network system,  Video Surveillance system...')
      },
    Nigeria_Solar_Pump:{
        lat:9.0544966,
        lng:7.3243166,
        title:'Nigeria_Solar_Pump',
        content:getText('5a1d631728f74470ab615b68c3b2a018','map_nsp.jpg','Nigeria 10X1.5KW PV Power Pump Station','Nigeria 10X1.5KW PV Power Pump Station.')
      },
    ningxia_PV:{
        lat:38.4929,
        lng:106.213501,
        title:'ningxia_PV Project',
        content:getText('ceab140fd7434ceca5ff690bf15cc52e','map_nxpv.jpg','Ningxia 5MW PV station Project','The project will build 5 MW large grid connected photovoltaic power station. For the project economic and technical reliability, using a fixed solar array (square angle 45 degrees)...')
      },
    qinghai_PV:{
        lat:36.624138,
        lng:101.781353,
        title:'qinghai_PV Project',
        content:getText('9de019db5cd043a4b9f47002cbdb912f','map_qhpv.jpg','Qinghai 20MW PV station Project','Photovoltaic power plant located in the Haibei Tibetan Autonomous Prefecture of Qinghai Province, at an altitude of about 3300m, covers an area of 720 acres...')
      },
    Shandong_PV:{
        lat:36.66,
        lng:116.95,
        title:'Shandong_PV Project',
        content:getText('cb74a7e7375c43daad3cab4d21a6ed22','map_sdpvp.jpg','Shandong 642.6KW PV Power Station','The preliminary design of this project has installed capacity of 642.6KWp, which belongs to the grid connected distributed photovoltaic power generation system...')
      },
    ShandongBiogas:{
        lat:36.25,
        lng:120.44,
        title:'Shandong-Biogas',
        content:getText('a1c796dd7a224d5eba11a43dfa8fe1fa','map_sdbio.jpg','Shandong 1MW Biogas Power Station','The design of wastes, wastewater treatment, need advanced technology and equipment. At the same time make reasonable investment, pig manure, sewage and mixture formation operation cost...')
      },
    Sudan_Pressure_Vessel:{
        lat:16.2689399,
        lng:18.8767634,
        title:'Sudan_Pressure_Vessel',
        content:getText('29492ee28f7d497f94550ab803ccebba','map_sdpv.jpg','IRCC, Sudan 100KG/H Fully automatic Boiler system','Vertence supplies all the accessories for the boiler system, include: fully automatic boiler, pipeline system, valves....')
      },
    Sudan_PV:{
        lat:17.2682456,
        lng:24.325982,
        title:'Sudan_PV Project',
        content:getText('c1a9767e74f145de807b1bae0d3684c0','map_sudanpv.jpg','Jiangu 4.8kW single-axis tracking system','Jiangu 4.8kW single-axis tracking system.')
      },
    Sudan_Solar:{
        lat:15.1532057,
        lng:25.0291069,
        title:'Sudan_Solar Pump',
        content:getText('3ceb8b932f9945e391d74e8001f4f3f8','map_sd_sp.jpg','Sudan 1.5KW PV Power Pump Station','Sudan 1.5KW PV Power Pump Station')
      },
    Sudan_Water_Treatment:{
        lat:13.0194867,
        lng:26.8638237,
        title:'Sudan_Water_Treatment',
        content:getText('0d9b703d7b5d4f05aa4902df5765c106','map_sdwater.jpg','IRCC, Sudan 300KG/H Fully automatic Water Softeners and Filtering system','Vertence supplies all the accessories for the water treatment system, include: fully automatic water softeners, water filters, pipeline system, valves...')
      }
    }

function initialize() {
  var mapOptions = {
    zoom: 2,
    center: new google.maps.LatLng(17.2682456, 24.325982)
  };
  var map = new google.maps.Map(document.getElementById('googleMap'),mapOptions);
   $.each(projectsDetail, function(index, project) {
      var position = new google.maps.LatLng(project.lat,project.lng);
      var marker = new google.maps.Marker({
        position: position,
        map: map
      });
      marker.setTitle(project.title);
      var infowindow = new google.maps.InfoWindow({
    	  content: project.content
      });
      project.infowindow=infowindow;
      project.mark=marker;
      google.maps.event.addListener(marker, 'click', function() {
    	  $.each(projectsDetail, function(i, p) {
    		  p.infowindow.close()
    	  });
         infowindow.open(marker.get('map'), marker);
      });
    });
}
google.maps.event.addDomListener(window, 'load', initialize);

function getText(id,image,title,content){
	return '<div class="l-mark">'+'<img src="static/images/'+image+'" alt="" width="282" height="107px;">'+
    ' <h4>'+title+'</h4>'+'<div class="l-content">'+content+'</div>'+'<div class="l-detail">'+
    '<a href="detail?id='+id+'" target="_blank" >Project Details</a></div></div>';
}

$(function(){
	    $("li").click(function() {
				$(this).siblings('li').removeClass('left-active');
				$(this).addClass('left-active');
				$.each(projectsDetail, function(i, p) {
					p.infowindow.close()
				});
				projectsDetail[$(this).attr("id")].infowindow.open(projectsDetail[$(this).attr("id")].mark.get('map'),
						projectsDetail[$(this).attr("id")].mark);
			});
});



