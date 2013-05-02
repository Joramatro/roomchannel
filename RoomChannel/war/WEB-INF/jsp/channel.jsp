<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
    

    <%@ include file="/WEB-INF/jsp/header.jsp"%>
    <body class="clearfix" data-spy="scroll" data-target="#navbar" data-offset="10">
    	<%@ include file="/WEB-INF/jsp/menu.jsp"%>
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
                <%@ include file="/WEB-INF/jsp/lastPlayed.jsp"%>
                <div style="height:1px"></div>
                <!--#Radio-->
                <div id="Radio">
		            <div style="height:1px"></div>
	                <div id="intro" class="Parallax">
	                    <div class="ParallaxText">
	                        	
	                        <h2>BROADCASTING <span>LIVE</span> VIDEO</h2> 
	
	                        <div class="clearfix"></div>
	                        <blockquote>Start here your playlist </blockquote>
	                        <div class="clearfix"></div>
	                        
	                        <form class="broadcast-form form-inline">
	                        <input id="txtVideoUrl" class="broadcast-field" type="text" value="" placeholder="http://" />
	                        <div class="submit-url-container">
	                    		<button type="button" class="submit-url btn btn-large" id="btnBroadcast">BROADCASTING LIVE!</button>
	                		</div>
	                        </form>
	                        <div class="clearfix"></div>
	                        <p>or search for youtube videos</p>
	                        <div class="clearfix"></div>
	                        
	                        <form class="broadcast-form form-inline">
	                        <input id="txtVideoSearch" type="text" class="video-search-field" value="" placeholder=""/>
	                        <div class="submit-video-search-container">
			                <button name="searchButton" type="button" class="submit-video-search btn btn-small" onclick="searchClicked()">Search</button>
				            </div>
				            </form>
				            <br/>
				            <div id="videoResultsDiv"></div> 
				            
				            
	                        
	                        <div class="clearfix"></div>
	                        
	                        
	                        <input type="hidden" id="currentUrl"/>
	                    </div>
	                    <div style = "margin: 0 auto;margin-top: -50px; height:600px; width:1200px">
	                        <div id="videoChannelMain" style="" class=""> </div>
	                    </div>	                    
	                </div>
                
	                <div style="height:1px"></div>
					
					
		            <%@ include file="/WEB-INF/jsp/playlist.jsp"%>
		            <div style="height:1px"></div>
		            <!-- begin chatbox -->
					<div class="row-fluid">
					  <div class="span12">
					      <div id="accordion2" class="accordion">
					          <div class="accordion-group">
					              <div class="accordion-heading">
					                  <a class="accordion-toggle chatbox" data-toggle="collapse" href="#log" data-original-title="">
					                      <i class="icon-th icon-white"></i> <span class="divider-vertical"></span> Chat Box History<i class="icon-chevron-down icon-white pull-right"></i>
					                      <%-- <input type="button" name="toggle" value="CHAT BOX"/> --%>
					                  </a>
					              </div>
								   <div id="chat_div">
								   </div>
								   <div id="log" class="container clearfix accordion-body collapse in">
								   </div>
								 </div>
							</div>
						</div>		  
					</div>
					<!-- end chatbox -->
	            </div>
                
                <!--#channels-->
                <!-- begin channels -->
				<div class="row-fluid">
				  <div class="span12">
				      <div id="accordion2" class="accordion">
				          <div class="accordion-group">
				              <div class="accordion-heading">
				                  <a class="accordion-toggle" data-toggle="collapse" href="#Channels" data-original-title="">
				                      <i class="icon-th icon-white"></i> <span class="divider-vertical"></span> Channels<i class="icon-chevron-down icon-white pull-right"></i>
				                  </a>
				              </div>
						   </div>
						</div>
					</div>		  
				</div>
				<!-- end channels -->
                <div id="Channels" class="accordion-body collapse in">
                    <div class="container-fluid clearfix Services">
                        <div class="container clearfix TitleSection">
                            
							<h1>Radio <span>Channels</span> </h1> 
							                            
							<h1><span>Check</span> them<span> out</span> !</h1>

                        </div>
                        
                        <%-- 
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
                            --%>
                            <%-- <div class="container clearfix TitleSection">
                                
								<h1><span>We</span> make <span>our</span> clients <span>happy!</span></h1>

                            </div> --%>
                            
                            <%-- 
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
                            --%>
                            <%--
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
                            --%>
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
                        <div class="container clearfix" style="margin-top: 80px;">
                            <div class="row-fluid">
                                <div class="span6">
                                    <div class="ca-menu">
                                        <div>
                                            <a data-bind="click: toggle1" href="#"> <span class="ca-icon">1</span>

                                                <div class="ca-content">
                                                     <h2 class="ca-main">Create a new Channel</h2>

                                                     <h3 class="ca-sub">Create your own channel</h3>

                                                </div>
                                            </a>
                                        </div>
                                    </div> 
                                </div>
                              </div>
                              <div data-bind="visible: button1Visible">
                                    <%@ include file="/WEB-INF/jsp/fileupload.jsp"%>
                              </div>
                              <div data-bind="visible: button1OtherButtons" class="row-fluid">
                                <div class="span6">
                                    <div class="ca-menu">
                                        <div>
                                            <a href="#"> <span class="ca-icon">2</span>

                                                <div class="ca-content">
                                                     <h2 class="ca-main">Share your Channel</h2>

                                                     <h3 class="ca-sub">Give it access whom you want </h3>

                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                              </div>
                              <div data-bind="visible: button1OtherButtons" class="row-fluid">
                                <div class="span6">
                                    <div class="ca-menu">
                                        <div>
                                            <a href="#"> <span class="ca-icon">3</span>

                                                <div class="ca-content">
                                                     <h2 class="ca-main">Search for Channels</h2>

                                                     <h3 class="ca-sub">Look for a kind of channel</h3>

                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--
                            <div class="row-fluid">
                                <div class="span6">
                                    <div class="ca-menu">
                                        <div>
                                            <a href="#"> <span class="ca-icon">C</span>

                                                <div class="ca-content">
                                                     <h2 class="ca-main">Create share Channel</h2>

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
                                                     <h2 class="ca-main">Create  Channel</h2>

                                                     <h3 class="ca-sub">Professionals in action</h3>

                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>
               
                <!--#Services-->
                <%-- 
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
                --%>
                <!-- begin team -->
				<%--<div class="row-fluid">
					  <div class="span12">
					      <div id="accordion2" class="accordion">
					          <div class="accordion-group">
					              <div class="accordion-heading">
					                  <a class="accordion-toggle" data-toggle="collapse" href="#Team" data-original-title="">
					                      <i class="icon-th icon-white"></i> <span class="divider-vertical"></span> Team<i class="icon-chevron-down icon-white pull-right"></i>
					                  </a>
					              </div>
							   </div>
							</div>
						</div>		  
					</div>
                 
                <div id="Team" class="accordion-body collapse in">
                    <div class="container-fluid clearfix Portfolio">
                        <div class="container clearfix TitleSection">
                            
					<h1>Our <span>Team</span> </h1> 
					                            
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
                                        </ul>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                --%>
                <!--#Portfolio-->
                <%--
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
                --%>
                <%-- 
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
                --%>

					<div class="row-fluid">
					  <div class="span12">
					      <div id="accordion2" class="accordion">
					          <div class="accordion-group">
					              <div class="accordion-heading">
					                  <a class="accordion-toggle" data-toggle="collapse" href="#Contact" data-original-title="">
					                      <i class="icon-th icon-white"></i> <span class="divider-vertical"></span> Contact<i class="icon-chevron-down icon-white pull-right"></i>
					                  </a>
					              </div>
							   </div>
							</div>
						</div>		  
					</div>
					<!-- end team -->
                <div id="Contact" class="accordion-body collapse in">
                    <div class="container-fluid clearfix Contact">
                        <div class="container clearfix TitleSection">
                            
					<h1>CONTACT <span>US</span> </h1> 
                            

                        </div>
                        <div class="container clearfix">
                            <div class="container">
                                <div class="span8" style="margin-top:20px">
                                    <iframe width="100%" height="374" frameborder="0" scrolling="no" marginheight="0"
                                    marginwidth="0" src="http://maps.google.com/maps/ms?ie=UTF8&hl=en&msa=0&msid=100392213042474707487.00045ff7bb7d29c258fd5&ll=53.34806,-6.247948&spn=0.008966,0.018239&z=15&output=embed"></iframe><br /><small></iframe>
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
                            <a href="#welcome" class="brand">RADIO<span>CHANNEL</span>
                            </a>
                            <p>All rights reserved. Site by &copy;
                                <a href="mailto:admin@radioChannel.com">Jorge</a>
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