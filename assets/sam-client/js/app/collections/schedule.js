// Filename: collections/schedule
define([
    'jquery',
    'underscore',
    'backbone',
    'app/models/schedule'
], function ($, _, Backbone, ScheduleModel) {
    var ScheduleCollection = Backbone.Collection.extend({
        model: ScheduleModel,
        url: "http://sam-client:8888/sam-client/i/schedule",
        initialize: function () {
            //console.log('schedule collections loaded successfully');
        }
    });
    return ScheduleCollection;
});