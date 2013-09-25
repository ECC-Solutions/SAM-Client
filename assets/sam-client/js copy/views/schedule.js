//// Filename: views/schedule
//define([
//    'jquery',
//    'underscore',
//    'backbone',
//    'config',
//    'collections/schedule',
//    //using  the require.js text! plugin, we are loaded raw text
//    //which will be used as our views primary template
//    'text!templates/schedule.html',
//    'text!templates/loading.html'
//], function($, _, Backbone, config, scheduleCollection, scheduleTemplate, loadingView) {
//
//var scheduleView = Backbone.View.extend({
//        el: $(".app"),
//        url: "http://localhost:8888/sam-client/sam-client/i/schedule",    
//        initialize: function() {
//            this.collection = scheduleCollection;   
//            //this.collection.bind("add", this.exampleBind);
//            //this.collection = scheduleCollection.add({ name: "Twitter"});
//        },
//        loading: function(){            
//            this.el.html(_.template(loadingView));            
//            this.render();            
//        },
//        events: {
//            "click #login": "login"
//        },
//        exampleBind: function( model ){
//          //console.log(model);
//        },                
//        render: function() {             
//            var data = {
//              schedule: this.collection.models,
//              _: _
//            };
//            var compiledTemplate = _.template(scheduleTemplate, data);
//            this.el.html(compiledTemplate);
//            console.log('schedule view loaded successfully');
//        },
//        click: function(){
//            console.log('test bind');
//        },
//        login: function() {
//            console.log('Please wait we are about to log you');
//        }
//    });
//    return new scheduleView;
//});
// Filename: views/schedule
define([
    'jquery',
    'underscore',
    'backbone',
    'collections/schedule',
    'text!templates/schedule.html'], function ($, _, Backbone, scheduleCollection, scheduleTemplate) {

    var scheduleView = Backbone.View.extend({

        el: $(".app"),
        initialize: function () {
            // Listen to the reset event which would call render
            this.listenTo(this.collection, 'reset', this.render);
            // Fetch the collection that will populate the collection
            // with the response 
            this.collection.fetch();
        },
        render: function () {
            console.log('schedule view loaded successfully');
            console.log(this.collection);
        }
    });
    return new scheduleView;
});