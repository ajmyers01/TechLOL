# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#myCarousel').carousel ->
    interval: 5000

  $('#carousel-text').html($('#slide-content-0').html())

  $('[id^=carousel-selector-]').click ->
    id_selector = $(this).attr("id")
    id = id_selector.substr(id_selector.length - 1)
    id = parseInt(id)
    $('#myCarousel').carousel(id)

  $('#myCarousel').on 'slid', (e) ->
    id = $('.item.active').data('slide-number')
    $('#carousel-text').html($('#slide-content-'+id).html())


