Decorator = Ember.Object.extend

  isolate:

    containers: {}

    get: (source) ->
      @containers[source.$().parents('.famous-context').attr('id')]

    set: (source) ->
      @containers[source.get('elementId')] = source

    destroy: (source) ->
      delete @containers[source.get('elementId')]


`export default Decorator`
