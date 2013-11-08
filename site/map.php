<?
    require 'lib/QuickSQL.php';
    require 'lib/ImageClip.php';
    new QuickSQL('alocoimbra', 'root', 'root');
?>

<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map-canvas { height: 100% }
      .label {
         color: red;
         background-color: white;
         font-family: "Lucida Grande", "Arial", sans-serif;
         font-size: 10px;
         font-weight: bold;
         text-align: center;
         width: 65px;     
         border: 2px solid black;
         white-space: nowrap;
       }
    </style>

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDvjYqJn2S9pwcPGkOLPBxFHPV_ySLWZv8&sensor=false"></script>
    <script type="text/javascript" src="http://google-maps-utility-library-v3.googlecode.com/svn/trunk/maplabel/src/maplabel-compiled.js"></script>

    <script type="text/javascript">
      function addMarker(map, lat, lng, title, text) {
        var info = new google.maps.InfoWindow({
          content: "<h1>" + title + "</h1>" + text
        });

        var marker = new google.maps.Marker({
          position: new google.maps.LatLng(lat, lng),
          animation: google.maps.Animation.DROP,
          map: map,
        });

        google.maps.event.addListener(marker, 'click', function() {
          info.open(map, marker);
        });
      }

      function addZone(map, name, color, coords) {
         var points = [];
         var avLat = 0, avLng = 0;

         for (var i=0; i < coords.length; i++) {
          points[i] = new google.maps.LatLng(coords[i][0], coords[i][1]);
          avLat = avLat + coords[i][0];
          avLng = avLng + coords[i][1];
         }

         new google.maps.Polygon({
            strokeColor: color,
            fillColor: color,
            strokeOpacity: 0.4,
            strokeWeight: 2,
            fillOpacity: 0.2,
            paths: points,
            map: map
          });

          new MapLabel({
            text: name,
            position: new google.maps.LatLng(avLat / coords.length, avLng / coords.length),
            map: map,
            fontSize: 10,
            fontColor: color,
            align: 'center'
          });
      }

      function initialize() {
        var map = new google.maps.Map(document.getElementById("map-canvas"), {
          	center: new google.maps.LatLng(40.195426, -8.427000),
          	mapTypeId: google.maps.MapTypeId.ROADMAP,
          	zoom: 14
        });

        <? foreach ($locais->Find('*', '') as $local) { ?>
          addMarker(map, <?=$local['Latitude']?>, <?=$local['Longitude']?>, "<?=$local['Nome']?>", "<?=$local['Descricao']?>");
        <? } ?>

        <?
          foreach ($propriedadesZona->Find('*', '') as $zona) {
            echo 'addZone(map,"' . $zona['Nome'] . '","#' . $zona['Cor'] . '",[';

            foreach ($zonas->Find('*', 'WHERE Nome="' . $zona['Nome'] . '"') as $spot)
              echo '[' . $spot['Latitude'] . ',' . $spot['Longitude'] . '],';

            echo ']);';
          }
        ?>
      }

      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
  </head>
  <body>
    <div id="map-canvas"/>
  </body>
</html>