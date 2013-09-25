// Filename: views/schedule
define([
    'jquery',
    'underscore',
    'backbone',
    'text!templates/schedule.html'
], function ($, _, Backbone, ScheduleTemplate) {

    var scheduleView = Backbone.View.extend({        
        el: $("#test"),
        initialize: function () {
            // Listen to the reset event which would call render
            this.listenTo(this.collection, 'reset', this.render());
            // Fetch the collection that will populate the collection
            // with the response 
            this.collection.fetch();            
            
        },
        render: function () {   
            var data = {
              schedule: this.collection.models,
              _: _
            };
            var compiledTemplate = _.template(ScheduleTemplate, data);            
            this.$el.html(compiledTemplate);
            //console.log(this.schedule);
            return this;
        }
    });  
    return scheduleView;
});