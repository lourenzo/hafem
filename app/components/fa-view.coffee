`import HafemCoreView from 'emberfam/utils/hafem/directives/famous/core/View'`

Component = Ember.Component.extend

  classNames: ['famous-context']

  willInsertElement: ->

    @hafem.isolate.set(@)

    self = @

    fa = new HafemCoreView()

    @set('fa', fa)

    @hafem.isolate.get(@).get('fa').add fa

`export default Component`