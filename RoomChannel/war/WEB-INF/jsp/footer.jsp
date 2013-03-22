<%@ page contentType="text/html;charset=UTF-8" language="java"%>

    </div><!--/span-->
	</div><!--/row-->
	
	<div style="margin-top: 400px;">
      <hr>

      <footer>
        <p>&copy; Amatic 2013</p>
      </footer>
	</div>
    </div><!--/.fluid-container-->
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
		<script>
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
		  	    }else{
		  	    	if( $.trim( $('#videoChannelMain').html() ).length ) {
		  	    		video = addVideoPlaylist();
		  	    		$(".thumbnails").append(video);
		  	    	}
		  	    	$(".ParallaxText").hide();
		  	    	$(".videoChannel").html(data['urlOembed']);
		  	    	
		  	    	
		  	    	$(".oembed").oembed(null,{
	    	    	    embedMethod: 'auto',    // "auto", "append", "fill" 
	    	    	    apikeys: {

	    				},
	    				maxHeight: 400, maxWidth:980
	    	    	});
		  	    	//cleaning oembed for next time
		  	    	$("div .videoChannel").removeClass('videoChannel');
		  	    	$("#broadcastBlock").show("slow");
		  	    	//document.getElementById("broadcastLive").innerHTML = data[''];
			  	    //$('#textAreaCh').append(data['text']);
		  	    	//$(text).appendTo('.multiLoadNew1');
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
		<!--[if IE]>
		<script type="text/javascript">
			add_placeholder('multiElement', 'http://');
		</script>
		<![endif]-->