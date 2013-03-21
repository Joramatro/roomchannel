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
		    	  Apprise("Live video broadcast for " + $('#nbrUsrs').text() + " people");	
		      }
		    });
    });
});

function addVideoPlaylist(){
	li = $("<li class='span3'>");
	li.class = 'span3';
	div = $("<div class='thumbnail clearfix'>");
	li.append(div);
	divChnl = $("<div class='videoChannel'>");
	div.append(divChnl);
	
	divCaption = $("<div class='caption'>");
	h5 = $("<h5>");
	divCaption.append(h5);
	a1 = $("<a href='javascript:' class='btn'></a>");
	i1 = $("<i class='icon-pencil'>");
	a1.append(i1);
	a2 = $("<a href='javascript:' class='btn'>");
	i2 = $("<i class='icon-search'>");
	a2.append(i2);
	a3 = $("<a href='javascript:' class='btn btn-danger remove'>");
	i3 = $("<i class='icon-remove icon-white'>");
	a3.append(i3);
	divCaption.append(a1);
	divCaption.append(a2);
	divCaption.append(a3);
	div.append(divCaption);
	
	return li;
}
