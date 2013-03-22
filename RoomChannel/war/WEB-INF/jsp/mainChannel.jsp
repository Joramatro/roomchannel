<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
    
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Radiochannel</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href='http://fonts.googleapis.com/css?family=Kelly+Slab' rel='stylesheet'
        type='text/css'>
        <link href="css/reset.css" rel="stylesheet">
        <link href="css/parallax_style_1.1.3.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/about_slider/lean-slider.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/camera.css" />
        <link rel="stylesheet" href="css/blur.css" />
        <!--blur slidShow -->
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="icon/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="icon/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="icon/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="icon/apple-touch-icon-57-precomposed.png">
        <link rel="shortcut icon" href="icon/favicon.ico">
        <link rel="stylesheet" href="/css/jquery.oembed.css"/>
		<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" href="css/apprise-v2.css" type="text/css" />
        <style>
			.ui-autocomplete-loading { background: white url('/img/loading.gif') right center no-repeat; }
		</style>
    </head>
    
    <body class="clearfix" data-spy="scroll" data-target="#navbar" data-offset="10">
    	<%@ include file="/WEB-INF/jsp/header.jsp"%>
        <div id="navbar" class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
 <span class="icon-bar"></span>
 <span class="icon-bar"></span>

                    </a>
                    <a class="brand" href="#">Radio<span>Channel</span>
                    </a>
                    <div class="brand"><label style="display:inline;float left; font-size:32px" id="nbrUsrs"><img src="/img/loading.gif"/> Users now </div>
                    <div class="nav-collapse collapse pull-right">
                     
                        <ul class="nav">
                            <li class="active">
                                <a href="#welcome">Home</a>
                            </li>
                            <li>
                                <a href="#Radio">Radio</a>
                            </li>
                            <li>
                                <a href="#Channels">Channels</a>
                            </li>
                            <li>
                                <a href="#Contact">Contact</a>
                            </li>
                            <li>
                                <a href="#Login" class="login">Login</a>
                            </li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
        </div>
        <div class="container-fluid clearfix">
            <div class="row-fluid">
                <div id="welcome">
                    <div class="container-fluid clearfix" style="padding:0; overflow:hidden">
                        <ul class="cb-slideshow">
                            <li><span>Image 01</span>
                                <div>
                                    <h3>Broadcast live videos from the web</h3>
                                </div>
                            </li>
                            <li><span>Image 02</span>
                            	<div>
									<h3>Customize your radio channel profile</h3>
								</div>
                            </li>
                            <li><span>Image 03</span>
                                <div>
                                    <h3>Real-time Online Users listening to you</h3>
                                </div>
                            </li>
                            <li><span>Image 04</span>
                                <div>
                                    <h3>Create your own Radio Channels</h3>
                                </div>
                            </li>
                            <li><span>Image 05</span>
                                <div>
                                    <h3>Share online content with who you want</h3>
                                </div>
                            </li>
                            <li><span>Image 06</span>
                                <div>
                                    <h3>Participate in the best radio channel project on the web</h3>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div>
                    <div class="container-fluid clearfix About">
                        <div class="container clearfix">
                            <div class="container clearfix TitleSection">
                                

                                
							<h1>"Life is what you make it. Always has been, always will be." </h1><b>- Eleanor Roosevelt -</b>

                            
                    		</div>
                		</div>
                	</div>
                </div>
                <!--#Radio-->
                <div id="Radio">
                
	                <div id="intro" class="Parallax">
	                    <div class="ParallaxText">
	                        	
	                        <h2>BROADCASTING <span>LIVE</span> VIDEO</h2> 
	
	                        <div class="clearfix"></div>
	                        <blockquote>Start your playlist </blockquote>
	                        <div class="clearfix"></div>
	                        <form class="broadcast-form form-inline">
	                        <input id="txtVideoUrl" class="broadcast-field" type="text" value="" placeholder="http://" />
	                        <div class="submit-url-container">
	                    		<button type="button" class="submit-url btn btn-large" id="btnBroadcast">BROADCASTING LIVE!</button>
	                		</div>
	                        </form>
							<input id="txtName" type="hidden" value="General"/>
							<div class="clearfix"></div>
	                        <p>First broadcast live video will appear here</p>
	                        
	                    </div>
	                    <div style = "margin: 0 auto;margin-top: 0px; height:600px; width:1000px">
	                        <div id="videoChannelMain" style="" class="videoChannel"> </div>
	                    </div>	                    
	                </div>
                </div>
                <div></div>
                <div style="height:1px"></div>
	            <%@ include file="/WEB-INF/jsp/playlist.jsp"%>
                <!--#intro-->
                <div id="Channels">
                    <div class="container-fluid clearfix Services">
                        <div class="container clearfix TitleSection">
                            
							<h1>Our <span>Services</span> </h1> 
							                            
							<h1><span>Lorem</span> ipsum <span>dolor</span> sit <span>amet</span></h1>

                        </div>
                        <div class="container clearfix">
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="slider-wrapper">
                                        <div id="slider">
                                            <div class="slide1">
                                                <img src="images/1.jpg" alt="" />
                                            </div>
                                            <div class="slide2">
                                                <img src="images/2.jpg" alt="" />
                                            </div>
                                            <div class="slide3">
                                                <img src="images/3.jpg" alt="" />
                                            </div>
                                            <div class="slide4">
                                                <img src="images/4.jpg" alt="" />
                                            </div>
                                        </div>
                                        <div id="slider-direction-nav"></div>
                                        <div id="slider-control-nav"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="container clearfix TitleSection">
                                
								<h1><span>We</span> make <span>our</span> clients <span>happy!</span></h1>

                            </div>
                            <div class="row-fluid">
                                <div class="span6">
                                    <div class="ca-menu">
                                        <div>
                                            <a href="#"> <span class="ca-icon">A</span>

                                                <div class="ca-content">
                                                     <h2 class="ca-main">Web Design</h2>

                                                     <h3 class="ca-sub">Personalized to your needs</h3>

                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="span6">
                                    <div class="ca-menu">
                                        <div>
                                            <a href="#"> <span class="ca-icon">I</span>

                                                <div class="ca-content">
                                                     <h2 class="ca-main">Web Development</h2>

                                                     <h3 class="ca-sub">Advanced use of technology</h3>

                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="span6">
                                    <div class="ca-menu">
                                        <div>
                                            <a href="#"> <span class="ca-icon">C</span>

                                                <div class="ca-content">
                                                     <h2 class="ca-main">Wordpress</h2>

                                                     <h3 class="ca-sub">Understanding visually</h3>

                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="span6">
                                    <div class="ca-menu">
                                        <div>
                                            <a href="#"> <span class="ca-icon">S</span>

                                                <div class="ca-content">
                                                     <h2 class="ca-main">Sophisticated Team</h2>

                                                     <h3 class="ca-sub">Professionals in action</h3>

                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="span6">
                                    <div class="ca-menu">
                                        <div>
                                            <a href="#"> <span class="ca-icon">d</span>

                                                <div class="ca-content">
                                                     <h2 class="ca-main">Brand Creation</h2>

                                                     <h3 class="ca-sub">24/7 for you needs</h3>

                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="span6">
                                    <div class="ca-menu">
                                        <div>
                                            <a href="#"> <span class="ca-icon">O</span>

                                                <div class="ca-content">
                                                     <h2 class="ca-main">Corporate Identity</h2>

                                                     <h3 class="ca-sub">Lorem ipsum dolor</h3>

                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row-fluid">
                                 <h2>Pricing Tables </h2>

                            </div>
                            <div class="row-fluid">
                                <div class="span4">
                                    <div class="well PricingTables Standard">
                                        	<h2>Standard</h2>

                                         <h3>$15.99 / month</h3>

                                        <p><span class="label">POPULAR</span>
                                        </p>
                                        <ul>
                                            <li><i class="icon-ok-sign"></i>10 users</li>
                                            <li><i class="icon-ok-sign"></i>5TB of space</li>
                                            <li><i class="icon-ok-sign"></i>About Us</li>
                                            <li><i class="icon-ok-sign"></i>News Archive</li>
                                            <li><i class="icon-ok-sign"></i>Our Service</li>
                                            <li><i class="icon-ok-sign"></i>Our Team</li>
                                            <li><i class="icon-ok-sign"></i>Clients Testimonials</li>
                                            <li><i class="icon-ok-sign"></i>Job Opportunities</li>
                                            <li><i class="icon-ok-sign"></i>F.A.Q</li>
                                        </ul>
                                        <p class="Special">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                        <p>
                                            <a class="btn btn-large" href="#"><i class="icon-ok icon-white"></i> Select plan</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="span4">
                                    <div class="well PricingTables Professional">
                                        	<h2>Professional</h2>

                                         <h3>$10.99 / month</h3>

                                        <p><span class="label label-success">POPULAR</span>
                                        </p>
                                        <ul>
                                            <li><i class="icon-ok-sign"></i>10 users</li>
                                            <li><i class="icon-ok-sign"></i>5TB of space</li>
                                            <li><i class="icon-ok-sign"></i>About Us</li>
                                            <li><i class="icon-ok-sign"></i>News Archive</li>
                                            <li><i class="icon-ok-sign"></i>Our Service</li>
                                            <li><i class="icon-ok-sign"></i>Our Team</li>
                                            <li><i class="icon-ok-sign"></i>Clients Testimonials</li>
                                            <li><i class="icon-ok-sign"></i>Job Opportunities</li>
                                            <li><i class="icon-ok-sign"></i>F.A.Q</li>
                                        </ul>
                                        <p class="Special">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                        <p>
                                            <a class="btn btn-success btn-large" href="#"><i class="icon-ok icon-white"></i> Select plan</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="span4">
                                    <div class="well PricingTables Premium">
                                        	<h2>Premium</h2>

                                         <h3>$8.99 / month</h3>

                                        <p><span class="label label-info">BUDGET</span>
                                        </p>
                                        <ul>
                                            <li><i class="icon-ok-sign"></i>10 users</li>
                                            <li><i class="icon-ok-sign"></i>5TB of space</li>
                                            <li><i class="icon-ok-sign"></i>About Us</li>
                                            <li><i class="icon-ok-sign"></i>News Archive</li>
                                            <li><i class="icon-ok-sign"></i>Our Service</li>
                                            <li><i class="icon-ok-sign"></i>Our Team</li>
                                            <li><i class="icon-ok-sign"></i>Clients Testimonials</li>
                                            <li><i class="icon-ok-sign"></i>Job Opportunities</li>
                                            <li><i class="icon-ok-sign"></i>F.A.Q</li>
                                        </ul>
                                        <p class="Special">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                        <p>
                                            <a class="btn btn-large" href="#"><i class="icon-ok icon-white"></i> Select plan</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--#Services-->
                <div id="second" class="Parallax">
                    <div class="ParallaxText">
                        	<h2>WORD <span>OF</span> THE <span>WISE</span></h2>

                        <div class="clearfix"></div>
                        <blockquote>A man must be big enough to admit his mistakes, smart enough to profit
                            from them, and strong enough to correct them.</blockquote>
                        <div class="clearfix"></div>
                        <p>- Jason Adams -</p>
                    </div>
                </div>
                <!--#second-->
                <div id="Portfolio">
                    <div class="container-fluid clearfix Portfolio">
                        <div class="container clearfix TitleSection">
                            
<h1>Our <span>Portfolio</span> </h1> 
                            
<h1><span>Lorem</span> ipsum <span>dolor</span> sit <span>amet</span></h1>

                        </div>
                        <div class="container clearfix">
                            <div class="span12">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh erat,
                                    sagittis sit amet congue at, aliquam eu libero. Integer molestie, turpis
                                    vel ultrices facilisis, nisi mauris sollicitudin mauris.</p>
                            </div>
                            <div class="row-fluid">
                                <div class="span12">
                                    <nav id="filter"></nav>
                                    <section id="container">
                                        <ul id="stage">
                                            <li data-tags="Photographies">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/1.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Video,Photographies">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/2.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Web Design,Video">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/3.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Web Design,Photographies">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/4.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Video">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/5.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Web Design,Video,Photographies">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/6.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Video,Photographies">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/7.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Web Design">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/8.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Web Design,Video">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/9.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Web Design">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/10.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Video,Photographies">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/11.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Video,Photographies">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/12.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Photographies">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/13.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Web Design,Video">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/14.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                            <li data-tags="Audio">
                                                <div class="filter-thumb-container">
                                                    <div class="filter-thumb"> <span><img src="images/portfolio/18.jpg" alt="Portfolio Filter" /></span>

                                                    </div>
                                                </div>
                                                <div>
                                                     <h4>Lorem ipsum dolor </h4> 
                                                    <p>Lorem ipsum</p>
                                                </div>
                                            </li>
                                        </ul>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--#Portfolio-->
                <div id="third" class="Parallax">
                    <div class="ParallaxText">
                        	<h2>WORD <span>OF</span> THE <span>WISE</span></h2>

                        <div class="clearfix"></div>
                        <blockquote>A man must be big enough to admit his mistakes, smart enough to profit
                            from them, and strong enough to correct them.</blockquote>
                        <div class="clearfix"></div>
                        <p>- Jason Adams -</p>
                    </div>
                </div>
                <!--#third-->
                <div id="LargeSlider">
                    <div class="container-fluid clearfix LargeSlider">
                        <div class="camera_wrap camera_emboss" id="camera_wrap_3">
                            <div data-src="images/camera/slides/1.jpg">
                                <div class="fadeIn camera_effected Caption">" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh
                                    erat, sagittis sit amet congue at, aliquam eu libero "</div>
                            </div>
                            <div data-src="images/camera/slides/3.jpg" data-time="1500" data-trasPeriod="4000"
                            data-link="#" data-target="_blank">
                                <div class="fadeIn camera_effected Caption">" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh
                                    erat, sagittis sit amet congue at, aliquam eu libero "</div>
                            </div>
                            <div data-src="images/camera/slides/poster.jpg">
                                <iframe width="100%" height="100%" src="http://www.youtube.com/embed/EokWzMUJcCU?feature=player_detailpage"
                                frameborder="0" allowfullscreen></iframe>
                            </div>
                            <div data-src="images/camera/slides/4.jpg" data-time="1500" data-trasPeriod="4000"
                            data-link="#" data-target="_blank">
                                <div class="fadeIn camera_effected Caption">" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh
                                    erat, sagittis sit amet congue at, aliquam eu libero "</div>
                            </div>
                            <div data-src="images/camera/slides/5.jpg" data-time="1500" data-trasPeriod="4000"
                            data-link="#" data-target="_blank">
                                <div class="fadeIn camera_effected Caption">" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh
                                    erat, sagittis sit amet congue at, aliquam eu libero "</div>
                            </div>
                            <div data-src="images/camera/slides/6.jpg" data-time="1500" data-trasPeriod="4000"
                            data-link="#" data-target="_blank">
                                <div class="fadeIn camera_effected Caption">" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh
                                    erat, sagittis sit amet congue at, aliquam eu libero "</div>
                            </div>
                            <div data-src="images/camera/slides/7.jpg" data-time="1500" data-trasPeriod="4000"
                            data-link="#" data-target="_blank">
                                <div class="fadeIn camera_effected Caption">" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh
                                    erat, sagittis sit amet congue at, aliquam eu libero "</div>
                            </div>
                            <div data-src="images/camera/slides/8.jpg" data-time="1500" data-trasPeriod="4000"
                            data-link="#" data-target="_blank">
                                <div class="fadeIn camera_effected Caption">" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh
                                    erat, sagittis sit amet congue at, aliquam eu libero "</div>
                            </div>
                            <div data-src="images/camera/slides/9.jpg" data-time="1500" data-trasPeriod="4000"
                            data-link="#" data-target="_blank">
                                <div class="fadeIn camera_effected Caption">" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh
                                    erat, sagittis sit amet congue at, aliquam eu libero "</div>
                            </div>
                        </div>
                        <!-- #camera_wrap_3 -->
                    </div>
                </div>
                <!--#LargeSlider-->
                <div id="fourth" class="Parallax">
                    <div class="ParallaxText">
                        	<h2>WORD <span>OF</span> THE <span>WISE</span></h2>

                        <div class="clearfix"></div>
                        <blockquote>A man must be big enough to admit his mistakes, smart enough to profit
                            from them, and strong enough to correct them.</blockquote>
                        <div class="clearfix"></div>
                        <p>- Jason Adams -</p>
                    </div>
                </div>
                <!--#fourth-->
                <div id="Contact">
                    <div class="container-fluid clearfix Contact">
                        <div class="container clearfix TitleSection">
                            
<h1>CONTACT <span>US</span> </h1> 
                            
<h1><span>LET'S</span> HAVE  <span>A</span> DISCUSSION 	</h1>

                        </div>
                        <div class="container clearfix">
                            <div class="container">
                                <div class="span8" style="margin-top:20px">
                                    <iframe width="100%" height="374" frameborder="0" scrolling="no" marginheight="0"
                                    marginwidth="0" src="https://maps.google.com.eg/maps?f=q&amp;source=s_q&amp;hl=ar&amp;geocode=&amp;q=%D8%B1%D8%B4%D8%AF%D9%8A,+%D8%A7%D9%84%D8%A5%D8%B3%D9%83%D9%86%D8%AF%D8%B1%D9%8A%D8%A9&amp;aq=1&amp;oq=%D8%B1%D8%B4%D8%AF%D9%89+%D8%A7%D9%84%D8%A7%D8%B3%D9%83&amp;sll=26.9061,30.876198&amp;sspn=8.889374,21.643066&amp;ie=UTF8&amp;hq=&amp;hnear=%D8%B1%D8%B4%D8%AF%D9%8A&amp;t=m&amp;ll=31.239591,29.949589&amp;spn=0.036693,0.171661&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
                                    <br />
                                </div>
                                <div class="span4">
                                     <h2>Contact Info</h2>

                                    <div class="well">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo
                                            ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis
                                            dis parturient montes.</p>
                                        <hr>
                                        <div class="contact-info">
                                            <ul>
                                                <li> <i class="icon-globe" style="margin-right:10px"></i>Lorem ipsum dolor</li>
                                                <br>
                                                <li> <i class="icon-bullhorn" style="margin-right:10px"></i>+(20) (0) 491.27.29</li>
                                                <br>
                                                <li> <i class="icon-envelope" style="margin-right:10px"></i>

                                                    <a href="mailto:ahmedeabbas@yahoo.com">Some@yahoo.com</a>
                                                </li>
                                                <br>
                                                <li> <i class="icon-map-marker" style="margin-right:10px"></i>Lorem ipsum dolor
                                                    consectetuer adipiscing elit.</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="span12">
                                    
<h2>Get In Touch With Us</h2>

                                    <div class="well">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo
                                            ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis
                                            dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies
                                            nec, pellentesque eu, pretium quis, sem.</p>
                                        <form class="form-horizontal"
                                        id="registerHere" method='post' action=''>
                                            <fieldset>
                                                <div class="control-group">
                                                    <label class="control-label" for="input01">Name</label>
                                                    <div class="controls">
                                                        <input type="text" class="input-xlarge" id="user_name" name="user_name">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="input01">Email</label>
                                                    <div class="controls">
                                                        <input type="text" class="input-xlarge" id="user_email" name="user_email">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="input01">Subject</label>
                                                    <div class="controls">
                                                        <input type="text" class="input-xlarge" id="pwd" name="pwd">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="input01">Your Message</label>
                                                    <div class="controls">
                                                        <textarea cols="" rows="" class="input-xlarge" id="cpwd" name="cpwd"></textarea>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label" for="input01"></label>
                                                    <div class="controls">
                                                        <button type="submit" class="btn" rel="tooltip" title="Send Message">Send Message</button>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--#Contact-->
                <div id="fifth" class="Parallax">
                    <div class="ParallaxText">
                        	<h2>WORD <span>OF</span> THE <span>WISE</span></h2>

                        <div class="clearfix"></div>
                        <blockquote>A man must be big enough to admit his mistakes, smart enough to profit
                            from them, and strong enough to correct them.</blockquote>
                        <div class="clearfix"></div>
                        <p>- Jason Adams -</p>
                    </div>
                </div>
                <!--#fifth-->
                <div class="container-fluid Footer">
                    <div class="container">
                        <footer>
                            <ul class="Social">
                                <li>
                                    <a rel="tooltip" class="Rss" href="#" data-placement="top" data-original-title="RSS">Rss</a>
                                </li>
                                <li>
                                    <a class="Facebook" rel="tooltip" href="#" data-original-title="Facebook">Facebook</a>
                                </li>
                                <li>
                                    <a class="Twitter" rel="tooltip" href="#" data-original-title="Twitter">Twitter</a>
                                </li>
                                <li>
                                    <a class="Dribbble" rel="tooltip" href="#" data-original-title="Dribbble">Dribbble</a>
                                </li>
                                <li>
                                    <a class="YouTube" rel="tooltip" href="#" data-original-title="YouTube">YouTube</a>
                                </li>
                                <li>
                                    <a class="Pinterest" rel="tooltip" href="#" data-original-title="Pinterest">Pinterest</a>
                                </li>
                                <li>
                                    <a class="Behance" rel="tooltip" href="#" data-original-title="Behance">Behance</a>
                                </li>
                                <li>
                                    <a class="Googleplus" rel="tooltip" href="#" data-original-title="Googleplus">Googleplus</a>
                                </li>
                                <li>
                                    <a class="Forrst" rel="tooltip" href="#" data-original-title="Forrst">Forrst</a>
                                </li>
                                <li>
                                    <a class="Instagram" rel="tooltip" href="#" data-original-title="Instagram">Instagram</a>
                                </li>
                                <li>
                                    <a class="Deviantart" rel="tooltip" href="#" data-original-title="Deviantart">Deviantart</a>
                                </li>
                                <li>
                                    <a class="Soundcloud" rel="tooltip" href="#" data-original-title="Soundcloud">Soundcloud</a>
                                </li>
                                <li>
                                    <a class="Wordpress" rel="tooltip" href="#" data-original-title="Wordpress">Wordpress</a>
                                </li>
                                <li>
                                    <a class="Picasa" rel="tooltip" href="#" data-original-title="Picasa">Picasa</a>
                                </li>
                            </ul>
                            <a href="#welcome" class="brand">Parallax<span>606</span>
                            </a>
                            <p>All rights reserved. Theme by &copy;
                                <a href="mailto:ahmedeabbas@yahoo.com">Coyier</a>
                            </p>
                        </footer>
                    </div>
                </div>
            </div>
            <!-- /Row -->
        </div>
        <!-- /container -->
        <div id="toTop">To Top</div>
        <%@ include file="/WEB-INF/jsp/footer.jsp"%>
    </body>

</html>