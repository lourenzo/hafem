`import HafemCoreView from '../directives/famous/core/View'`

Component = Ember.Component.extend

  classNames: ['famous-context', 'famous-core-view']

  addTo: (source) ->
    @get('fa').add(source)

  didInsertElement: ->

    self = @

    fa = new HafemCoreView()

    @set('fa', fa)

    @hafem.isolate.get(@).get('fa').add fa

`export default Component`