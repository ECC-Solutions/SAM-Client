// Filename: views/dashboard
define([
    'jquery',
    'underscore',
    'backbone',
    'app/config',
    'text!templates/dashboard.html',
    'text!templates/loading.html'
], function($, _, Backbone, Config, DashboardTemplate, LoadingView) {

var DashboardView = Backbone.View.extend({
        el: $("#test"),
        initialize: function() {},
        loading: function(){            
            this.$el.html(_.template(LoadingView));            
            this.render();            
        },
        events: {
            "click #login": "login"
        },
        render: function() {                        
            var compiledTemplate = _.template(DashboardTemplate);
            this.$el.html(compiledTemplate);
        },
        click: function(){
            console.log('test bind');
        },
        login: function() {
            console.log('Please wait we are about to log you');
        }
    });
    return new DashboardView;
});
