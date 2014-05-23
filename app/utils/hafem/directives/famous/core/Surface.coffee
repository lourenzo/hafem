HafemCoreSurface = (options) ->
  self = @
  Surface = famous.core.Surface
  surface = new Surface(options)

  surface.setup = (allocator) ->

    if options.target
      Surface::elementType = options.target
      allocator.allocate = (type) ->
        result = type
        @nodeCount++
        result
    else
      Surface::elementType = if options.elementType then Surface::elementType else Surface::elementType

    #surface.allocator = allocator
    Surface::setup.call(@, allocator)
    return

  surface.deploy = (target) ->
    Surface::deploy.call(surface, target)

  surface.cleanup = (allocator) ->
    self.templateInstance and self.templateInstance.dom.remove()
    Surface::cleanup.call(surface, allocator)

  surface

`export default HafemCoreSurface`
