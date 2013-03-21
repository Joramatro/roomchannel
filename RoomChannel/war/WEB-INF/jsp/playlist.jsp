<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row-fluid">
<!--Tabs2-->
    <div class="span12">
        <div id="accordion1" class="accordion">
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" href="media.html#notification" data-original-title="">
                        <i class="icon-th icon-white"></i> <span class="divider-vertical"></span>  Your Playlist <i class="icon-chevron-down icon-white pull-right"></i>
                    </a>
                </div>
                <div id="notification" class="accordion-body collapse in">
                    <div class="accordion-inner paddind">

                        <ul class="thumbnails">
                            <%--
                            <li class="span3">
                                <div class="thumbnail clearfix">
                                    <!-- <img alt="" src="http://placehold.it/260x180"> -->
                                    <div id="videoChannel"> </div>
                                    <div class="caption">   <div class="btn-group pull-right">
                                            <button class="btn">Action</button>
                                            <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
                                            <ul class="dropdown-menu">
                                                <li><a href="media.html#"><i class="icon-pencil"></i> Edit</a></li>
                                                <li><a href="media.html#"><i class="icon-search"></i> Vew</a></li>
                                                <li><a href="media.html#"><i class="icon-remove"></i> Remove</a></li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>
                            </li>  
                            <li class="span3">
                                <div class="thumbnail clearfix">
                                    <img alt="" src="http://placehold.it/260x180">
                                    <div class="caption">   <div class="btn-group pull-right">
                                            <button class="btn">Action</button>
                                            <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
                                            <ul class="dropdown-menu">
                                                <li><a href="media.html#"><i class="icon-pencil"></i> Edit</a></li>
                                                <li><a href="media.html#"><i class="icon-search"></i> Vew</a></li>
                                                <li><a href="media.html#"><i class="icon-remove"></i> Remove</a></li>
                                            </ul>
                                        </div> 

                                    </div>
                                </div>
                            </li>   


                            <li class="span3">
                                <div class="thumbnail clearfix">
                                    <img alt="" src="http://placehold.it/260x180">
                                    <div class="caption">   <div class="btn-group pull-right">
                                            <button class="btn">Action</button>
                                            <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
                                            <ul class="dropdown-menu">
                                                <li><a href="media.html#"><i class="icon-pencil"></i> Edit</a></li>
                                                <li><a href="media.html#"><i class="icon-search"></i> Vew</a></li>
                                                <li><a href="media.html#"><i class="icon-remove"></i> Remove</a></li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>
                            </li>   

                            <li class="span3">
                                <div class="thumbnail clearfix">
                                    <img alt="" src="http://placehold.it/260x180">
                                    <div class="caption">   <div class="btn-group pull-right">
                                            <button class="btn">Action</button>
                                            <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
                                            <ul class="dropdown-menu">
                                                <li><a href="media.html#"><i class="icon-pencil"></i> Edit</a></li>
                                                <li><a href="media.html#"><i class="icon-search"></i> Vew</a></li>
                                                <li><a href="media.html#"><i class="icon-remove"></i> Remove</a></li>
                                            </ul>
                                        </div> 
                                    </div>
                                </div>
                            </li>   
							--%>
                        </ul>
<%-- 					<hr class="soften">
                        <ul class="thumbnails">
                            <li class="span3">
                                <div class="thumbnail">
                                    <img alt="" src="http://placehold.it/260x180">
                                    <div class="caption"> 
                                        <h5>Thumbnail label1</h5>
                                        <p>Cras justo odio, dapibus ac facilisis elit.</p>
                                        <a href="javascript:" class="btn"><i class="icon-pencil"></i></a> 
                                        <a href="javascript:" class="btn"><i class="icon-search"></i></a> 
                                        <a href="javascript:" class="btn btn-danger remove"><i class="icon-remove icon-white"></i></a> 
                                    </div>
                                </div>
                            </li>


                            <li class="span3">
                                <div class="thumbnail">
                                    <img alt="" src="http://placehold.it/260x180">
                                    <div class="caption"> 
                                        <h5>Thumbnail label2</h5>
                                        <p>Cras justo odio, dapibus ac facilisis elit.</p>
                                        <a href="javascript:" class="btn"><i class="icon-pencil"></i></a> 
                                        <a href="javascript:" class="btn"><i class="icon-search"></i></a> 
                                        <a href="javascript:" class="btn btn-danger remove"><i class="icon-remove icon-white"></i></a> 
                                    </div>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="thumbnail">
                                    <img alt="" src="http://placehold.it/260x180">
                                    <div class="caption"> 
                                        <h5>Thumbnail label3</h5>
                                        <p>Cras justo odio, dapibus ac facilisis elit.</p>
                                        <a href="javascript:" class="btn"><i class="icon-pencil"></i></a> 
                                        <a href="javascript:" class="btn"><i class="icon-search"></i></a> 
                                        <a href="javascript:" class="btn btn-danger remove"><i class="icon-remove icon-white"></i></a> 
                                    </div>
                                </div>
                            </li>
                            <li class="span3">
                                <div class="thumbnail">
                                    <img alt="" src="http://placehold.it/260x180">
                                    <div class="caption"> 
                                        <h5>Thumbnail label4</h5>
                                        <p>Cras justo odio, dapibus ac facilisis elit.</p>
                                        <a href="javascript:" class="btn"><i class="icon-pencil"></i></a> 
                                        <a href="javascript:" class="btn"><i class="icon-search"></i></a> 
                                        <a href="javascript:" class="btn btn-danger remove"><i class="icon-remove icon-white"></i></a> 
                                    </div>
                                </div>
                            </li>

                        </ul>
					--%>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>