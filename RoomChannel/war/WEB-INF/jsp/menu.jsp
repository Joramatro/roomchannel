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
                    <a class="brand" href="#">Radio<span>Channel</span>
                    </a>
                    <div class="brand"><label style="display:inline;float left; font-size:21px" id="nbrUsrs"><span>People...</span><img src="/images/loading.gif"/></div>
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
                            <li>
                                <a href="#Login" class="login">Login</a>
                            </li>
                            </c:when>
							<c:otherwise>
                            <li class="dropdown">
                                <a data-toggle="dropdown" href="#" >Hey, <span id="nickMenu">${user.name }</span>&nbsp;<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="modal-header">
											<c:choose>
											<c:when test="${empty user}">
                                            <h3>User: (set your name in your profile)</h3>
                                            </c:when>
                                            <c:otherwise>
                                            <h3>User: <span id="nickMenuUnfold">${user.name}</span></h3>
                                            </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="span1"><img src="img/avatar/photo.png" alt="avatar"></div>
                                                <div class="span3 pull-right">
                                                    <h5>${user.logMail}</h5>
                                                    <a href="#Profile" class="link-modal">My Channels</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <a href="#Profile" class="link-modal">Favourites</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <a href="#Profile" class="btn btn-info pull-left">Show my profile</a>
                                            <a class="btn btn-info logout" href="login.html">Logout</a>
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
                    <!--/.nav-collapse -->
                </div>
            </div>
        </div>