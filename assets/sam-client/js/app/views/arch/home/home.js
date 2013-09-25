// Filename: views/test/test
define([
    'jquery',
    'underscore',
    'backbone',
    //using  the require.js text! plugin, we are loaded raw text
    //which will be used as our views primary template
    'text!templates/home/home.html'
], function($, _, Backbone, testTemplate) {
    var userTestView = Backbone.View.extend({
        el: $(".box"),
        initialize: function() {
        },
        render: function() {
            var data = {};
            var compiledTemplate = _.template(testTemplate, data);
            this.el.html(compiledTemplate);
        }
    });
    return new userTestView;
});
