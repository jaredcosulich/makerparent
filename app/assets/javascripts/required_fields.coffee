$ ->
  $('form').on 'submit', ->
    $('form .required').each (index, form_group) ->
      if $(form_group).find('input').val().trim() == ''
        $(form_group).addClass('has-error')
      else
        $(form_group).removeClass('has-error')

    $('form .has-error').length == 0
