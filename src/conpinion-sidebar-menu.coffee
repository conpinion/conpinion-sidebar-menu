Polymer

  is: 'conpinion-sidebar-menu'

  properties:
    selected: {type: String, notify: true}
    attrForSelected: {type: String, value: 'name'}
    router: {type: Object}

  _itemSelected: (e) ->
    item = e.detail.item
    if item.nodeName == 'conpinion-SIDEBAR-ITEM'
      @selected = e.detail.item.getAttribute @attrForSelected
      @router.go item.route if item.route && @router

