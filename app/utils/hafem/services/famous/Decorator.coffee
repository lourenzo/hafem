Decorator = Ember.Object.extend

  isolate:

    containers: {}

    get: (from) ->
      @containers[from.$().parents('.famous-context').attr('id')]

    set: (from) ->
      @containers[from.get('elementId')] = from

    destroy: (from) ->
      delete @containers[from.get('elementId')]


`export default Decorator`
