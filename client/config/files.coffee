module.exports = (lineman) ->
  js:
    vendor: [
      "vendor/js/jquery.min.js"
      "vendor/js/handlebars.js"
      "vendor/js/ember.js"
      "vendor/js/ember-data.js"
      "vendor/js**/*.js"
    ]