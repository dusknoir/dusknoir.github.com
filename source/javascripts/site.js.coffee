#= require _wowhead
#= require _colorbox

$ ->
  $('a[href*=#]').click ->
    if location.hostname is @hostname and location.path is @path
      $('html, body').animate(scrollTop: $(@hash).offset().top - 20, 500)
      false

  $('a[href$=png], *[rel=lightbox], *[rel=prettyPhoto], *[rel=colorbox]').colorbox()

  $('#body p img').css(
    cursor: 'pointer'
  ).hover(
    -> $(this).css(background: '#333')
  , -> $(this).css(background: '#0b0b0b')
  ).each ->
    $this = $(this)
    $this.colorbox
      href: $this.attr('src')
      title: $this.attr('title') || $this.attr('alt').replace(/\ \~(right|left)$/, '')
      width: '75%'
