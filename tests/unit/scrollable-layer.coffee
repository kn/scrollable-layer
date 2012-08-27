$ ->
  module 'scrollable-layer'

  test 'should initialize css top and position of an element with scrollable-layer class', ->
    ok $(document.body).find('.scrollable-layer').css('top') == '30px', 'layer top is initialized'
    ok $(document.body).find('.scrollable-layer').css('position') == 'fixed', 'layer postition is set to fixed'
