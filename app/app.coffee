`import Resolver from 'ember/resolver'`
`import loadInitializers from 'ember/load-initializers'`
`import hafemInitializer from 'emberfam/utils/hafem/initializers/hafem'`

Ember.MODEL_FACTORY_INJECTIONS = true

Ember.Application.initializer(hafemInitializer);

Ember.libraries.register("Hafem", "0.0.1");

App = Ember.Application.extend
  modulePrefix: "emberfam" # TODO: loaded via config
  Resolver: Resolver

loadInitializers App, "emberfam"

`export default App`
