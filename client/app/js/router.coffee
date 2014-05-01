DS.RESTAdapter.reopen
  namespace: 'api'

App.Router.map ->
  @resource '/api/users', ->
    @route 'show', { path: '/:user_id' }

App.IndexRoute = Ember.Route.extend
  model: ->
    @store.find('user')