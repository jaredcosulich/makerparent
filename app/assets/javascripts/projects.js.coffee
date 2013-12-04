# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$( ->
  ready = ->
    $("#add-#{info[1]}").modal() if (info = location.href.match(/dialog=(\w+)/))

    $('.form-group .btn-checkbox').bind 'click', ->
      formGroup = $(this).closest('.form-group')
      formGroup.find('.btn-checkbox').removeClass('btn-primary')
      $(this).addClass('btn-primary')
      formGroup.find('input').val((if $(this).html().toLowerCase() == 'no' then 0 else 1))
    
    setSearchLink = ->
      getValue = (name) -> $(".#{name}-selection").html().replace(/\s/g, '').toLowerCase()
      
      link = $('.search')
      queryParams = []
      queryParams.push("age=#{parseInt(getValue('age'))}") if $('.age-selection').length
      queryParams.push("sort=#{getValue('sort')}") if $('.sort-selection').length
      queryParams.push("sort2=#{getValue('sort2')}") if $('.sort2-selection').length
      link.attr(href: "#{link.data('path')}?#{queryParams.join('&')}" )

    bindFilter = (name) ->
      $(".#{name}-dropdown a").bind 'click', (e) ->
        $(".#{name}-dropdown li").removeClass('active')
        $(".#{name}-selection").html($(this).html())
        $(this).closest('li').addClass('active')
        setSearchLink()

    bindFilter(name) for name in ['age', 'sort', 'sort2']
    setSearchLink()

    
  $(document).ready(ready)
  $(document).on('page:load', ready)
    
)