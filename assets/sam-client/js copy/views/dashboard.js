// Filename: views/schedule
define([
    'jquery',
    'underscore',
    'backbone',
    'config',
    'collections/schedule',
    //using  the require.js text! plugin, we are loaded raw text
    //which will be used as our views primary template
    'text!templates/dashboard.html',
    'text!templates/loading.html'
], function($, _, Backbone, config, scheduleCollection, dashboardTemplate, loadingView) {

var scheduleView = Backbone.View.extend({
        el: $(".app"),
        initialize: function() {
            this.collection = scheduleCollection;
            this.collection.bind("add", this.exampleBind);
        },
        loading: function(){            
            this.el.html(_.template(loadingView));            
            this.render();            
        },
        events: {
            "click #login": "login"
        },
        render: function() {            
            var data = {};
            var compiledTemplate = _.template(dashboardTemplate, data);
            this.el.html(compiledTemplate);
        },
        click: function(){
            console.log('test bind');
        },
        login: function() {
            console.log('Please wait we are about to log you');
        }
    });
    return new scheduleView;
});
