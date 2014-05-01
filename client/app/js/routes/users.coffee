App.UsersIndexRoute = Em.Route.extend
  model: ->
    @store.findQuery 'user'