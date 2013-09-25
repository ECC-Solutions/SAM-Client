// Filename: router.js
define([
    'jquery',
    'ui',
    'underscore',
    'backbone',
    'views/schedule',
    'views/dashboard'
], function($, ui, _, Backbone, scheduleView, dashboardView) {
    var AppRouter = Backbone.Router.extend({
        routes: {
            // Define some URL routes
            'schedule': 'scheduleRoute',
            // Default
            '*actions': 'defaultRoute'
        },
        scheduleRoute: function() {
            //console.log('hello');
            //scheduleView.render();
            var schedules = new Schedules();
            // Pass in the collection as the view expects it
            var scheduleView = new ScheduleView({
                collection: schedules
            });            
        },
        defaultRoute: function(actions) {            
            // We have no matching route, lets display the home page
            dashboardView.render();
        }
    });

    var initialize = function() {
        console.log(typeof + $);
        var app_router = new AppRouter;
        Backbone.history.start();
    };
    return {
        initialize: initialize
    };
});
