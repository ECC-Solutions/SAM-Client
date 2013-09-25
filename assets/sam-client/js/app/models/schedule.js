// Filename: models/schedule
define([
    'underscore',
    'backbone',
    'app/config'], function (_, Backbone, Config) {
    var ScheduleModel = Backbone.Model.extend({
        // If you have any
        //idAttribute : 'someId'
        // You can leave this as is if you set the idAttribute
        // which would be appended directly to the url
        //urlRoot: "http://sam-client:8888/sam-client/i/schedule",
        defaults: {
            feedback: 'N/A'
        },
        initialize: function () {}
    });
    return ScheduleModel;

});