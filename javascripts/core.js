window.dnd_sb = {};

$.getJSON('json/soundFiles.json', function(data){
  dnd_sb.mp3Json = data;
  setTimeout(function () {
    dnd_sb.mp3Json.forEach(function (obj, idx) {
      var audioDiv = $(`<div id="`+ idx +`" style="display:none">
        <h6>` + obj.name + `</h6>
        <audio controls>
        <source src=` + obj.path + ` type="audio/mp3">
        </audio></div>`
      );
      var button = $('<button class="audio_trigger" id="' + idx + '">' + obj.name + '</button>');
      $('body').append(audioDiv);
      $('body').append(button);
    });
    $('button.audio_trigger').click(function(){
      console.log(this);
    })
  }, 5000)
});
