define(function(require, exports, module) {
  var $ = require('seajq');
  var a = {};

  a.read = function(){
    $(document).ready(function() {
      $.ajax({
        type:'GET',
        url: 'view.php',
        dataType: 'json',
        success: function(data){  
          pushItems(data);
        }
      })
    });
  }

  a.addSql = function(){

    $('#addSql').click(function(){
      // var title = $('#newstitle').value();
      // console.log(title);
      event.preventDefault();
      $.ajax({
        type:'POST',
        url: 'add.php',
        data:{newstitle:$('#newstitle').val(), newsimg:$('#newsimg').val(), newscontent:$('#newscontent').val(), addtime:$('#addtime').val()},
        success: function(msg){
          $('#feedback').append('Data saved: '+msg);
          $('#newstitle').val('');
          $('#newsimg').val('');
          $('#newscontent').val('');
          $('#addtime').val('');
        }
      })
    })
  }

  function pushItems(ret){
    ret = ret.json_list;
    var content = $('.index-content-items-inner')[0];
    console.log(ret);
    console.log(ret.length);
    if (ret.length) {
      // console.log(ret.length);
      var lis = [];
      for(var i = 0, len = ret.length; i<len; ++i){
        lis.push('<li class="index-content-item">'+'<img src="'+ret[i].newsimg+'" alt="'+ret[i].newstitle+'"> <h4>'+ret[i].newstitle+ '</h4><div><span>'+ret[i].newscontent+'</span></div>'+'<time>'+ret[i].addtime+'</time></li>');
      }
      content.innerHTML = lis.join('');
    }else{
      content.innerHTML = '';
    }
  }

  module.exports =  a;
})