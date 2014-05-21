`import HafemCoreView from 'emberfam/utils/hafem/directives/famous/core/View'`

Component = Ember.Component.extend

  classNames: ['famous-context', 'famous-core-view']

  addTo: (source) ->
    @get('fa').add(source)

  didInsertElement: ->

    @hafem.isolate.set(@)

    self = @

    fa = new HafemCoreView()

    @set('fa', fa)

    @hafem.isolate.get(@).get('fa').add fa

  willDestroy: ->
    @hafem.isolate.destroy(@)

`export default Component`