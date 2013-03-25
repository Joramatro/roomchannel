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
		    	  //Apprise("Live video broadcast for " + $('#nbrUsrs').text() + " people");
		      }
		    });
    });
});

function addVideoPlaylist(){
	li = $("<li class='span3 guggenheim-item'>");
	li.class = 'span3';
	div = $("<div class='thumbnail clearfix'>");
	li.append(div);
	divChnl = $("<div class='videoChannel'>");
	div.append(divChnl);
	
	divCaption = $("<div class='caption'>");
	h5 = $("<h5>");
	divCaption.append(h5);
	a0 = $("<a href='javascript:' class='btn'>");
	i0 = $("<i class='icon-search'>");
	a0.append(i0);
	a1 = $("<a href='javascript:' class='btn left'>");
	i1 = $("<i class='icon-arrow-left'>");
	a1.append(i1);
	a2 = $("<a href='javascript:' class='btn right'>");
	i2 = $("<i class='icon-arrow-right'>");
	a2.append(i2);
	a3 = $("<a href='javascript:' class='btn btn-danger remove'>");
	i3 = $("<i class='icon-remove icon-white'>");	
	a3.append(i3);
	
	divCaption.append(a0);
	divCaption.append(a1);
	divCaption.append(a2);
	divCaption.append(a3);
	div.append(divCaption);
	
	return li;
}

$('.remove').live('click', function() {
    $(this).parent().parent().parent().fadeOut('slow').remove();
    gallery = guggenheim('#guggenheim-container',{rows:2,cols:4});
 });

$('.right').live('click', function() {
	$(this).parent().parent().parent().animate({height: 'toggle'},300).after( $(this).parent().parent().parent().next() ).animate({height: 'toggle'},300);
	gallery = guggenheim('#guggenheim-container',{rows:2,cols:4});
});

$('.left').live('click', function() {
	$(this).parent().parent().parent().animate({height: 'toggle'},300).before( $(this).parent().parent().parent().prev() ).animate({height: 'toggle'},300);
	gallery = guggenheim('#guggenheim-container',{rows:2,cols:4});
});

