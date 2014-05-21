`import HafemCoreEngine from 'emberfam/utils/hafem/directives/famous/core/Engine'`

Component = Ember.Component.extend

  classNames: ['famous-context']

  layout: Ember.Handlebars.compile('{{yield}}')

  willInsertElement: ->

    @hafem.isolate.set(@)

    fa = HafemCoreEngine.createContext(@$()[0])

    @set('fa', fa)


`export default Component`