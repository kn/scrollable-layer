$ ->
  module 'scrollable-layer'

  test 'should initialize css top and position of an element with scrollable-layer class', ->
    ok $(document.body).find('.layer.scrollable-layer').css('top') == '30px', 'layer top is initialized'
    ok $(document.body).find('.layer.scrollable-layer').css('position') == 'fixed', 'layer postition is set to fixed'

  test 'should assign a default value if attributes is not given', ->
    ok $(document.body).find('.layer-no-attr.scrollable-layer').css('top') == '0px', 'layer top is assigned a default value 0'
