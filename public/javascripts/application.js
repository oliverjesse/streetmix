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

  // Create a base icon for all of our markers that specifies the
  // shadow, icon dimensions, etc.
  var baseIcon = new GIcon(G_DEFAULT_ICON);
  baseIcon.image = "/images/test_drawables/arrow_red.png"
  baseIcon.shadowSize = new GSize(0, 0);
  baseIcon.iconSize = new GSize(20, 32);
  baseIcon.iconAnchor = new GPoint(10, 32);
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
	  var html="<div class='pin-info'><img src='"+url+"'></img><br />"
	  GEvent.addListener(marker,"click", function() { 
	      map.openInfoWindowHtml(latlng, html); 
	      }); 
	  return marker; 
	}

	function plotTeamPoints(points, team) {
		if (points.length > 0) {
			for ( var i=points.length-1; i>=0; --i ){
				if (!points[i]) {
	        alert("point not found");
	      } else {
					// this is to preload the image so popup size set correctly
					var preload = $('<img />').attr('src', points[i][2]);
					
					// here we add a nice point to our map and adjust the bounds
					var gpoint = new GLatLng(points[i][0],points[i][1]);
					bounds.extend(gpoint); 
	        map.addOverlay(createMarker(gpoint, team, points[i][2]));
	        map.setCenter(bounds.getCenter(),map.getBoundsZoomLevel(bounds)); 
	      }
			}
		}		
	}

  if (GBrowserIsCompatible()) {
    var map = new GMap2(document.getElementById("map_canvas"));
		var bounds = new GLatLngBounds;
    map.addControl(new GLargeMapControl());
    geocoder.getLatLng(
      address,
      function(point) {
        if (!point) {
          alert("address not found");
        } else {
					bounds.extend(point);
          map.setCenter(bounds.getCenter(),map.getBoundsZoomLevel(bounds)); 
          var marker = new GMarker(point);
          map.addOverlay(marker);
          // marker.openInfoWindowHtml(address);
        }
      }
    );
		plotTeamPoints(redteam, 0);
		plotTeamPoints(blueteam, 1);
  }
}


function initialize_google_maps_with_scenarios(addresses, linkarray, titles) {

  // Create a base icon for all of our markers that specifies the
  // shadow, icon dimensions, etc.
  var baseIcon = new GIcon(G_DEFAULT_ICON);
  baseIcon.image = "/images/test_drawables/arrow_red.png"
  baseIcon.shadowSize = new GSize(0, 0);
  baseIcon.iconSize = new GSize(20, 32);
  baseIcon.iconAnchor = new GPoint(10, 32);
  // baseIcon.infoWindowAnchor = new GPoint(9, 2);

	function createMarker(latlng, linkhtml) {
	  var thisIcon = baseIcon;
	  markerOptions = { icon:thisIcon}; // Set up our GMarkerOptions object
	  var marker = new GMarker(latlng, markerOptions);  
	  var html = linkhtml;
	  // var html="<div class='pin-info'><a href='"+link+"'>"+title+"</a><br />"+address+"</div>"
	  GEvent.addListener(marker,"click", function() { 
	      map.openInfoWindowHtml(latlng, html); 
	      }); 
	  return marker; 
	}
	
	function plotScenarios(addresses, links, titles) {
		if (addresses.length > 0) {
			for ( var i=addresses.length-1; i>=0; --i ){
				var current_link = links[i];
		    geocoder.getLatLng(
		      addresses[i],
		      function(point) {
		        if (!point) {
		          alert("address not found");
		        } else {
							bounds.extend(point);
		          map.setCenter(bounds.getCenter(),map.getBoundsZoomLevel(bounds));
							alert(current_link);
		          var marker = createMarker(point, current_link);
		          map.addOverlay(marker);
		          // marker.openInfoWindowHtml(addresses);
		        }
		      }
		    );
			}
		}
	}

  if (GBrowserIsCompatible()) {
    var map = new GMap2(document.getElementById("map_canvas"));
		var bounds = new GLatLngBounds;
    map.addControl(new GLargeMapControl());

		plotScenarios(addresses, linkarray, titles);
  }
}



// window.onload=initialize; 
// window.onunload=GUnload; 

