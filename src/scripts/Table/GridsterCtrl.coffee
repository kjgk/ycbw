'use strict'

angular.module('app.tables.gridster', [])

.controller('gridsterCtrl', [
    '$scope', '$filter'
    ($scope, $filter) ->
      $scope.standardItems = [
        { sizeX: 2, sizeY: 2, row: 0, col: 0 }
        { sizeX: 2, sizeY: 2, row: 0, col: 0 }
#        { sizeX: 2, sizeY: 2, row: 0, col: 2 },
#        { sizeX: 1, sizeY: 1, row: 0, col: 4 },
#        { sizeX: 1, sizeY: 1, row: 0, col: 5 },
#        { sizeX: 2, sizeY: 1, row: 1, col: 0 },
#        { sizeX: 1, sizeY: 1, row: 1, col: 4 },
#        { sizeX: 1, sizeY: 2, row: 1, col: 5 },
#        { sizeX: 1, sizeY: 1, row: 2, col: 0 },
#        { sizeX: 2, sizeY: 1, row: 2, col: 1 },
#        { sizeX: 1, sizeY: 1, row: 2, col: 3 },
#        { sizeX: 1, sizeY: 1, row: 2, col: 4 }
      ];

      $scope.toogleFloating = ->
        $scope.gridsterOpts.floating = !$scope.gridsterOpts.floating
      $scope.tooglePushing = ->
        $scope.gridsterOpts.pushing = !$scope.gridsterOpts.pushing

      $scope.gridsterOpts = {
        columns: 32
        minColumns: 1
        minRows: 1
        maxRows: 32
        floating: false
#      pushing: true, // whether to push other items out of the way on move or resize
#      floating: true, // whether to automatically float items up so they stack (you can temporarily disable if you are adding unsorted items with ng-repeat)
#      width: 'auto', // can be an integer or 'auto'. 'auto' scales gridster to be the full width of its containing element
#      colWidth: 'auto', // can be an integer or 'auto'.  'auto' uses the pixel width of the element divided by 'columns'
#      rowHeight: 'match', // can be an integer or 'match'.  Match uses the colWidth, giving you square widgets.
#      margins: [10, 10], // the pixel distance between each widget
#      outerMargin: true, // whether margins apply to outer edges of the grid
#      isMobile: false, // stacks the grid items if true
#      minColumns: 1, // the minimum columns the grid must have
#      minRows: 2, // the minimum height of the grid, in rows
#      maxRows: 100,
#      defaultSizeX: 2, // the default width of a gridster item, if not specifed
#      defaultSizeY: 1, // the default height of a gridster item, if not specified
#      mobileBreakPoint: 600, // if the screen is not wider that this, remove the grid layout and stack the items
#      resizable: {
#        enabled: true,
#        handles: 'n, e, s, w, ne, se, sw, nw',
#        start: function(event, uiWidget, $element) {}, // optional callback fired when resize is started,
#      resize: function(event, uiWidget, $element) {}, // optional callback fired when item is resized,
#      stop: function(event, uiWidget, $element) {} // optional callback fired when item is finished resizing
#      },
#      draggable: {
#      enabled: true, // whether dragging items is supported
#        handle: '.my-class', // optional selector for resize handle
#        start: function(event, uiWidget, $element) {}, // optional callback fired when drag is started,
#      drag: function(event, uiWidget, $element) {}, // optional callback fired when item is moved,
#      stop: function(event, uiWidget, $element) {} // optional callback fired when item is finished dragging
#      }
      }
  ])