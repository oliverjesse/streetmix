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
					var html = "<b>Home Base:</b><br />" + address;
          map.setCenter(point, 13);
          var marker = new GMarker(point);
          map.addOverlay(marker);
          marker.openInfoWindowHtml(html);
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

	function plotTeamPointsWithPolygon(points, team) {
		var polygon_points = new Array()
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
					polygon_points.push(gpoint);
	      }
			}
			polygon_points.push(polygon_points[0]);
			var polygon = new GPolygon(polygon_points, "#003ff3", 5, 1, "#0000ff", 0.2);
			map.addOverlay(polygon);
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


function initialize_google_maps_with_territory_points_and_polygons(address, redteam, blueteam, redperimeter, blueperimeter) {

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

	function plotTeamPolygon(points, team) {
		if (team == 1) {
			var line_color = "#0000ff";
			var shade_color = "#003ff3";
		} else {
			var line_color = "#ff0000";
			var shade_color = "#f33f00";			
		}
		var polygon_points = new Array()
		if (points.length > 0) {
			for ( var i=points.length-1; i>=0; --i ){
				if (!points[i]) {
	        alert("point not found");
	      } else {
					// here we add a nice point to our map and adjust the bounds
					var gpoint = new GLatLng(points[i][0],points[i][1]);
					polygon_points.push(gpoint);
	      }
			}
			polygon_points.push(polygon_points[0]);
			var polygon = new GPolygon(polygon_points, line_color, 5, 1, shade_color, 0.2);
			map.addOverlay(polygon);
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
		plotTeamPolygon(redperimeter, 0);
		plotTeamPolygon(blueperimeter, 1);
  }
}




function initialize_google_maps_with_scenarios(coordinates, linkarray) {

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
	
	function plotScenarios(addresses, links) {
		if (addresses.length > 0) {
			for ( var i=addresses.length-1; i>=0; --i ){
				var current_link = links[i];
				
				if (!addresses[i]) {
	        alert("point not found");
	      } else {
					// here we add a nice point to our map and adjust the bounds
					var gpoint = new GLatLng(addresses[i][0],addresses[i][1]);
					bounds.extend(gpoint); 
	        map.addOverlay(createMarker(gpoint, current_link));
	        map.setCenter(bounds.getCenter(),map.getBoundsZoomLevel(bounds)); 
	      }
			}
		}
	}

  if (GBrowserIsCompatible()) {
    var map = new GMap2(document.getElementById("map_canvas"));
		var bounds = new GLatLngBounds;
    map.addControl(new GLargeMapControl());

		plotScenarios(coordinates, linkarray);
  }
}



// window.onload=initialize; 
// window.onunload=GUnload; 

