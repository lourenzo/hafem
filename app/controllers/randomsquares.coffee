`import Hafem from 'emberfam/utils/hafem/directives/famous'`

Controller = Ember.ArrayController.extend
  actions:
    randomAnimation: (source) ->

      TargetTransform = @hafem.isolate.get(source).get('fa').get('transform')

      transitions = ['Hafem.Famous.Transitions.Easing.inQuad', 'Hafem.Famous.Transitions.Easing.outQuad', 'Hafem.Famous.Transitions.Easing.inOutQuad', 'Hafem.Famous.Transitions.Easing.inCubic', 'Hafem.Famous.Transitions.Easing.outCubic', 'Hafem.Famous.Transitions.Easing.inOutCubic', 'Hafem.Famous.Transitions.Easing.inQuart', 'Hafem.Famous.Transitions.Easing.outQuart', 'Hafem.Famous.Transitions.Easing.inOutQuart', 'Hafem.Famous.Transitions.Easing.inQuint', 'Hafem.Famous.Transitions.Easing.outQuint', 'Hafem.Famous.Transitions.Easing.inOutQuint', 'Hafem.Famous.Transitions.Easing.inSine', 'Hafem.Famous.Transitions.Easing.outSine', 'Hafem.Famous.Transitions.Easing.inOutSine', 'Hafem.Famous.Transitions.Easing.inExpo', 'Hafem.Famous.Transitions.Easing.outExpo', 'Hafem.Famous.Transitions.Easing.inOutExpo', 'Hafem.Famous.Transitions.Easing.inCirc', 'Hafem.Famous.Transitions.Easing.outCirc', 'Hafem.Famous.Transitions.Easing.inOutCirc', 'Hafem.Famous.Transitions.Easing.inElastic', 'Hafem.Famous.Transitions.Easing.outElastic', 'Hafem.Famous.Transitions.Easing.inOutElastic', 'Hafem.Famous.Transitions.Easing.inBack', 'Hafem.Famous.Transitions.Easing.outBack', 'Hafem.Famous.Transitions.Easing.inOutBack', 'Hafem.Famous.Transitions.Easing.inBounce', 'Hafem.Famous.Transitions.Easing.outBounce', 'Hafem.Famous.Transitions.Easing.inOutBounce']

      TargetTransform.setTransform Hafem.Famous.Core.Transform.translate(_.random(20, $(window).width() - source.$().width() - 20), _.random(20, $(window).height() - source.$().height() - 20), 0),
        duration: _.random(500, 2000)
        curve: eval(transitions[Math.floor(Math.random()*transitions.length)])

`export default Controller`