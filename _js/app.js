//= include foundation/jquery.foundation.topbar

;(function ($, window, undefined) {
  'use strict';

  var Modernizr = window.Modernizr;

  $('input, textarea').placeholder();

  // Hide address bar on mobile devices
  if (Modernizr.touch) {
    $(window).load(function () {
      setTimeout(function () {
        window.scrollTo(0, 1);
      }, 0);
    });
  }
})(jQuery, this);
