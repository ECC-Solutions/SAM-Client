// Filename: app.js
define([
    'jquery',
    'ui',
    'underscore',
    'backbone',
    'slimScroll',    
    'router' // Request router.js located on js/    
], function($, ui, _, Backbone, slimScroll, Router) {
    
    var initialize = function() {
                

        // Pass in our Router module and call it's initialize function
        Router.initialize();
    };
    return{        
        initialize: initialize
    };
});