// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var geocoder = new GClientGeocoder();

function initialize_google_maps(address) {

  if (GBrowserIsCompatible()) {
    var map = new GMap2(document.getElementById("map_canvas"));
    map.addControl(new GLargeMapControl());
    geocoder.getLatLng(
      address,
      function(point) {
        if (!point) {
          alert("address not found");
        } else {
          map.setCenter(point, 13);
          var marker = new GMarker(point);
          map.addOverlay(marker);
          marker.openInfoWindowHtml(address);
        }
      }
    ); 
  }
}

function initialize_google_maps_with_territory_points(address, redteam, blueteam) {

  if (GBrowserIsCompatible()) {
    var map = new GMap2(document.getElementById("map_canvas"));
    map.addControl(new GLargeMapControl());
    geocoder.getLatLng(
      address,
      function(point) {
				alert(point);
        if (!point) {
          alert("address not found");
        } else {
          map.setCenter(point, 13);
          var marker = new GMarker(point);
          map.addOverlay(marker);
          // marker.openInfoWindowHtml(address);
        }
      }
    );

	  // Create a base icon for all of our markers that specifies the
	  // shadow, icon dimensions, etc.
	  var baseIcon = new GIcon(G_DEFAULT_ICON);
	  baseIcon.image = "/images/test_drawables/arrow_red.png"
	  baseIcon.shadowSize = new GSize(0, 0);
	  baseIcon.iconSize = new GSize(30, 51);
	  baseIcon.iconAnchor = new GPoint(15, 51);
	  // baseIcon.infoWindowAnchor = new GPoint(9, 2);

		// Clicking the marker will hide it 
		function createMarker(latlng, team, url) { 
		  var thisIcon = baseIcon;
		  if(team == 0 ) {
		    baseIcon.image =  "/images/test_drawables/arrow_red.png";
		  } 
		  else {
		    baseIcon.image =  "/images/test_drawables/arrow_blue.png";
		  }

		  markerOptions = { icon:thisIcon}; // Set up our GMarkerOptions object
		  var marker = new GMarker(latlng, markerOptions);  
		  var html="<div class='pin-info'><strong>"+url+"</strong><br />"
		  // html += restaurant.address_html
		  GEvent.addListener(marker,"click", function() { 
		      map.openInfoWindowHtml(latlng, html); 
		      }); 
		  return marker; 
		}
	
		function plotTeamPoints(points, team) {
			if (points.length > 0) {
				var bounds = new GLatLngBounds;
				for ( var i=points.length-1; i>=0; --i ){
					alert(points[i]);
					if (!points[i]) {
		        alert("point not found");
		      } else {
						var gpoint = new GLatLng(points[i][0],points[i][1]);
						bounds.extend(gpoint); 
		        map.addOverlay(createMarker(gpoint, team, points[i][2]));
		        // marker.openInfoWindowHtml(points[i].toString());
		        map.setCenter(bounds.getCenter(),map.getBoundsZoomLevel(bounds)); 
		      }
				}
			}		
		}
	

		plotTeamPoints(redteam, 0);
		plotTeamPoints(blueteam, 1);
			// plotTeamPoints()

  }
}

// function initialize() { 
//   if (GBrowserIsCompatible() && typeof restaurants != 'undefined') { 
//     var map = new GMap2(document.getElementById("map")); 
//     map.setCenter(new GLatLng(center[0], center[1]), 13); 
//     mapControl = new GLargeMapControl();
//     map.addControl(mapControl); 
// 
//     // Create a base icon for all of our markers that specifies the
//     // shadow, icon dimensions, etc.
//     var baseIcon = new GIcon(G_DEFAULT_ICON);
//     baseIcon.image = "/images/waterdrop_blue.png"
//     baseIcon.shadowSize = new GSize(0, 0);
//     baseIcon.iconSize = new GSize(30, 51);
//     baseIcon.iconAnchor = new GPoint(15, 51);
//     // baseIcon.infoWindowAnchor = new GPoint(9, 2);
//     
//     // Clicking the marker will hide it 
//     function createMarker(latlng, restaurant) { 
//       var thisIcon = baseIcon;
//       if(restaurant.participating != true ) {
//         baseIcon.image =  "/images/waterdrop_green.png";
//       } 
//       else {
//         baseIcon.image =  "/images/waterdrop_blue.png";
//       }
// 
// 
//       markerOptions = { icon:thisIcon}; // Set up our GMarkerOptions object
//       var marker = new GMarker(latlng, markerOptions);  
//       var html="<div class='pin-info'><strong>"+restaurant.name+"</strong><br />"
//       html += restaurant.address_html
//       GEvent.addListener(marker,"click", function() { 
//           map.openInfoWindowHtml(latlng, html); 
//           }); 
//       return marker; 
//     } 
// 
//     //loop through restaurants and place the markers
//     if (restaurants.length > 0) {
//       var bounds = new GLatLngBounds; 
//       for (var i = 0; i < restaurants.length; i++) { 
//         var latlng=new GLatLng(restaurants[i].restaurant.lat,restaurants[i].restaurant.lng) 
//           bounds.extend(latlng); 
//         map.addOverlay(createMarker(latlng, restaurants[i].restaurant)); 
//       } 
//       map.setCenter(bounds.getCenter(),map.getBoundsZoomLevel(bounds)); 
//     }
//     else {
//       map.setCenter(new GLatLng(39.062861, -98.532385), 3);
//     }
//   } 
// } 
// window.onload=initialize; 
// window.onunload=GUnload; 

