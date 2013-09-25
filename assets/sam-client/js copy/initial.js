// Filename: initial.js
define([
    'jquery',
    'ui',
    'slimScroll'
], function($, ui, slimScroll) {
    
    var initialize = function() {
                
        //bootstrap the jquery
        $('.hover').hover(function() {
            $(this).find("img").toggleClass('icons icons_hover');
        });
        $(".setting").hover(function() {
            $(".setting_menu").css('display', 'block');
        }, function() {
            $(".setting_menu").css('display', 'none');
        });
        $(".notification").hover(function() {
            $(".notification_menu").css('display', 'block');
        }, function() {
            $(".notification_menu").css('display', 'none');
        });
        $("a.more").hover(function() {
            $(".sub_menu").css('display', 'block');
        }, function() {
            $(".sub_menu").css('display', 'none');
        });
        //slim scroll
        $('ul.menu').slimscroll({
            height: '422px',
            width: '325px',
            alwaysVisible: false,
            start: 'bottom',
            wheelStep: 10,
            position: 'left'
        }).css({paddingRight: '0'});
        
    };
    return initialize();
    
});                