###
  Easy Nested Forms Script, by David Lesches.

  This re-usuable script allows you to easily duplicate and remove sections from nested forms.
  Simply wrap the nested form section in a .duplicatable_nested_form class div.
  The rest just works.
###


jQuery ($) ->
  $(document).ready ->
    if $('.duplicatable_nested_form').length

      nestedForm = $('.duplicatable_nested_form').first().clone()
      formsOnPage = 0

      $(".destroy_duplicate_nested_form:first-child").remove()

      $('.destroy_duplicate_nested_form').live 'click', (e) ->
        e.preventDefault()
        $(this).closest('.duplicatable_nested_form').slideUp().remove()

      $('.duplicate_nested_form').click (e) ->
        e.preventDefault()

        lastNestedForm = $('.duplicatable_nested_form').last()
        newNestedForm  = $(nestedForm).clone()

        formsOnPage++

        $(newNestedForm).find('label').each ->
          oldLabel = $(this).attr 'for'
          newLabel = oldLabel.replace '_0_', "_#{formsOnPage}_"
          $(this).attr 'for', newLabel

        $(newNestedForm).find('select, input').each ->
          oldId = $(this).attr 'id'
          newId = oldId.replace '_0_', "_#{formsOnPage}_"
          $(this).attr 'id', newId

          oldName = $(this).attr 'name'
          newName = oldName.replace '[0]', "[#{formsOnPage}]"
          $(this).attr 'name', newName

        $( newNestedForm ).insertAfter( lastNestedForm )



