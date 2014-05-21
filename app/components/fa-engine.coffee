`import HafemCoreEngine from 'emberfam/utils/hafem/directives/famous/core/Engine'`

Component = Ember.Component.extend

  classNames: ['famous-context', 'famous-core-engine']

  layout: Ember.Handlebars.compile('{{yield}}')

  addTo: (source) ->
    @get('fa').add source

  didInsertElement: ->

    @hafem.isolate.set(@)

    fa = HafemCoreEngine.createContext(@$()[0])

    @set('fa', fa)

  willDestroy: ->
    @hafem.isolate.destroy(@)


`export default Component`