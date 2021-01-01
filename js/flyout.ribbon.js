/*
* File:        flyout.ribbon.js
* Version:     1.0
* Author:      Ryan Hall (www.how-to-asp.net)
* Info:        www.how-to-asp.net/flyout-ribbon-jquery-css3.aspx
* 
* Copyright 2010 how-to-asp.net, all rights reserved.
*
* This source file is free software, and is not to be sold or repackaged in any way.
*/
(function($) {
    $.fn.FlyoutRibbon = function(options) {

        var defaults = {
            speed: 500
        };
        var options = $.extend(defaults, options);

        return this.each(function() {
            $ribbon = $(this);
            $ribbon.prepend('<a class="ribbon-toggle"><span class="arrow"></span></a>');
            var toggleWidth = $ribbon.css('width');
            $ribbon.find('a.ribbon-toggle').toggle(function() {
                $(this).addClass('on');
                $ribbon.css('width', '100%');
                $ribbon.find('ul').animate({ marginLeft: '0%' }, options.speed);
            },
            function() {
                $ribbonToggle = $(this);
                $ribbon.find('ul').animate({ marginLeft: '100%' }, options.speed, function() { $ribbonToggle.removeClass('on'); $ribbon.css('width', toggleWidth); });
            });
        });
    };
})(jQuery); 