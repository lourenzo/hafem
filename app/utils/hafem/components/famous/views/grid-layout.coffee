`import HafemViewsGridLayout from '../../../directives/famous/views/GridLayout'`

Component = Ember.Component.extend

  classNames: ['famous-context', 'famous-views-grid-layout']

  surfaces: []

  'fa-cols': 6
  'fa-rows': 2

  addTo: (source) ->
    @get('surfaces').push(source)

  init: ->
    @_super()
    @set('surfaces', [])

  didInsertElement: ->

    self = @

    fa = new HafemViewsGridLayout( dimensions: [
      @get('fa-cols')
      @get('fa-rows')
    ])

    fa.sequenceFrom(@get('surfaces'))

    @set('fa', fa)

    @hafem.isolate.get(@).addTo(fa)

  willDestroy: ->
    @set('surfaces', [])

`export default Component`