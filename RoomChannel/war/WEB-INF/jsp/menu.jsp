<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

        <div id="navbar" class="navbar navbar-fixed-top">
            <div class="navbar-inner" >
                <div class="container" style="display: inline;">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
 <span class="icon-bar"></span>
 <span class="icon-bar"></span>

                    </a>
                    <a class="brand" href="/">Radio<span>Channel</span>
                    </a>
                    <div class="brand"><label style="display:inline;float left; font-size:21px" class="chatbox" id="nbrUsrs"><span>People...</span><img src="/images/loading.gif"/></div>
                    <div class="nav-collapse collapse">
                     
                        <ul class="nav pull-right">
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
                            <li class="divider-vertical"></li>
                            <c:choose>
							<c:when test="${empty user}">
							<li id="msg"></li>
                            <li>
                                <a id="login" href="#Login" class="login">Login</a>
                            </li>
                            </c:when>
							<c:otherwise>
                            <li class="dropdown">
                            <c:choose>
							<c:when test="${empty user.name}">
                            	<a data-toggle="dropdown" href="#" >Hey,&nbsp;<span id="nickMenu">...</span><b class="caret"></b></a>
                            </c:when>
                            <c:otherwise>
                            	<a data-toggle="dropdown" href="#" >Hey,&nbsp;<span id="nickMenu">${user.name }</span><b class="caret"></b></a>
                            </c:otherwise>
                            </c:choose>    
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="modal-header">
											<c:choose>
											<c:when test="${empty user.name}">
                                            <h3>User: <span id="nickMenuUnfold">(set your profile)</span></h3>
                                            </c:when>
                                            <c:otherwise>
                                            <h3>User: <span id="nickMenuUnfold">${user.name}</span></h3>
                                            </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div id="logoImg" class="span1">
	                                                <c:choose>
													<c:when test="${!empty user.avatarUrl}">
														<img src="${user.avatarUrl}" alt="avatar">
													</c:when>
													<c:otherwise>
														<img src='/images/Intro.jpg' alt="avatar">
													</c:otherwise>
	                                                </c:choose>
                                                </div>
                                                <div class="span3 pull-right">
                                                    <h5>${user.logMail}</h5>
                                                    <a href="#Profile" class="link-modal">My Channels</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="#Profile" class="link-modal">Favourites</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <a href="#Profile" class="btn btn-info pull-left">Show my profile</a>
                                            <a id="login" class="btn btn-info logout">Logout</a>
                                        </div>
                                    </li>
                                </ul>

                            </li>
                            
                            </c:otherwise>
					</c:choose>
                        </ul>
                    </div>
                    <div id="notification-firstVideo" style="display:none">
					</div>
					<div id="notification-firstGalVideo" style="display:none">
					</div>
					<div id="notification-nickUpdate" style="display:none">
					</div>
					<div id="notification-channelDeleted" style="display:none">
					</div>
                    <!--/.nav-collapse -->
                </div>
            </div>
        </div>