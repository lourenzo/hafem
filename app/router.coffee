Router = Ember.Router.extend
  location: ENV.locationType

Router.map ->
  @route("randomsquares");
  @route("gridview");

`export default Router`