Route = Ember.Route.extend
  model: ->
    elements = []
    i = 0

    transitions = ['HafemTransitionsEasing.inQuad', 'HafemTransitionsEasing.outQuad', 'HafemTransitionsEasing.inOutQuad', 'HafemTransitionsEasing.inCubic', 'HafemTransitionsEasing.outCubic', 'HafemTransitionsEasing.inOutCubic', 'HafemTransitionsEasing.inQuart', 'HafemTransitionsEasing.outQuart', 'HafemTransitionsEasing.inOutQuart', 'HafemTransitionsEasing.inQuint', 'HafemTransitionsEasing.outQuint', 'HafemTransitionsEasing.inOutQuint', 'HafemTransitionsEasing.inSine', 'HafemTransitionsEasing.outSine', 'HafemTransitionsEasing.inOutSine', 'HafemTransitionsEasing.inExpo', 'HafemTransitionsEasing.outExpo', 'HafemTransitionsEasing.inOutExpo', 'HafemTransitionsEasing.inCirc', 'HafemTransitionsEasing.outCirc', 'HafemTransitionsEasing.inOutCirc', 'HafemTransitionsEasing.inElastic', 'HafemTransitionsEasing.outElastic', 'HafemTransitionsEasing.inOutElastic', 'HafemTransitionsEasing.inBack', 'HafemTransitionsEasing.outBack', 'HafemTransitionsEasing.inOutBack', 'HafemTransitionsEasing.inBounce', 'HafemTransitionsEasing.outBounce', 'HafemTransitionsEasing.inOutBounce']
    colors = ['AliceBlue', 'AntiqueWhite', 'Aqua', 'Aquamarine', 'Azure', 'Beige', 'Bisque', 'Black', 'BlanchedAlmond', 'Blue', 'BlueViolet', 'Brown', 'BurlyWood', 'CadetBlue', 'Chartreuse', 'Chocolate', 'Coral', 'CornflowerBlue', 'Cornsilk', 'Crimson', 'Cyan', 'DarkBlue', 'DarkCyan', 'DarkGoldenRod', 'DarkGray', 'DarkGreen', 'DarkKhaki', 'DarkMagenta', 'DarkOliveGreen', 'DarkOrange', 'DarkOrchid', 'DarkRed', 'DarkSalmon', 'DarkSeaGreen', 'DarkSlateBlue', 'DarkSlateGray', 'DarkTurquoise', 'DarkViolet', 'DeepPink', 'DeepSkyBlue', 'DimGray', 'DodgerBlue', 'FireBrick', 'FloralWhite', 'ForestGreen', 'Fuchsia', 'Gainsboro', 'GhostWhite', 'Gold', 'GoldenRod', 'Gray', 'Green', 'GreenYellow', 'HoneyDew', 'HotPink', 'IndianRed ', 'Indigo ', 'Ivory', 'Khaki', 'Lavender', 'LavenderBlush', 'LawnGreen', 'LemonChiffon', 'LightBlue', 'LightCoral', 'LightCyan', 'LightGoldenRodYellow', 'LightGray', 'LightGreen', 'LightPink', 'LightSalmon', 'LightSeaGreen', 'LightSkyBlue', 'LightSlateGray', 'LightSteelBlue', 'LightYellow', 'Lime', 'LimeGreen', 'Linen', 'Magenta', 'Maroon', 'MediumAquaMarine', 'MediumBlue', 'MediumOrchid', 'MediumPurple', 'MediumSeaGreen', 'MediumSlateBlue', 'MediumSpringGreen', 'MediumTurquoise', 'MediumVioletRed', 'MidnightBlue', 'MintCream', 'MistyRose', 'Moccasin', 'NavajoWhite', 'Navy', 'OldLace', 'Olive', 'OliveDrab', 'Orange', 'OrangeRed', 'Orchid', 'PaleGoldenRod', 'PaleGreen', 'PaleTurquoise', 'PaleVioletRed', 'PapayaWhip', 'PeachPuff', 'Peru', 'Pink', 'Plum', 'PowderBlue', 'Purple', 'Red', 'RosyBrown', 'RoyalBlue', 'SaddleBrown', 'Salmon', 'SandyBrown', 'SeaGreen', 'SeaShell', 'Sienna', 'Silver', 'SkyBlue', 'SlateBlue', 'SlateGray', 'Snow', 'SpringGreen', 'SteelBlue', 'Tan', 'Teal', 'Thistle', 'Tomato', 'Turquoise', 'Violet', 'Wheat', 'White', 'WhiteSmoke', 'Yellow', 'YellowGreen']

    windoww = $(window).width()

    currentx = 0
    currenty = 0

    while i < 50
      transition = ""
      color = colors[Math.floor(Math.random()*colors.length)]
      wh = _.random(140, 250)
      element = {
        name: "#{color} Square"
        color: "#{color}"
        width: wh
        height: wh
        positionx: currentx
        positiony: currenty
        transform: {
          from:{
            x: _.random(20, 500)
            y: _.random(20, 500)
            z: 0
          }
          to:{
            x: _.random(20, $(window).width() - wh - 20)
            y: _.random(20, $(window).height() - wh - 20)
            z: 0
          }
        }
        duration: _.random(500, 2000)
        curve: transitions[Math.floor(Math.random()*transitions.length)]
      }

      elements.push(element)

      if currentx < windoww
        currentx = currentx + 200
      else
        currenty = currenty + 200
        currentx = 0

      i++

    Ember.A(elements)

`export default Route`