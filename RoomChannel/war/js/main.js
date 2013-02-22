$(function(){ /* DOM ready */
    $("#btnBroadcast").live('click', function() {
    	$.ajax({
		      type: "POST",
		      url: "/loadVideoChannel",
		      dataType: "html",
		      cache: false,
	          data: {
	        	  "url": $("#txtVideoUrl").val(),
	        	  "name": $("#txtName").val()
	          },
		      success: function(text){
		    	  alert("your video has been broadcast for " + $('#nbrUsrs').text() + " people");	
		      }
		    });
    });
});