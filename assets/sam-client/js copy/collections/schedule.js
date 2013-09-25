//// Filename: collections/schedule
//define([
//  'jquery',
//  'underscore',
//  'backbone',
//  'config',
//  'models/schedule'
//], function($, _, Backbone, config, ScheduleModel){
//  var ScheduleCollection = Backbone.Collection.extend({
//    model: ScheduleModel,
//    initialize: function(){
//        console.log('schedule collections loaded successfully');
//    }
//  });
//  return new ScheduleCollection;
//});
// Filename: collections/schedule
define([
    'jquery',
    'underscore',
    'backbone',
    'models/schedule'
], function ($, _, Backbone, ScheduleModel) {
    var ScheduleCollection = Backbone.Collection.extend({
        model: ScheduleModel,
        url: "http://localhost:8888/client/i/schedule",
        initialize: function () {
            console.log('schedule collections loaded successfully');
        }
    });
    return ScheduleCollection;
});