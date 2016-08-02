define(function(require, exports, module) {
  var $ = require('seajq');

  var t = {};

  t.tab = function(){
    $('.index-navigator table td').click(function(){
      var index = $(this).index();
      var divs = $('.index-content');
      $('.index-navigator table td span').removeClass('cur');
      $(this).children('span').addClass('cur');
      divs.hide();
      divs.eq(index).show();
    })
  }

  module.exports = t;
})
