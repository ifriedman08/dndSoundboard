window.dnd_sb = {};

$.getJSON('json/soundFiles.jsonp', function(data){dnd_sb.mp3Json = data});

dnd_sb.mp3Json.forEach(function (obj) {
  var soundDiv = $(`<div><audio controls>
    <label>` + obj.name + `</label>
    <source src=` + obj.path + ` type="audio/mp3">
  </audio></div>`);
  $('body').append(soundDiv);
})
