module.exports = (lineman) ->
  js:
    vendor: [
      "vendor/js/jquery.min.js"
      "vendor/js/handlebars.js"
      "vendor/js/ember.js"
      "vendor/js/ember-data.js"
      "vendor/js/auth.js"
      "vendor/js/store.js"
      "vendor/js/models/*.js"
      "vendor/js/controllers/*.js"
      "vendor/js/routes/*.js"
      "vendor/js/router.js"
      "vendor/js**/*.js"
    ]