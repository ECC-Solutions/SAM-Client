// Filename: main.js
require.config({
    baseUrl: 'assets/sam-client/js/libs',
    paths: {
        jquery: 'libs/jquery/jquery-min',
        ui: 'libs/jquery/jquery-ui',
        underscore: 'libs/underscore/underscore-min',
        backbone: 'libs/backbone/backbone-optamd3-min',
        slimScroll: 'libs/slimscroll/slimscroll-min',
        text: 'libs/require/text',
        templates: '../template'
    },
    shim: {

        'backbone':{
            deps: ['underscore','jquery'],
            exports: ['Backbone']
        },
        'underscore':{
            exports: ['_']
        }

    },
    //force to retrieve from the server, not the cache [urgent need to remove for production]
    urlArgs: "bust=" + (new Date()).getTime()
});
require([
    //Load our app module and pass it to our definition function
    'app',
    'initial'//initial onload jquery functions and actions loaded on this file
], function(App) {
    // The "app" dependency is passed in as "App"
    App.initialize();
});
