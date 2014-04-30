window.App = Ember.Application.create()

App.Router.map ->

App.User = DS.Model.extend
  email: DS.attr('string')
  name: DS.attr('string')

App.IndexRoute = Ember.Route.extend
  model: ->
    @store.find('user')

