`import HafemCoreSurface from '../../../directives/famous/core/Surface'`

Component = Ember.Component.extend Ember.ViewTargetActionSupport,

  classNames: ['famous-context', 'famous-core-surface']

  layout: Ember.Handlebars.compile('{{yield}}')

  'fa-width': `undefined`
  'fa-height': `undefined`

  didInsertElement: ->

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

    @hafem.isolate.get(@).addTo(fa)



  willDestroy: ->

  ###
    Actions
  ###
  click: ->
    @triggerAction(@)

`export default Component`