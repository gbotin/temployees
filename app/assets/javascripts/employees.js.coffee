$(document).ready ->

  $(document).on 'click', "#employees a > i.icon-resize-full", ->
    hideAll()
    $tr = $(this).closest('tr.small').addClass('hide')
    $tr.next('tr.expanded').removeClass('hide')
    return false

  $(document).on 'click', "#employees a > i.icon-resize-small", ->
    hideAll()
    return false

  hideAll = ->
    $("#employees tr.small").removeClass('hide')
    $("#employees tr.expanded").addClass('hide')