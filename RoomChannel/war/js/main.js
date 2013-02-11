$(function(){ /* DOM ready */
    $("#videoUrl").live('change', function() {
    	$.ajax({
		      type: "GET",
		      url: "/loadVideoChannel",
		      dataType: "html",
		      cache: false,
	          data: "url=" + $("#videoUrl").val(),		      
		      success: function(text){
		    	  //alert("enviado");	
		      }
		    });
    });
});