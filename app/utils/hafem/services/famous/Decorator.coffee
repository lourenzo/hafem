Decorator = Ember.Object.extend

  isolate:

    get: (source) ->
      Ember.View.views[source.$().parents('.famous-context').attr('id')]

`export default Decorator`
