#= require _prettyPhoto
#= require _wowhead

$ ->
  $('a[href*=#]').click ->
    if location.hostname is @hostname and location.path is @path
      $('html, body').animate(scrollTop: $(@hash).offset().top - 20, 500)
      false

  $('a[href$=png], *[rel=lightbox], *[rel=prettyPhoto]').prettyPhoto
    theme: 'dark_square'
    social_tools: ''
