`import HafemDecorator from '../services/famous/Decorator'`

`import HafemAnimationComponent from '../components/fa-animation'`
`import HafemEngineComponent from '../components/fa-engine'`
`import HafemModifierComponent from '../components/fa-modifier'`
`import HafemScrollviewComponent from '../components/fa-scrollview'`
`import HafemSurfaceomponent from '../components/fa-surface'`
`import HafemViewComponent from '../components/fa-view'`


HafemInitializer =
  name: "hafem"

  initialize: (container, application) ->

    ###
    Isolate
    ###
    application.register 'hafem:isolate', HafemDecorator
    application.inject 'component', 'hafem', 'hafem:isolate'
    application.inject 'controller', 'hafem', 'hafem:isolate'
    application.inject 'route', 'hafem', 'hafem:isolate'

    ###
    Components
    ###
    container.register('component:fa-animation', HafemAnimationComponent);
    container.register('component:fa-engine', HafemEngineComponent);
    container.register('component:fa-modifier', HafemModifierComponent);
    container.register('component:fa-scrollview', HafemScrollviewComponent);
    container.register('component:fa-surface', HafemSurfaceomponent);
    container.register('component:fa-view', HafemViewComponent);


`export default HafemInitializer`