<%@ page contentType="text/html;charset=UTF-8" language="java"%>
		
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript" src="/_ah/channel/jsapi"></script>
		<script type="text/javascript" src="/js/placeholder.js"></script>
		<script type="text/javascript" src="/js/knockout-2.2.1.js"></script>
		<script type="text/javascript" src="/js/login.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>		
        <script src="/js/lean-slider.min.js"></script><!-- About Slider-->
        <script src="/js/my_script.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <script src="/js/jquery.easing.1.3.min.js"></script><!-- parallax-->
        <script src="/js/modernizr-2.6.1.min.js"></script><!--blur slidShow -->
        <script src="/js/jquery.quicksand.min.js"></script>
        <script src="/js/jquery.validate.min.js"></script>   
        <script src="/js/jquery.parallax-1.1.3.min.js"></script><!--  parallax-->
        <script src="/js/jquery.localscroll-1.2.7-min.js"></script><!--  parallax-->
        <script type="text/javascript" src="/js/apprise-v2.js"></script>
        <script type="text/javascript" src="/js/guggenheim.js"></script>
        <script type="text/javascript" src="/js/jquery.gritter.js"></script>
        <script src="http://www.google.com/jsapi"></script>        
		<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
		<script src="/js/vendor/jquery.ui.widget.js"></script>
		<!-- The Templates plugin is included to render the upload/download listings -->
		<script src="/js/tmpl.min.js"></script>
		<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
		<script src="/js/load-image.min.js"></script>		
		<script src="/js/bootstrap-image-gallery.min.js"></script>
		<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
		<script src="/js/jquery.iframe-transport.js"></script>
		<!-- The basic File Upload plugin -->
		<script src="/js/jquery.fileupload.js"></script>
		<!-- The File Upload file processing plugin -->
		<script src="/js/jquery.fileupload-fp.js"></script>
		<!-- The File Upload user interface plugin -->
		<script src="/js/jquery.fileupload-ui.js"></script>        
                
		<script type="text/javascript" src="/js/jquery.ui.chatbox.js"></script>
		<script>
		var player;
		var playerGal;
		var playerLast;
		var gallery;
		var galleryInit;
  		var firstGallery=false;
  		var currentPage = 1;
  		var btnGal=false;
  		
  		$.getScript("http://www.youtube.com/player_api", function(){


	  		   //alert("Script loaded and executed.");
	  		   // here you can use anything you defined in the loaded script

	  		});
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
		  	    	document.getElementById("nbrUsrs").innerHTML = data['nbrUsrs'] + " &nbsp;now <a href='javascript:' class='btn' style='margin-top:-15%'>chatroom</a>"; 
		  	    }else if(data['url']!= undefined){
		  	    	if( player != undefined ) {	
		  	    		video = addVideoPlaylist(data['videoId']);
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
	  	    		      height: '500',
	  	    		      width: '1200',
	  	    		      videoId: data['videoId'],
	  	    		      events: {
	  	    		        'onReady': onPlayerReady,
	  	    		        'onStateChange': onPlayerStateChange
	  	    		      }
	  	    		    });
		  	    	}
		  	    	
		  	    	$(".ParallaxText").hide();
		  	    	

		  	    	$("#broadcastBlock").show("slow");
		  	    	
	    		    playerGal = new YT.Player('videoChannel', {
  	    		      height: '220',
  	    		      width: '293',
  	    		      videoId: data['videoId'],
  	    		      events: {
  	    		        'onReady': onPlayerReadyGal,
  	    		        'onStateChange': onPlayerStateChangeGal
  	    		      }
  	    		    });
	    		    $("#videoChannel").removeAttr('id');
		  	    	if(firstGallery){
		  	    		$("#firstIdGal").val(data['videoId']);
		  	    		cleanGalStyles();
		  	    		btnGal=true;
			  			gallery = guggenheim('#guggenheim-container',{rows:2,cols:4});
			  			//player.loadVideoById("bHQqvYy5KYo", 5, "large");
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
		
		var tag = document.createElement('script');		
		tag.src = "https://www.youtube.com/iframe_api";
		var firstScriptTag = document.getElementsByTagName('script')[0];
		firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
	      
		function onYouTubeIframeAPIReady() {
		  <c:forEach  var="video" items="${lastPlayedList}" varStatus="count">
		  <c:if test="${!empty video.videoId}">
		  playerLast = new YT.Player('videoChannelLast${count.index}', {
  		      height: '220',
  		      width: '293',
  		      videoId: '${video.videoId}',
  		      events: {
  		        'onReady': onPlayerReadyLast,
  		        'onStateChange': onPlayerStateChangeLast
  		      }
  		    });
		  </c:if>
		  </c:forEach>
		}
		</script>
		
		<script>
        //console.log(gallery);
        //Create view model
		</script>
		<script type="text/javascript" src="/js/main.js"></script>
		<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE8+ -->
		<!--[if gte IE 8]><script src="/js/cors/jquery.xdr-transport.js"></script><![endif]-->
		<!--[if IE]>
		<script type="text/javascript">
			add_placeholder('multiElement', 'http://');
		</script>
		<![endif]-->