<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Radiochannel</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Radio Channel Broadcasting">
        <meta name="author" content="Amatic">
        <link href='http://fonts.googleapis.com/css?family=Kelly+Slab' rel='stylesheet'
        type='text/css'>
        <link href="/css/reset.css" rel="stylesheet">
        <link href="/css/parallax_style_1.1.3.css" rel="stylesheet" />
        <link href="/css/bootstrap.css" rel="stylesheet">
        <link href="/css/style.css" rel="stylesheet" />
        <link href="/css/about_slider/lean-slider.css" rel="stylesheet" />
        <link rel="stylesheet" href="/css/camera.css" />
        <link rel="stylesheet" href="/css/blur.css" />
        <!--blur slidShow -->
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/icon/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/icon/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/icon/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="/icon/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="/icon/favicon.ico">
        <link rel="stylesheet" href="/css/jquery.oembed.css"/>
		<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" href="/css/apprise-v2.css" type="text/css" />
		<link type="text/css" href="/css/jquery.ui.chatbox.css" rel="stylesheet" />
		<link type="text/css" href="/css/jquery.gritter.css" rel="stylesheet" />
        <style>
			.ui-autocomplete-loading { background: white url('/images/loading.gif') right center no-repeat; }
		</style>
		<link rel="stylesheet" href="/css/bootstrap-image-gallery.min.css">
		<link rel="stylesheet" href="/css/jquery.fileupload-ui.css">
		<!-- CSS adjustments for browsers with JavaScript disabled -->
		<noscript><link rel="stylesheet" href="/css/jquery.fileupload-ui-noscript.css"></noscript>
		<!-- Shim to make HTML5 elements usable in older Internet Explorer versions -->
		<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
		
		
		<style type="text/css">

    	<c:forEach var="image" items="${channel.lImages}" varStatus="status" end="6">
			<c:if test="${status.count eq 1}">
				.cb-slideshow li:nth-child(1) span {
  					background-image: url(../images/blur_slider/1.jpg);
				}
			</c:if>
			<c:if test="${status.count eq 2}">
				.cb-slideshow li:nth-child(2) span {
				  background-image: url(../images/blur_slider/2.jpg);
				  -webkit-animation-delay: 6s;
				  -moz-animation-delay: 6s;
				  -o-animation-delay: 6s;
				  -ms-animation-delay: 6s;
				  animation-delay: 6s;
				}				
			</c:if>
			<c:if test="${status.count eq 3}">
				.cb-slideshow li:nth-child(3) span {
				  background-image: url(../images/blur_slider/3.jpg);
				  -webkit-animation-delay: 12s;
				  -moz-animation-delay: 12s;
				  -o-animation-delay: 12s;
				  -ms-animation-delay: 12s;
				  animation-delay: 12s;
				}			
			</c:if>
			<c:if test="${status.count eq 4}">
				.cb-slideshow li:nth-child(4) span {
				  background-image: url(../images/blur_slider/4.jpg);
				  -webkit-animation-delay: 18s;
				  -moz-animation-delay: 18s;
				  -o-animation-delay: 18s;
				  -ms-animation-delay: 18s;
				  animation-delay: 18s;
				}			
			</c:if>
			<c:if test="${status.count eq 5}">
				.cb-slideshow li:nth-child(5) span {
				  background-image: url(../images/blur_slider/5.jpg);
				  -webkit-animation-delay: 24s;
				  -moz-animation-delay: 24s;
				  -o-animation-delay: 24s;
				  -ms-animation-delay: 24s;
				  animation-delay: 24s;
				}			
			</c:if>
			<c:if test="${status.count eq 6}">
				.cb-slideshow li:nth-child(6) span {
				  background-image: url(../images/blur_slider/6.jpg);
				  -webkit-animation-delay: 30s;
				  -moz-animation-delay: 30s;
				  -o-animation-delay: 30s;
				  -ms-animation-delay: 30s;
				  animation-delay: 30s;
				}			
			</c:if>															
		</c:forEach>

		</style>			
		
	
		
				
    </head>


