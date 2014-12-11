# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require jquery
#= require jquery_ujs
#= require sketch

$(document).on 'click', '.save', (e) ->
  $('#part_img').val($('#simple_sketch')[0].toDataURL())

ready = ->
  # app/views/parts/_form.html.erb partial
  #  Setting up the Canvas
  $('#simple_sketch').sketch();

  $(document).on 'mousedown', '.save', (e) ->
    e.preventDefault()
    $('#part_img').val($('#simple_sketch')[0].toDataURL())
    console.log 'clicked on save'

  # app/views/parts/index.html.erb
  console.log 'hello there'
  console.log "canvas,", canvas = $('.show_part')
  console.log "ctx", ctx    = canvas[0].getContext('2d')
  image = new Image()
  image.src = canvas.data('uri')
  ctx.drawImage(image, 0, 0)


$(document).ready(ready)
$(document).on('page:load', ready)