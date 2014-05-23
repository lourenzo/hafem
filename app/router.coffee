Router = Ember.Router.extend
  location: ENV.locationType

Router.map ->
  @route("fascrollview");
  @route("fagridlayout");

  @route("randomsquares");
  @route("scrollview");
  @route("gridlayout");
  @route("sequentiallayout");

`export default Router`