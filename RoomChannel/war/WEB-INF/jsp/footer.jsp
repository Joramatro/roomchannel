<%@ page contentType="text/html;charset=UTF-8" language="java"%>

		<script type="text/javascript" src="/_ah/channel/jsapi"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script type="text/javascript" src="/js/jquery.oembed.js"></script>
		<script type="text/javascript" src="/js/placeholder.js"></script>
		<script type="text/javascript" src="/js/main.js"></script>
		<script type="text/javascript" src="/js/login.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
		
        <script src="js/lean-slider.min.js"></script><!-- About Slider-->
        <script src="js/my_script.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.min.js"></script><!-- parallax-->
        <script src="js/modernizr-2.6.1.min.js"></script><!--blur slidShow -->
        <script src="js/jquery.quicksand.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/jquery.mobile.customized.min.js"></script><!-- camera Slider-->
        <script src="js/camera.min.js"></script><!-- camera Slider-->
        <script src="js/jquery.parallax-1.1.3.min.js"></script><!--  parallax-->
        <script src="js/jquery.localscroll-1.2.7-min.js"></script><!--  parallax-->
        <script type="text/javascript" src="js/apprise-v2.js"></script>
        <script type="text/javascript" src="js/guggenheim.js"></script>
        <script type="text/javascript" src="js/jquery.gritter.js"></script>
        <script src="http://www.youtube.com/player_api"></script>
        <script src="http://www.google.com/jsapi"></script>        
        <script>
            jQuery(function () {

                jQuery('#camera_wrap_3').camera({
                    height: '65%',
                    pagination: false,
                    thumbnails: true,
                    imagePath: '../images/'
                });

            });
		</script>
		<script type="text/javascript" src="js/jquery.ui.chatbox.js"></script>
		<script>
		var player;
		var gallery;
		var galleryInit;
  		var firstGallery=false;
  		var currentPage = 1;
  		var btnGal=false;
		sendMessage = function(path, opt_param) {

// 		  	  var xhr = new XMLHttpRequest();
// 		  	  xhr.open('GET', '?category=&city=&nickname=&orderSel=order1', true);
// 		  	  xhr.send();
		  	};
		  	
		  	function onOpened() {
		  		//sendMessage('opened');
		  	}

		  	function onMessage(msg) {		  		

		  	  	//$('#textAreaCh').val('hola');
		  	    //$('#numberUsers').text(msg.data);
		  	    //alert(msg.data);
		  	    data = JSON.parse(msg.data);
		  	    //$('#numberUsers').text(data['nbrUsr']);
		  	    if(data['nbrUsrs']!= undefined){
		  	    	document.getElementById("nbrUsrs").innerHTML = data['nbrUsrs']; 
		  	    }else if(data['urlOembed']!= undefined){
		  	    	if( player != undefined ) {		  	    				  	    			
		  	    		video = addVideoPlaylist();
		  	    		$(video).fadeTo(100, 0);
		  	    		$(".guggenheim-slider").append(video);
		  	    		$(video).fadeTo(400, 1);
		  	    		if(!firstGallery){
		  	    			$('#notification-firstGalVideo').click();
		  	    		}
		  	    		firstGallery =true;
		  	    		
		  	    	}else{
		  	    		$('#notification-firstVideo').click();
		  	    		$("#log").html(data['chatLog']);
		  	    		$("#currentUrl").val(data['url']);
		  	    		$("#txtVideoUrl").attr("id","txtVideoUrlActive");
		  	    		$("#txtVideoUrl2").attr("id","txtVideoUrl");
		  	    		
		  	    		
	  	    		    player = new YT.Player('videoChannelMain', {
	  	    		      height: '390',
	  	    		      width: '1024',
	  	    		      videoId: '0Bmhjf0rKe8',
	  	    		      events: {
	  	    		        'onReady': onPlayerReady,
	  	    		        'onStateChange': onPlayerStateChange
	  	    		      }
	  	    		    });
		  	    	}
		  	    	
		  	    	$(".ParallaxText").hide();
		  	    	$(".videoChannel").html(data['urlOembed']);
		  	    	
		  	    	//cleaning oembed for next time
		  	    	$("div .videoChannel").removeClass('videoChannel');
		  	    	$("#broadcastBlock").show("slow");
		  	    	$("#guggenheim-container span.oembedall-closehide").html('');
		  	    	//document.getElementById("broadcastLive").innerHTML = data[''];
			  	    //$('#textAreaCh').append(data['text']);
		  	    	//$(text).appendTo('.multiLoadNew1');
		  	    	if(firstGallery){
		  	    		cleanGalStyles();
		  	    		btnGal=true;
			  			gallery = guggenheim('#guggenheim-container',{rows:2,cols:4});
			  			player.loadVideoById("bHQqvYy5KYo", 5, "large");
		  	    	}
		  	    }else if(data['chatText']!= undefined){
		  	    	if(!$("#chat_div").hasClass('ui-widget-content')){
		  	    		$(".chatbox").click();
		  	    	}
		  	    	$("#chat_div").append(data['chatText']);
		  	    	$("#chat_div").scrollTop($("#chat_div")[0].scrollHeight);
		  	    }
		  	 
		  	}

		  	function onError(err) {
		  		var str = '';
		  	    for (var p in err) {
		  	        if (err.hasOwnProperty(p)) {
		  	            str += p + '::' + err[p] + '\n';
		  	        }
		  	    }
		  	    //alert(str);
		  	}

		  	function onClose() {
		  	    //alert("Instant access deactivated");
		  	}


		    channel = new goog.appengine.Channel('${token}');
		    socket = channel.open();
		    socket.onopen = onOpened;
		    socket.onmessage = onMessage;
		    socket.onerror = onError;
		    socket.onclose = onClose;
		</script>
		<script>
        //console.log(gallery);
		</script>
		<!--[if IE]>
		<script type="text/javascript">
			add_placeholder('multiElement', 'http://');
		</script>
		<![endif]-->