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
      function initialize() {
        var mapCanvas = document.getElementById('map-canvas');
        var mapOptions = {
          //center: new google.maps.LatLng(44.5403, -78.5463),
          center: new google.maps.LatLng(39.218087,+9.121222),
          zoom: 15,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(mapCanvas, mapOptions)
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
    
    </head>
    <body>
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
            
            <div id="map-canvas"></div>
        </div>
      </div>
    </body>
</html>