(($) ->
  $ ->
    layers = initializeScrollableLayers()

    updateScrollableLayers = (e) ->
      scrollTop = parseInt $(document).scrollTop()
      for layer in layers
        layer.elem.css 'top', getNewLayerTop(layer, scrollTop)

    updateScrollableLayers()
    $(document).scroll updateScrollableLayers

  initializeScrollableLayers = ->
    layers = []
    $layers = $(".scrollable-layer")
    if $layers?
      for layer in $layers
        data = {}
        $layer = $(layer)
        data.elem = $layer
        data.init = getNumberData($layer, 'layer-top') || 0
        data.start = getNumberData($layer, 'scroll-start') || 0
        data.end = getNumberData($layer, 'scroll-end') || $(document).height()
        data.min = data.init - (data.end - data.start)
        layers.push data
        $layer.css 'position', 'fixed'
        $layer.css 'top', data.init
    layers

  getNewLayerTop = (layer, scrollTop) ->
    top = layer.init - (scrollTop - layer.start)
    top = layer.min if top < layer.min
    top = layer.init if top > layer.init
    top
      
  getNumberData = ($layer, type) ->
    numStr = $layer.data(type)
    if numStr? then parseInt numStr else null

)(window.jQuery)
