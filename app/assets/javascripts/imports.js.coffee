$(document).on 'click', 'a#browse', ->
  $('input[id=import_file]').click()

$(document).on 'change', 'input[id=import_file]', ->
  $('#file_text').val($(this).val().replace(/\w:\\\w+\\/gi, ''));