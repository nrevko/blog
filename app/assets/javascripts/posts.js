$(document).ready(function(e) {
  
  function getTag(){
	  return($('#tag_id').find(":selected")[0]);
  }

	$("#save_tag").on('click', function (e) {
	  e.preventDefault();
    var tag = getTag();

    $.ajax({
      dataType: "json",
      type: "POST",
      url: $(this).data('url'),
      data: { tag_id: tag.value }
    })
    .done(function(){
	    $("#current_tags").append(" " + tag.text);
	    tag.remove();
    });
  });
});