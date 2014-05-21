`import HafemCoreSurface from 'emberfam/utils/hafem/directives/famous/core/Surface'`

Component = Ember.Component.extend Ember.ViewTargetActionSupport,

  classNames: ['famous-context']

  layout: Ember.Handlebars.compile('{{yield}}')

  'fa-width': null
  'fa-height': null

  didInsertElement: ->
    @hafem.isolate.set(@)

    self = @

    fa = new HafemCoreSurface(
      size: [@get('fa-width'), @get('fa-height')]
      target: self.$()[0]
      elementType: 'span'
      content: self.$().html()
      properties:
        background: self.get('color')
    )

    @set('fa', fa)

    @hafem.isolate.get(@).get('fa').add(fa)

  willDestroy: ->
    @hafem.isolate.destroy(@)

  ###
    Actions
  ###
  click: ->
    @triggerAction(@)

`export default Component`