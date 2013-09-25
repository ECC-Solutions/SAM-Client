// Filename: main.js
require.config({
    baseUrl: 'assets/sam-client/js/libs',
    paths: {
        app: '../app',
        templates: '../../template'
    },
    shim: {
        underscore: {
            exports: '_'
        },
        backbone: {
            deps: ["underscore", "jquery"],
            exports: "Backbone"
        },
        slimscroll: {
            deps: ["jquery"],
            exports: "slimscroll"
        },
        html5:{
            deps: ["jquery"],
            exports: ["html5"]
        },
        ui: {
            deps: ["jquery"],
            exports: "ui"
        }
    },
    //force to retrieve from the server, not the cache [urgent need to remove for production]
    urlArgs: "bust=" + (new Date()).getTime()
});
require([
    //Load our app module and pass it to our definition function
    '../legacy',
    'app/initial'//initial onload jquery functions and actions loaded on this file
], function(App) {
    // The "app" dependency is passed in as "App"
    App.initialize();
});
