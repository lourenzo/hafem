`import HafemDecorator from '../services/famous/Decorator'`

`import HafemAnimationComponent from '../components/famous/core/fa-animation'`
`import HafemEngineComponent from '../components/famous/core/fa-engine'`
`import HafemModifierComponent from '../components/famous/core/fa-modifier'`
`import HafemSurfaceomponent from '../components/famous/core/fa-surface'`
`import HafemViewComponent from '../components/famous/core/fa-view'`

`import HafemScrollviewComponent from '../components/famous/views/fa-scrollview'`
`import HafemGridLayoutComponent from '../components/famous/views/fa-gridlayout'`


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
    container.register('component:fa-surface', HafemSurfaceomponent);
    container.register('component:fa-view', HafemViewComponent);

    container.register('component:fa-scrollview', HafemScrollviewComponent);
    container.register('component:fa-gridlayout', HafemGridLayoutComponent);


`export default HafemInitializer`