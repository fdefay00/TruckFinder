// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require turbolinks
//= require_tree .
/* global $ */
/*
$(document).on('turbolinks:load', function(){
  if ($('#map').length > 0){
    // Google Maps Javascript API
    var google_map = $('meta[name=google_maps]').attr("content");
    $.getScript(`https://maps.googleapis.com/maps/api/js?key=${google_map}&callback=initMap`);
  }
})

*/

// This example adds a search box to a map, using the Google Place Autocomplete
      // feature. People can enter geographical searches. The search box will return a
      // pick list containing a mix of places and predicted search terms.

      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">


      var map;
      function initAutocomplete() {
         map = new google.maps.Map(document.getElementById('map'), {
          center: {lat:37.7806943774082, lng: -122.409668813219},
          zoom: 17,
          mapTypeId: 'roadmap'
        });
        
        // Create the search box and link it to the UI element.
        var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        // Bias the SearchBox results towards current map's viewport.
        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
        });
      }
      
      
      function initMap(lat, lng) {
        
        var myCoords = new google.maps.LatLng(lat, lng);
        
        
        
    var marker = new google.maps.Marker({
        position: myCoords,
        map: map
    });

      
}