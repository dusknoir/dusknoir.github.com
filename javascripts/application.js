$(function() {
  'use strict';

  var h1 = $('h1'),
      p = $('p');

  var fuckItUp = function() {
    h1.animate({ opacity: Math.random() / 3 }, 1000);
    p.animate({ opacity: Math.random() / 3 }, 1000);
  };

  fuckItUp();
  setInterval(fuckItUp, 1000);
});
