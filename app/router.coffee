Router = Ember.Router.extend
  location: ENV.locationType

Router.map ->
  @route("randomsquares");
  @route("gridview");
  @route("scrollview");
  @route("gridlayout");

`export default Router`