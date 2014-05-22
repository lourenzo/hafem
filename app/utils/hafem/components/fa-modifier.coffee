`import HafemCoreModifier from '../directives/famous/core/Modifier'`
`import HafemCoreTransform from '../directives/famous/core/Transform'`

Component = Ember.Component.extend

  classNames: ['famous-context', 'famous-core-modifier', 'famous-core-transform']

  layout: Ember.Handlebars.compile('{{yield}}')

  'fa-translate-x': null
  'fa-translate-y': null
  'fa-translate-z': null
  'fa-rotate-z': null

  addTo: (source) ->
    @get('fa').add(source)

  addTransform: (transform) ->
    self = @


    transform = new HafemCoreModifier({
      transform: transform
    });

    @set('fa', @get('fa').add(transform))

    @set('transform', transform)

  didInsertElement: ->

    @set('fa', @hafem.isolate.get(@).get('fa'))

    @addTransform(HafemCoreTransform.translate(@get('fa-translate-x'), @get('fa-translate-y'), @get('fa-translate-z')))

    if @get('fa-rotate-z')
      @addTransform(HafemCoreTransform.rotateZ(@get('fa-rotate-z')))

`export default Component`