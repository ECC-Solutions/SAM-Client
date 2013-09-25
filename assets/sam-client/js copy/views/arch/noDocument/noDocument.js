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
            //console.log('s');
        },
        events: {
            "click #login" : "login"        
        },
        render: function() {
            //$(this.el).html(this.template());
        },
        login: function(){
            console.log('Please wait we are about to log you');
        }
    });
    return new userTestView;
});
