// Filename: initial.js
define([
    'jquery',
    'ui',
    'slimscroll'
], function($, ui, slimscroll) {

    var initialize = function() {

        //bootstrap the jquery

        //icons hover
        $('.hover').hover(function() {
            $(this).find("img").toggleClass('icons icons_hover');
        });
        //sub menu
        $("a.more").hover(function() {
            $(".sub_menu").css('display', 'block');
        }, function() {
            $(".sub_menu").css('display', 'none');
        });
        $(".alert").hover(function() {
            $(".alert_menu").css('display', 'block');
        }, function() {
            $(".alert_menu").css('display', 'none');
        });
        $(".notification").hover(function() {
            $(".notification_menu").css('display', 'block');
        }, function() {
            $(".notification_menu").css('display', 'none');
        });
        $(".setting").hover(function() {
            $(".setting_menu").css('display', 'block');
        }, function() {
            $(".setting_menu").css('display', 'none');
        });
        //slim scroll notification
        $('ul.menu_item').slimscroll({
            height: '422px',
            width: '325px',
            alwaysVisible: false,
            start: 'bottom',
            wheelStep: 10,
            position: 'left'
        }).css({paddingRight: '0'});
        //slim scroll notification
        $('ul.menu_items').slimscroll({
            height: '295px',
            width: '325px',
            alwaysVisible: false,
            start: 'bottom',
            wheelStep: 10,
            position: 'left'
        }).css({paddingRight: '0'});


//        
    };
    return initialize();

});                