Router = Ember.Router.extend
  location: ENV.locationType

Router.map ->
  @route("fascrollview");
  @route("fagridlayout");
  @route("fasequentiallayout");

  @route("randomsquares");
  @route("scrollview");
  @route("flexiblelayout");
  @route("gridlayout");
  @route("sequentiallayout");

`export default Router`