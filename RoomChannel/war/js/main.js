$(function(){ 
    $("#btnBroadcast").live('click', function() {
    	var videoId = youtube_parser($("#txtVideoUrl").val());
    	if(videoId==0){
    		alert("Url invalid");
    		return;
    	}
    	$.ajax({
		      type: "POST",
		      url: "/loadVideoChannel",
		      dataType: "html",
		      cache: false,
	          data: {
	        	  "url": $("#txtVideoUrl").val(),
	        	  "videoId": videoId
	          },
		      success: function(text){
		    	  $("#txtVideoUrl").val("");
		    	  //Apprise("Live video broadcast for " + $('#nbrUsrs').text() + " people");
		      }
		    });
    });
});

function addVideoPlaylist(videoId){
	li = $("<li class='span3 guggenheim-item'>");
	li.class = 'span3';
	div = $("<div class='thumbnail clearfix'>");
	li.append(div);
	divChnl = $("<div id='videoChannel'>");
	div.append(divChnl);
	
	divCaption = $("<div class='caption'>");
	h5 = $("<h5>");
	divCaption.append(h5);
	a0 = $("<a id=\"helpHref\" href=\"javascript:copyUrlInMainPlaylist(\'"+videoId+"\')\" class=\"btn\">");
	i0 = $("<i class='icon-film'>");
	a0.append(i0);
//	a1 = $("<a href='javascript:' class='btn left'>");
//	i1 = $("<i class='icon-arrow-left'>");
//	a1.append(i1);
//	a2 = $("<a href='javascript:' class='btn right'>");
//	i2 = $("<i class='icon-arrow-right'>");
//	a2.append(i2);
	a3 = $("<a href='javascript:' class='btn btn-danger remove'>");
	i3 = $("<i class='icon-remove icon-white'>");	
	a3.append(i3);
	
	divCaption.append(a0);
//	divCaption.append(a1);
//	divCaption.append(a2);
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
	$(this).parent().parent().animate({height: 'toggle'},300).after( $(this).parent().parent().next() ).animate({height: 'toggle'},300);
	//cleanGalStyles();
	//$("#guggenheim-container").css('visibility','hidden');
	btnGal=true;
	//gallery = guggenheim('#guggenheim-container',{rows:2,cols:4});
	
	//posGal();
	//$("#guggenheim-container").slideUp(0).delay(0).fadeIn('slow', function() { $(this).css('visibility','visible'); });
});

$('.left').live('click', function() {
	$(this).parent().parent().animate({height: 'toggle'},300).before( $(this).parent().parent().prev() ).animate({height: 'toggle'},300);
	//cleanGalStyles();
	btnGal=true;
	//gallery = guggenheim('#guggenheim-container',{rows:2,cols:4}); 
	
	//window.setTimeout(posGal(), 50000);
	//posGal();
	
});


function copyUrlInMain(url){
	$('#txtVideoUrl').val(url);
	if( player != undefined ){
		window.location.href = "#gallery";
	}else{
		window.location.href = "#Radio";
	}
}

function copyUrlInMainPlaylist(videoId){	
	//player defined for sure, just create a new one
	player.loadVideoById(videoId, 0, "large");
	window.location.href = "#Radio";
}

$(document).ready(function(){
    var box = null;
    $(".chatbox").click(function(event, ui) {

        if(box) {
            box.chatbox("option", "boxManager").toggleBox();
        }
        else {
      	  $("#log").collapse('show');
	        if($.trim($("#nickMenu").text()).length == 0){
	        	userId = 'user';
	        }else{
	        	userId = $("#nickMenu").text();;
	        }
            box = $("#chat_div").chatbox({id: userId, 
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
		if($('div#logoImg img').attr('src') == ''){
			imageUrl = '/images/Intro.jpg';
		}
		else{
			imageUrl = $('div#logoImg img').attr('src');
		}
		$.gritter.add({
			// (string | mandatory) the heading of the notification
			title: 'First Video Broadcast',
			// (string | mandatory) the text inside the notification
			text: "Live video broadcast for " + $('#nbrUsrs').text() + " people in main reproductor",
			// (string | optional) the image to display on the left
			image: imageUrl,
			// (bool | optional) if you want it to fade out on its own or just sit there
			sticky: false,
			// (int | optional) the time you want it to be alive for before fading out
			time: '10000'
		});

		return false;

	});
	
	$('#notification-firstGalVideo').click(function(){
		if($('div#logoImg img').attr('src') == ''){
			imageUrl = '/images/Intro.jpg';
		}
		else{
			imageUrl = $('div#logoImg img').attr('src');
		}
		$.gritter.add({
			// (string | mandatory) the heading of the notification
			title: 'Video broadcast on Playlist',
			// (string | mandatory) the text inside the notification
			text: "Video broadcast has been added to your Playlist, following videos broadcast will be queued on it. Video broadcast for " + $('#nbrUsrs').text() + " people",
			// (string | optional) the image to display on the left
			image: imageUrl,
			// (bool | optional) if you want it to fade out on its own or just sit there
			sticky: false,
			// (int | optional) the time you want it to be alive for before fading out
			time: '10000'
		});

		return false;

	});
	
	$('#notification-nickUpdate').click(function(){
		if($('div#logoImg img').attr('src') == ''){
			imageUrl = '/images/Intro.jpg';
		}
		else{
			imageUrl = $('div#logoImg img').attr('src');
		}
		$.gritter.add({
			// (string | mandatory) the heading of the notification
			title: 'Nick updated',
			// (string | mandatory) the text inside the notification
			text: "Your nickname has been updated",
			// (string | optional) the image to display on the left
			image: imageUrl,
			// (bool | optional) if you want it to fade out on its own or just sit there
			sticky: false,
			// (int | optional) the time you want it to be alive for before fading out
			time: '10000'
		});

		return false;

	});
	
	
	$('#notification-channelDeleted').click(function(){
		if($('div#logoImg img').attr('src') == ''){
			imageUrl = '/images/Intro.jpg';
		}
		else{
			imageUrl = $('div#logoImg img').attr('src');
		}
		$.gritter.add({
			// (string | mandatory) the heading of the notification
			title: 'Channel deleted',
			// (string | mandatory) the text inside the notification
			text: "Your channel selected has been deleted succesfully",
			// (string | optional) the image to display on the left
			image: imageUrl,
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

$(document).ready(function() {
	
	galleryInit = guggenheim('#guggenheim-container-init',{rows:2,cols:4});
	$("#guggenheim-container-init .guggenheim-slider").removeClass('guggenheim-slider');
	$("#guggenheim-container-init .guggenheim-item").removeClass('guggenheim-item');	

});

/*
function callPlayer(frame_id, func, args) {
	alert(1);
    if (window.jQuery && frame_id instanceof jQuery) frame_id = frame_id.get(0).id;
    var iframe = document.getElementById(frame_id);
    if (iframe && iframe.tagName.toUpperCase() != 'IFRAME') {
        iframe = $("#videoChannelMain .oembedall-container iframe");
    }
    if (iframe) {
    	alert("entra");
        // Frame exists, 
        iframe.contentWindow.postMessage(JSON.stringify({
            "event": "command",
            "func": func,
            "args": args || [],
            "id": frame_id
        }), "*");
    }
}
*/



// autoplay video
function onPlayerReady(event) {
    event.target.playVideo();
}

// when video ends
function onPlayerStateChange(event) {        
    if(event.data === 0) {  
        //alert('done');
    	//alert(playerGal.getVideoUrl());
    	player.loadVideoById($("#firstIdGal").val(), 0, "large");
    }
}

function onPlayerReadyGal(event) {
    
}

// when video ends
function onPlayerStateChangeGal(event) {        
 
}

function onPlayerReadyLast(event) {
    
}

// when video ends
function onPlayerStateChangeLast(event) {        
 
}

function searchClicked()
{
    document.getElementById("videoResultsDiv").innerHTML = 
                            'Loading YouTube videos ...';

    //create a JavaScript element that returns our JSON data.
    var script = document.createElement('script');
    script.setAttribute('id', 'jsonScript');
    script.setAttribute('type', 'text/javascript');
    script.setAttribute('src', 'http://gdata.youtube.com/feeds/' + 
           'videos?vq='+$("#txtVideoSearch").val()+'&max-results=8&' + 
           'alt=json-in-script&callback=showMyVideos&' + 
           'orderby=relevance&sortorder=descending&format=5&fmt=18');

    //attach script to current page -  this will submit asynchronous
    //search request, and when the results come back callback 
    //function showMyVideos(data) is called and the results passed to it
    document.documentElement.firstChild.appendChild(script);
}

function showMyVideos(data)
{
    var feed = data.feed;
    var entries = feed.entry || [];
    var html = ['<ul>'];
    for (var i = 0; i < entries.length; i++)
    {
        var entry = entries[i];
        var playCount = entry.yt$statistics.viewCount.valueOf() + ' views';
        var title = entry.title.$t;
        var lnk = '<a href = \"javascript:copyLink(\''+ entry.link[0].href +'\')\">COPY LINK</a>';
        html.push('<li>', title, ', ', playCount, ', ', lnk, '</li>');
    }
    html.push('</ul>');
    document.getElementById('videoResultsDiv').innerHTML = html.join('');
}

function copyLink(url)
{
	document.getElementById('txtVideoUrl').value = url;
}

function youtube_parser(url){
	var regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/;
	var match = url.match(regExp);
	if (match&&match[2].length==11){
	    return match[2];
	}else{
	    //error
		alert("Please, check the URL introduced. At the moment just Youtube URLs are accepted");
	}
}

$(function() {
	  /* activate the plugin */
		$('#fileupload').fileupload({submit: function (e, data) {
	        
	    	var $this = $(this);
	    	//debugger;
	        $.getJSON('/rest/file/url?' + new Date().getTime(), function (result) {
	        	data.url = result.url;
	            $this.fileupload('send', data);
	        });
	        return false;
	    }
		});
	});


$(function() {
	  /* activate the plugin */
		$('#profileupload').fileupload({submit: function (e, data) {
	        
	    	var $this = $(this);
	    	//debugger;
	        $.getJSON('/rest/profile/url?' + new Date().getTime(), function (result) {
	        	data.url = result.url;
	            $this.fileupload('send', data);
	        });
	        return false;
	    }
		});
	});


var buttonVm = new function(){
	  var self = this;
	  self.button1Visible = ko.observable(false);
	  self.button1OtherButtons = ko.observable(true);
	  self.button2Visible = ko.observable(false);
	  self.button2Invisible = ko.observable(true);
	  self.stringValue = ko.observable(document.getElementById("nick").value);
	  self.nameProfile = ko.observable(document.getElementById("nick").value);
	  self.titleToAdd = ko.observable("");

	  self.toggle1 =  function(){
	     self.button1Visible(!self.button1Visible());
	     self.button1OtherButtons(!self.button1OtherButtons());
	  }
	  self.toggle2 =  function(){
		     self.button2Visible(!self.button2Visible());
		     self.button2Invisible(!self.button2Invisible());
		  }
	}



var vm = buttonVm;

ko.applyBindings(vm);


$(function(){ 
    $("#btnSaveChn").live('click', function() {
    	//check name channel is not repeated
//    	if(channelExists){
//    		alert("channel name repeated");
//    		return;
//    	}
    	$.ajax({
		      type: "POST",
		      url: "/newChannel",
		      dataType: "html",
		      cache: false,
	          data: {
	        	  "channelName": $("#nameChannel").val()
	          },
		      success: function(text){
		    	  var nameChn = ($("#nameChannel").val()).replace(/\s/g , "-")
		    	  $("#startChannel-form").attr("action", "/ch/" + nameChn);
		    	  $("#nameChannelUpload").val($("#nameChannel").val());
		      }
		    });
    });
});


$(function(){ /* DOM ready */
    $("#nickUpdate").on('click', function() {
    	$.ajax({
		      type: "POST",
		      url: "/changeUserName",
		      dataType: "html",
		      cache: false,
	          data: "userName=" + $("#nick").val(),		      
		      success: function(text){
		    	  if(text == '</html>'){		    		  
		    		  $("#nick").removeClass('contacto').addClass('contactoR');
		    		  $("#nick").attr('title', 'This Nick is already in used by other User. Please type another one!');
		    		  $("#nick").attr('alt', 'This Nick is already in used by other User. Please type another one!');
		    		  Apprise("That Nick is already in used by other user. Please type another one!");
		    	  }
		    	  else if(!$("#nick").val()){
		    		  $("#nick").removeClass('contacto').addClass('contactoR');
		    		  $("#nick").attr('title', 'Type here your nick. Otherwise you will act as anonymous!');
		    		  $("#nick").attr('alt', 'Type here your nick. Otherwise you will act as anonymous!');
		    		  $("#nickMenu").text($("#nick").val());
		    		  $("#nickMenuUnfold").text($("#nick").val());
		    		  $('#notification-nickUpdate').click();
		    	  }else{
			    	  $("#nick").removeClass('contactoR').addClass('contacto');
			    	  $("#nick").attr('title', 'Type here to change your nick.');
		    		  $("#nick").attr('alt', 'Type here to change your nick.');
		    		  $("#nickMenu").text($("#nick").val());
		    		  $("#nickMenuUnfold").text($("#nick").val());
		    		  $('#notification-nickUpdate').click();
		    	  }
		      }
		    });
       
    });
});


$(function(){ /* DOM ready */
    $(".deleteChannel").on('click', function(e) {
    	//alert($(this).attr('id'));
    	var element = $(this).closest('tr');
    	e.preventDefault();
    	$.ajax({
		      type: "POST",
		      url: "/deleteChannel",
		      dataType: "html",
		      cache: false,
	          data: "channelName=" + $(this).attr('id'),		      
		      success: function(text){
		    	  element.css("display", "none");
		    	  $('#notification-channelDeleted').click();
		      }	  
    	 });
    });
});

var numberOfRowsAdd = $("#tbLogotypeAdd>tbody>tr").length;
$(function(){ 
	$("#tbLogotypeAdd").bind("DOMSubtreeModified", function() {
	    if($("#tbLogotypeAdd>tbody>tr").length !== numberOfRowsAdd){
	        numberOfRowsAdd = $("#tbLogotypeAdd>tbody>tr").length;
	        if(numberOfRowsAdd==0){
	        	$("#divLogotypeAddBtn").css("display", "block");
	        	if(document.getElementById("logoUpdated") != null){
	        		document.getElementById("logoUpdated").style.display = 'none';
	        	}
	        }else{
	        	$("#divLogotypeAddBtn").css("display", "none");
	        	if(document.getElementById("logoUpdated") == null){
	        		$(".fileupload-buttonbar").append("<div id='logoUpdated'><label>Logotype updated!</label></div>")
	        	}
	        }
	    }
	});
});

var numberOfRowsChg = $("#tbLogotypeChg>tbody>tr").length;
$(function(){ 
	$("#tbLogotypeChg").bind("DOMSubtreeModified", function() {
	    if($("#tbLogotypeChg>tbody>tr").length !== numberOfRowsChg){
	        numberOfRowsChg = $("#tbLogotypeChg>tbody>tr").length;
	        if(numberOfRowsChg==0){
	        	$("#divLogotypeChgBtn").css("display", "block");
	        	$("#imgLogotype").css("display", "none");
	        	if(document.getElementById("logoUpdated") != null){
	        		document.getElementById("logoUpdated").style.display = 'none';
	        	}
	        }else{
	        	$("#divLogotypeChgBtn").css("display", "none");
	        	$("#imgLogotype").css("display", "none");
	        	if(document.getElementById("logoUpdated") == null){
	        		$(".fileupload-buttonbar").append("<div id='logoUpdated'><label>Logotype updated!</label></div>")
	        	}
	        }
	    }
	});
});



