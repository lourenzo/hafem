`import Resolver from 'ember/resolver'`
`import loadInitializers from 'ember/load-initializers'`
`import hafem from './utils/hafem/hafem'`

Ember.MODEL_FACTORY_INJECTIONS = true


App = Ember.Application.extend
  modulePrefix: "emberfam" # TODO: loaded via config
  Resolver: Resolver

loadInitializers App, "emberfam"

`export default App`
