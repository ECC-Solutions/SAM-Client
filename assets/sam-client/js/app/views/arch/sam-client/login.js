// Filename: views/test/test
define([
    'jquery',
    'underscore',
    'backbone',
    //using  the require.js text! plugin, we are loaded raw text
    //which will be used as our views primary template
    'text!templates/sam-client/login.php'
], function($, _, Backbone, login) {
    var userTestView = Backbone.View.extend({
        el: $("#wrapper"),
        initialize: function() {},
        events: {
            "click #login" : "login"        
        },
        render: function() {
            var data = {};
            var compiledTemplate = _.template(login, data);
            this.el.find('.h').append(compiledTemplate);   
            
            
            
        },
        login: function(){
            console.log('Please wait we are about to log you');
        }
    });
    return new userTestView;
});
