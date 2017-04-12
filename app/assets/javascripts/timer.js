$(function() {
  $("#pause").unbind().submit();
  $("#reset").unbind().submit();

  $("#timer_controls").show();


  $("#minutes").editable("click", function(e){
	  updateLengthField();
  });

  $("#seconds").editable("click", function(e){
	 updateLengthField();
  });

});

function updateLengthField() {
	$("#sessionlength").val(parseInt($("#minutes").text())*60 + parseInt($("#seconds").text()));
}