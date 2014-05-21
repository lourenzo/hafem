`import HafemDecorator from 'emberfam/utils/hafem/services/famous/Decorator'`

HafemInitializer =
  name: "Hafem"

  initialize: (container, application) ->

    ###
    Isolate
    ###
    application.register 'hafem:isolate', HafemDecorator
    application.inject 'component', 'hafem', 'hafem:isolate'



`export default HafemInitializer`