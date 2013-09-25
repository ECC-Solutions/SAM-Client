// Filename: router.js
define([
    'jquery',    
    'underscore',
    'backbone',    
    'app/collections/schedule',
    'app/views/schedule',
    'app/views/dashboard'
], function($, _, Backbone, ScheduleCollection, ScheduleView, DashboardView) {
    var AppRouter = Backbone.Router.extend({
        routes: {
            // Define some URL routes
            'dash': 'defaultRoute',
            'schedule': 'scheduleRoute',
            'accounts': 'accountsRoute',
            'reports': 'reportsRoute',
            // Default
            '*actions': 'defaultRoute'
        },
        scheduleRoute: function() {
            // Create a new instance of the collection
            // You need to set the url in the collection as well to hit the server
            var schedulecollection = new ScheduleCollection();
            // Pass in the collection as the view expects it            
            var scheduleview = new ScheduleView({
                collection: schedulecollection                        
            });            
           //scheduleview.initialize();
           // No need of calling render here
           // as the render is hooked up to the reset event on collection          
        },
        defaultRoute: function(actions) {            
            // We have no matching route, lets display the home page
            DashboardView.render();
        }
    });

    var initialize = function() {                
        var app_router = new AppRouter;
        Backbone.history.start();
    };
    return {
        initialize: initialize
    };
});
