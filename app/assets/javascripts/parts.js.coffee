# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require jquery
#= require jquery_ujs
#= require sketch

$(document).on 'click', '.save', (e) ->
  $('#part_img').val($('#simple_sketch')[0].toDataURL())

ready = ->
  #  Setting up the Canvas
  $('#simple_sketch').sketch();
  
  $(document).on 'click', '.save', (e) ->
    e.preventDefault()
    $('#part_img').val($('#simple_sketch')[0].toDataURL())
    console.log 'clicked on save'

$(document).ready(ready)
$(document).on('page:load', ready)