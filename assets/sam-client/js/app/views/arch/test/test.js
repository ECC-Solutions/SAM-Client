// Filename: views/test/test
define([
    'jquery',
    'underscore',
    'backbone',
    'collections/test',
    //using  the require.js text! plugin, we are loaded raw text
    //which will be used as our views primary template
    'text!templates/test/test.html'
], function($, _, Backbone, testCollection, testTemplate) {
    var userTestView = Backbone.View.extend({
        el: $("#wrapper"),
        initialize: function() {
            this.collection = testCollection;
            this.collection.bind("add", this.exampleBind);
            this.collection = testCollection.add({name: "Twitter"});
            this.collection = testCollection.add({name: "Facebook"});
            this.collection = testCollection.add({name: "Myspace", score: 20});
        },
        render: function() {
            var data = {};
            var compiledTemplate = _.template(testTemplate, data);
            this.el.html(compiledTemplate);
        },
        render: function() {
            var data = {
                testing: this.collection.models,
                _: _
            };
            var compiledTemplate = _.template(testTemplate, data);
            $("#wrapper").html(compiledTemplate);
        }
    });
    return new userTestView;
});
