View = Ember.View.extend
  didInsertElement: ->
    #@famousScrollviewDemo()

  famousScrollviewDemo: ->
    Engine = famous.core.Engine
    Surface = famous.core.Surface
    Scrollview = famous.views.Scrollview
    mainContext = Engine.createContext()
    scrollview = new Scrollview()
    surfaces = []
    scrollview.sequenceFrom surfaces
    i = 0
    temp = undefined
    
    while i < 40
      temp = new Surface(
        content: "Surface: " + (i + 1)
        size: [
          `undefined`
          200
        ]
        properties:
          backgroundColor: "hsl(" + (i * 360 / 40) + ", 100%, 50%)"
          lineHeight: "200px"
          textAlign: "center"
      )
      temp.pipe scrollview
      surfaces.push temp
      i++
    mainContext.add scrollview
    
`export default View`