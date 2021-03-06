$(document).ready ->

  maps = []

  $(document).on 'click', "#employees a > .glyphicon-resize-full", ->
    hideAll()
    $tr = $(this).closest('tr.collapsed').addClass('hide')
    $tr.next('tr.expanded').removeClass('hide')
    $.each maps, (i, map) ->
      google.maps.event.trigger(map, "resize");
    return false

  $(document).on 'click', "#employees a > .glyphicon-resize-small", ->
    hideAll()
    return false

  hideAll = ->
    $("#employees tr.collapsed").removeClass('hide')
    $("#employees tr.expanded").addClass('hide')

  initialize = ->
    $('.map').each ->
      mapOptions =
        zoom: 8,
        center: new google.maps.LatLng(-34.397, 150.644),
        mapTypeId: google.maps.MapTypeId.ROADMAP
      map = new google.maps.Map(document.getElementById($(this).attr('id')), mapOptions)
      maps.push(map)

  initialize()  
  $('.label').popover()

  $(window).bind 'page:change', ->
    initialize()  
    $('.label').popover()