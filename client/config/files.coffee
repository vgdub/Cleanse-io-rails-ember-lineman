module.exports = (lineman) ->
  js:
    vendor: [
      "vendor/js/jquery.min.js"
      "vendor/js/handlebars.js"
      "vendor/js/ember.min.js"
      "vendor/js/ember-data.min.js"
      "vendor/js**/*.js"
    ]