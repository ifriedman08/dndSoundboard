window.dnd_sb = {};

$.getJSON('json/soundFiles.json', function(data){
  dnd_sb.mp3Json = data;
  setTimeout(function () {
    dnd_sb.mp3Json.forEach(function (obj) {
      var soundDiv = $(`<div>
        <h6>` + obj.name + `</h6>
        <audio controls>
        <source src=` + obj.path + ` type="audio/mp3">
        </audio></div>`
      );
      $('body').append(soundDiv);
    })
  }, 5000)
});
