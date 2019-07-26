# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@initMap = ->
  center = 
    lat: 37.7275665375917
    lng: 37.7275665375917

  map = new (google.maps.Map) $('#map')[0],
    zoom: 2
    center: center

