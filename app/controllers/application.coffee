`import HafemCoreTransform from 'emberfam/utils/hafem/directives/famous/core/Transform'`
`import HafemTransitionsEasing from 'emberfam/utils/hafem/directives/famous/transitions/Easing'`

Controller = Ember.ArrayController.extend
  actions:
    randomAnimation: (source) ->

      transitions = ['HafemTransitionsEasing.inQuad', 'HafemTransitionsEasing.outQuad', 'HafemTransitionsEasing.inOutQuad', 'HafemTransitionsEasing.inCubic', 'HafemTransitionsEasing.outCubic', 'HafemTransitionsEasing.inOutCubic', 'HafemTransitionsEasing.inQuart', 'HafemTransitionsEasing.outQuart', 'HafemTransitionsEasing.inOutQuart', 'HafemTransitionsEasing.inQuint', 'HafemTransitionsEasing.outQuint', 'HafemTransitionsEasing.inOutQuint', 'HafemTransitionsEasing.inSine', 'HafemTransitionsEasing.outSine', 'HafemTransitionsEasing.inOutSine', 'HafemTransitionsEasing.inExpo', 'HafemTransitionsEasing.outExpo', 'HafemTransitionsEasing.inOutExpo', 'HafemTransitionsEasing.inCirc', 'HafemTransitionsEasing.outCirc', 'HafemTransitionsEasing.inOutCirc', 'HafemTransitionsEasing.inElastic', 'HafemTransitionsEasing.outElastic', 'HafemTransitionsEasing.inOutElastic', 'HafemTransitionsEasing.inBack', 'HafemTransitionsEasing.outBack', 'HafemTransitionsEasing.inOutBack', 'HafemTransitionsEasing.inBounce', 'HafemTransitionsEasing.outBounce', 'HafemTransitionsEasing.inOutBounce']

      @hafem.isolate.get(source).get('fa').get('transform').setTransform HafemCoreTransform.translate(_.random(20, $(window).width() - source.$().width() - 20), _.random(20, $(window).height() - source.$().height() - 20), 0),
        duration: _.random(500, 2000)
        curve: eval(transitions[Math.floor(Math.random()*transitions.length)])

`export default Controller`