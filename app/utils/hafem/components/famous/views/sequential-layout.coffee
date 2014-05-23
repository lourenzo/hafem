`import HafemSequentialLayout from '../../../directives/famous/views/SequentialLayout'`

Component = Ember.Component.extend

  classNames: ['famous-context', 'famous-views-sequential-layout']

  surfaces: []

  'fa-direction': 90

  addTo: (source) ->
    @get('surfaces').push(source)

  init: ->
    @_super()
    @set('surfaces', [])

  didInsertElement: ->

    self = @

    fa = new HafemSequentialLayout(
      direction: @get('fa-direction')
    )

    fa.sequenceFrom(@get('surfaces'))

    @set('fa', fa)

    @hafem.isolate.get(@).addTo(fa)

`export default Component`