# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$( ->
  setAgeLink = ->
    link = $('.search-age')
    link.attr(href: link.data('path') + '?age=' + parseInt($('.age-selection').html()))
  
  $('.age-dropdown a').bind 'click', (e) ->
    $('.age-dropdown li').removeClass('active')
    $('.age-selection').html($(this).html())
    $(this).closest('li').addClass('active')
    setAgeLink()

  setAgeLink()
)