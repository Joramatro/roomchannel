$(function(){ 
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

function cleanGalStyles(){
	$(".guggenheim-slider li").removeAttr('style');
}

function posGal(){
	for (var i = 1; i < currentPage; i++){
		//alert(i);
		gallery.next();
	}

}

$('.remove').live('click', function() {
    $(this).parent().parent().parent().fadeOut('slow').remove();
    cleanGalStyles();
    btnGal=true;
    gallery = guggenheim('#guggenheim-container',{rows:2,cols:4});
    
 });

$('.right').live('click', function() {
	$(this).parent().parent().parent().animate({height: 'toggle'},300).after( $(this).parent().parent().parent().next() ).animate({height: 'toggle'},300);
	//cleanGalStyles();
	//$("#guggenheim-container").css('visibility','hidden');
	btnGal=true;
	//gallery = guggenheim('#guggenheim-container',{rows:2,cols:4});
	
	//posGal();
	//$("#guggenheim-container").slideUp(0).delay(0).fadeIn('slow', function() { $(this).css('visibility','visible'); });
});

$('.left').live('click', function() {
	$(this).parent().parent().parent().animate({height: 'toggle'},300).before( $(this).parent().parent().parent().prev() ).animate({height: 'toggle'},300);
	//cleanGalStyles();
	btnGal=true;
	//gallery = guggenheim('#guggenheim-container',{rows:2,cols:4}); 
	
	//window.setTimeout(posGal(), 50000);
	//posGal();
	
});

$(document).ready(function(){
    var box = null;
    $(".chatbox").click(function(event, ui) {
        if(box) {
            box.chatbox("option", "boxManager").toggleBox();
        }
        else {
      	  $("#log").collapse('show');
            box = $("#chat_div").chatbox({id:"user", 
                                          user:{key : "value"},
                                          title : "Chat Box",
                                          messageSent : function(id, user, msg) {
                                              //$("#log").append(id + " said: " + msg + "<br/>");
                                              $("#chat_div").chatbox("option", "boxManager").addMsg(id, msg);
                                          }});
        }
    });
});

$(function(){

	// global setting override
    /*
	$.extend($.gritter.options, {
	    class_name: 'gritter-light', // for light notifications (can be added directly to $.gritter.add too)
	    position: 'bottom-left', // possibilities: bottom-left, bottom-right, top-left, top-right
		fade_in_speed: 100, // how fast notifications fade in (string or int)
		fade_out_speed: 100, // how fast the notices fade out
		time: 3000 // hang on the screen for...
	});
    */

	$('#add-sticky').click(function(){

		var unique_id = $.gritter.add({
			// (string | mandatory) the heading of the notification
			title: 'This is a sticky notice!',
			// (string | mandatory) the text inside the notification
			text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" style="color:#ccc">magnis dis parturient</a> montes, nascetur ridiculus mus.',
			// (string | optional) the image to display on the left
			image: 'http://s3.amazonaws.com/twitter_production/profile_images/132499022/myface_bigger.jpg',
			// (bool | optional) if you want it to fade out on its own or just sit there
			sticky: true,
			// (int | optional) the time you want it to be alive for before fading out
			time: '',
			// (string | optional) the class name you want to apply to that specific message
			class_name: 'my-sticky-class'
		});

		// You can have it return a unique id, this can be used to manually remove it later using
		/*
		setTimeout(function(){

			$.gritter.remove(unique_id, {
				fade: true,
				speed: 'slow'
			});

		}, 6000)
		*/

		return false;

	});

	$('#notification-firstVideo').click(function(){

		$.gritter.add({
			// (string | mandatory) the heading of the notification
			title: 'First Video Broadcast',
			// (string | mandatory) the text inside the notification
			text: "Live video broadcast for " + $('#nbrUsrs').text() + " people in main reproductor",
			// (string | optional) the image to display on the left
			image: '/images/Intro.jpg',
			// (bool | optional) if you want it to fade out on its own or just sit there
			sticky: false,
			// (int | optional) the time you want it to be alive for before fading out
			time: '10000'
		});

		return false;

	});
	
	$('#notification-firstGalVideo').click(function(){

		$.gritter.add({
			// (string | mandatory) the heading of the notification
			title: 'Video broadcast on Playlist',
			// (string | mandatory) the text inside the notification
			text: "Video broadcast has been added to your Playlist, following videos broadcast will be queued on it. Video broadcast for " + $('#nbrUsrs').text() + " people",
			// (string | optional) the image to display on the left
			image: '/images/Intro.jpg',
			// (bool | optional) if you want it to fade out on its own or just sit there
			sticky: false,
			// (int | optional) the time you want it to be alive for before fading out
			time: '10000'
		});

		return false;

	});
	
	$('#gritter-item-1').live('click', function(){
		window.location.href = "#Radio";
	});
	
	$('#gritter-item-2').live('click', function(){
		window.location.href = "#gallery";		
	});

    $('#add-max').click(function(){

        $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'This is a notice with a max of 3 on screen at one time!',
            // (string | mandatory) the text inside the notification
            text: 'This will fade out after a certain amount of time. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" style="color:#ccc">magnis dis parturient</a> montes, nascetur ridiculus mus.',
            // (string | optional) the image to display on the left
            image: 'http://a0.twimg.com/profile_images/59268975/jquery_avatar_bigger.png',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: false,
            // (function) before the gritter notice is opened
            before_open: function(){
                if($('.gritter-item-wrapper').length == 3)
                {
                    // Returning false prevents a new gritter from opening
                    return false;
                }
            }
        });

        return false;

    });

	$('#add-without-image').click(function(){

		$.gritter.add({
			// (string | mandatory) the heading of the notification
			title: 'This is a notice without an image!',
			// (string | mandatory) the text inside the notification
			text: 'This will fade out after a certain amount of time. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" style="color:#ccc">magnis dis parturient</a> montes, nascetur ridiculus mus.'
		});

		return false;
	});

    $('#add-gritter-light').click(function(){

        $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'This is a light notification',
            // (string | mandatory) the text inside the notification
            text: 'Just add a "gritter-light" class_name to your $.gritter.add or globally to $.gritter.options.class_name',
            class_name: 'gritter-light'
        });

        return false;
    });

	$('#add-with-callbacks').click(function(){

		$.gritter.add({
			// (string | mandatory) the heading of the notification
			title: 'This is a notice with callbacks!',
			// (string | mandatory) the text inside the notification
			text: 'The callback is...',
			// (function | optional) function called before it opens
			before_open: function(){
				alert('I am called before it opens');
			},
			// (function | optional) function called after it opens
			after_open: function(e){
				alert("I am called after it opens: \nI am passed the jQuery object for the created Gritter element...\n" + e);
			},
			// (function | optional) function called before it closes
			before_close: function(e, manual_close){
                var manually = (manual_close) ? 'The "X" was clicked to close me!' : '';
				alert("I am called before it closes: I am passed the jQuery object for the Gritter element... \n" + manually);
			},
			// (function | optional) function called after it closes
			after_close: function(e, manual_close){
                var manually = (manual_close) ? 'The "X" was clicked to close me!' : '';
				alert('I am called after it closes. ' + manually);
			}
		});

		return false;
	});

	$('#add-sticky-with-callbacks').click(function(){

		$.gritter.add({
			// (string | mandatory) the heading of the notification
			title: 'This is a sticky notice with callbacks!',
			// (string | mandatory) the text inside the notification
			text: 'Sticky sticky notice.. sticky sticky notice...',
			// Stickeh!
			sticky: true,
			// (function | optional) function called before it opens
			before_open: function(){
				alert('I am a sticky called before it opens');
			},
			// (function | optional) function called after it opens
			after_open: function(e){
				alert("I am a sticky called after it opens: \nI am passed the jQuery object for the created Gritter element...\n" + e);
			},
			// (function | optional) function called before it closes
			before_close: function(e){
				alert("I am a sticky called before it closes: I am passed the jQuery object for the Gritter element... \n" + e);
			},
			// (function | optional) function called after it closes
			after_close: function(){
				alert('I am a sticky called after it closes');
			}
		});

		return false;

	});

	$("#remove-all").click(function(){

		$.gritter.removeAll();
		return false;

	});

	$("#remove-all-with-callbacks").click(function(){

		$.gritter.removeAll({
			before_close: function(e){
				alert("I am called before all notifications are closed.  I am passed the jQuery object containing all  of Gritter notifications.\n" + e);
			},
			after_close: function(){
				alert('I am called after everything has been closed.');
			}
		});
		return false;

	});

});

