`import Hafem from '../../../directives/famous'`

Component = Hafem.Component.extend

  classNames: ['famous', 'famous-dom-consumer', 'famous-gridLayout', 'famous-group', 'famous-container-group']

  famous:
    _type: Ember.A(['famous', 'famous-dom-consumer', 'famous-gridLayout'])

  surfaces: []

  'fa-cols': 6
  'fa-rows': 2

  addTo: (source) ->
    @get('surfaces').push(source)

  init: ->
    @_super()
    @set('surfaces', [])

  willInsertFamous: ->

    self = @

    fa = new Hafem.Famous.Views.GridLayout( dimensions: [
      @get('fa-cols')
      @get('fa-rows')
    ])

    fa.sequenceFrom(@get('surfaces'))

    @set('fa', fa)

    @hafem.isolate.get(@).addTo(fa)

`export default Component`