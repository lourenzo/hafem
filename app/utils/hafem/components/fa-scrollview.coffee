`import HafemViewsScrollview from 'emberfam/utils/hafem/directives/famous/views/Scrollview'`

Component = Ember.Component.extend

  classNames: ['famous-context', 'famous-views-scrollview']

  surfaces: []

  addTo: (source) ->
    source.pipe @get('fa')
    @get('surfaces').push(source)

  didInsertElement: ->

    self = @

    fa = new HafemViewsScrollview()
    fa.sequenceFrom(@get('surfaces'))

    @set('fa', fa)

    @hafem.isolate.get(@).addTo(fa)

  willDestroy: ->
    @set('surfaces', [])

`export default Component`