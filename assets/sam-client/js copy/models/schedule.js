//// Filename: models/schedule
//define([
//  'underscore',
//  'backbone',
//  'config'
//], function(_, Backbone, config) {
//var ScheduleModel = Backbone.Model.extend({    
//    urlRoot: "http://localhost:8888/sam-client/sam-client/i/schedule",    
//    defaults: {
//      feedback: 'N/A'
//    },
//    initialize: function(){
//        console.log('schedule model loaded successfully');
//    }
//  });
//  return ScheduleModel;
//  
//});
define([
    'underscore',
    'backbone',
    'config'], function (_, Backbone, config) {
    var ScheduleModel = Backbone.Model.extend({
        // If you have any
        //idAttribute : 'someId'
        // You can leave this as is if you set the idAttribute
        // which would be apprnded directly to the url
        urlRoot: "http://localhost:8888/client/i/schedule",
        defaults: {
            feedback: 'N/A'
        },
        initialize: function () {
            console.log('schedule model loaded successfully');
        }
    });
    return ScheduleModel;

});