`import HafemViewsScrollview from '../../../directives/famous/views/Scrollview'`
`import Hafem_Component from '../../../directives/ember/views/component'`

Component = Hafem_Component.extend

  classNames: ['famous-context', 'famous-views-scrollview']

  surfaces: []

  init: ->
    @_super()
    @set('surfaces', [])

  addTo: (source) ->
    source.pipe @get('fa')
    @get('surfaces').push(source)

  didInsertElement: ->

    self = @

    fa = new HafemViewsScrollview(
      target: self.$()[0]
    )
    fa.sequenceFrom(@get('surfaces'))

    @set('fa', fa)

    @hafem.isolate.get(@).addTo(fa)

`export default Component`