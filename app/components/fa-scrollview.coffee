`import HafemViewsScrollview from 'emberfam/utils/hafem/directives/famous/views/Scrollview'`

Component = Ember.Component.extend

  classNames: ['famous-context', 'famous-views-scrollview']

  surfaces: []

  addTo: (source) ->
    source.pipe @get('fa')
    console.log('###')
    @get('surfaces').push(source)
    console.log(@get('surfaces'))

  didInsertElement: ->
    @hafem.isolate.set(@)

    self = @

    fa = new HafemViewsScrollview()
    fa.sequenceFrom(@get('surfaces'))

    @set('fa', fa)

    @hafem.isolate.get(@).addTo(fa)

  willDestroy: ->
    @set('surfaces', [])
    @hafem.isolate.destroy(@)

`export default Component`