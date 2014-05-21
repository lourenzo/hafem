`import HafemCoreTransform from 'emberfam/utils/hafem/directives/famous/core/Transform'`
`import HafemTransitionsEasing from 'emberfam/utils/hafem/directives/famous/transitions/Easing'`

Component = Ember.Component.extend

  classNames: ['famous-animation', 'famous-core-transform', 'famous-transitions-easing']

  'fa-curve': 'HafemTransitionsEasing.inOutBack'
  'fa-duration': 1000
  'fa-translate-x': null
  'fa-translate-y': null
  'fa-translate-z': null

  didInsertElement: ->
    self = @
    @hafem.isolate.get(@).get('transform').setTransform HafemCoreTransform.translate(@get('fa-translate-x'), @get('fa-translate-y'), @get('fa-translate-z')),
      duration: @get('fa-duration')
      curve: eval(@get('fa-curve'))

`export default Component`