`import Hafem from '../../../directives/famous'`


Component = Hafem.Component.extend

  classNames: ['famous-context', 'famous-views-sequential-layout']

  famous:
    _type: Ember.A(['famous', 'famous-dom-consumer', 'famous-sequentialLayout'])

  surfaces: []

  'fa-direction': 0

  addTo: (source) ->
    @get('surfaces').push(source)

  init: ->
    @_super()
    @set('surfaces', [])

  willInsertFamous: ->

    self = @

    fa = new Hafem.Famous.Views.SequentialLayout(
      direction: @get('fa-direction')
    )

    fa.sequenceFrom(@get('surfaces'))

    @set('fa', fa)

    @hafem.isolate.get(@).addTo(fa)

`export default Component`