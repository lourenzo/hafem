`import HafemCoreEngine from 'emberfam/utils/hafem/directives/famous/core/Engine'`

Component = Ember.Component.extend

  classNames: ['famous-context']

  layout: Ember.Handlebars.compile('{{yield}}')

  didInsertElement: ->

    @hafem.isolate.set(@)

    fa = HafemCoreEngine.createContext(@$()[0])

    window.fooo = @hafem.isolate.containers

    @set('fa', fa)

  willDestroy: ->
    @hafem.isolate.destroy(@)


`export default Component`