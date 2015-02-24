<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">        
        <title><g:message code="menu.chisiamo.label"/></title>
        
    <style>
      #map-canvas {
        width: 500px;
        height: 400px;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>

    var directionDisplay;
    var directionsService = new google.maps.DirectionsService();

    function initialize() {
        var latlng = new google.maps.LatLng(39.218087,+9.121222);
        directionsDisplay = new google.maps.DirectionsRenderer();
        
        var settings = {
            zoom: 15,
            center: latlng,
            mapTypeControl: true,
            mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
            navigationControl: true,
            navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("map_canvas"), settings);

        directionsDisplay.setMap(map);

        var contentString = 
        '<div id="content" style="color:black;">'+
            '<div id="siteNotice"></div>'+
	        '<div id="bodyContent">'+
		        '<p>Trova le indicazioni stradali da:</p>'+
		        '<form class="form" action="index.html" onsubmit="calcRoute();return false;">'+
		        '<input type="text" id="start" value="" style="border: 1px solid gray;">'+
		        '<input type="submit" value="Trova indicazioni"></form>'+
	        '</div>'+
        '</div>';

        var infowindow = new google.maps.InfoWindow({
            content: contentString,
            maxWidth:300
        });

        var saPos = new google.maps.LatLng(39.218087,+9.121222);
        var saMarker = new google.maps.Marker({
            position: saPos,
            map: map,            
            title:"SA",
            zIndex: 3});
        
        google.maps.event.addListener(saMarker, 'click', function() {
            infowindow.open(map,saMarker);
        });
    }

    function calcRoute() {
        var start = document.getElementById("start").value;
        var end = "39.218087,+9.121222";
        var request = {
            origin:start,
            destination:end,
            travelMode: google.maps.DirectionsTravelMode.DRIVING
        };
        
        directionsService.route(request, function(response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            }
        });
    }
    /*
      function initialize() {

		directionsDisplay = new google.maps.DirectionsRenderer();
		  
		  
		var myLatlng = new google.maps.LatLng(39.218087,+9.121222);
		
		var mapCanvas = document.getElementById('map-canvas');
		
		var mapOptions = {
		  //center: new google.maps.LatLng(44.5403, -78.5463),
		  center: myLatlng,
		  zoom: 15,
		  mapTypeId: google.maps.MapTypeId.ROADMAP,
		  
		  mapTypeControl: true,
		  mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
		  navigationControl: true,
		  navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL}
		}
		directionsDisplay.setMap(map);
		
		var map = new google.maps.Map(mapCanvas, mapOptions);
        
	    // To add the marker to the map, use the 'map' property
	    var marker = new google.maps.Marker({
	         position: myLatlng,
	         map: map,
	         title:"Sarda Affumicati"
	    });        
      }
      
      */

      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
    
    </head>
    <body >
        
        
      <div class="container">
        <div class="content scaffold-show" role="main">
            <h2><g:message code="menu.contatti.label"/></h2>
            <br>
			<dl>
				<dt>Sarda Affumicati s.r.l.</dt>
				<dd>
					via Alghero 14<br>
					09127 Cagliari<br>
					Tel. / Fax: +39.070 653462<br>
				</dd>
				<br>
				<dt>Stabilimento</dt>
				<dd>
					Loc. Sa Colombera <br>
					09010 Buggerru (CA) <br>
					Tel. / Fax.: +39.078154 914-930<br>
					e-mail: sardaf@tiscalinet.it<br>
					www.sardaffumicati.com<br> 
				</dd>
			</dl>
            
<%--            <div id="map-canvas"></div>--%>
            <div id="map_canvas" style="width:500px; height:300px"></div>
        </div>
      </div>
    </body>
</html>