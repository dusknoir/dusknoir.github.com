#= require _wowhead
#= require _colorbox

$ ->
  # fancy scrolling
  $('a[href*=#]').click ->
    if location.hostname is @hostname and location.pathname is @pathname
      $('html, body').animate(scrollTop: $(@hash).offset().top - 20, 500)

  # lightbox
  $('a[href$=png], *[rel=lightbox], *[rel=prettyPhoto], *[rel=colorbox]').colorbox()

  # automatically linkify images
  over = -> $(this).css(background: '#333')
  out = -> $(this).css(background: '#0b0b0b')

  $('#body p img').css(cursor: 'pointer').hover(over, out).each ->
    $this = $(this)
    $this.colorbox
      href: $this.attr('src')
      title: $this.attr('title') || $this.attr('alt').replace(/\ \~(right|left)$/, '')
      width: '75%'
