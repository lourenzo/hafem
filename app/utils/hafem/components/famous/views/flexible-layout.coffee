`import Hafem from '../../../directives/famous'`


Component = Hafem.Component.extend

  classNames: ['famous-context', 'famous-views-flexible-layout']

  famous:
    _type: Ember.A(['famous', 'famous-dom-consumer', 'famous-flexibleLayout'])

  surfaces: []

  'fa-ratio': '[1]'

  addTo: (source) ->
    @get('surfaces').push(source)

  init: ->
    @_super()
    @set('surfaces', [])

  willInsertFamous: ->

    layout = new Famous.Views.FlexibleLayout(
      ratios: eval(@get('fa-ratio'))
      direction: 0
    )

    layout.sequenceFrom @get('surfaces')
    @hafem.isolate.get(@).addTo(layout)

`export default Component`