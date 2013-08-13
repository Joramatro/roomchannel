<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row-fluid">
  <div class="span12">
      <div id="accordion2" class="accordion">
          <div class="accordion-group">
              <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" href="#gallery-init" data-original-title="">
                      <i class="icon-th icon-white"></i> <span class="divider-vertical"></span> Last 32 Played<i class="icon-chevron-down icon-white pull-right"></i>
                  </a>
              </div>
              <div id="gallery-init" class="accordion-body collapse in">
				<div class="accordion-inner paddind">
					<p>
                       <a href="javascript:" class="btn" onclick='galleryInit.prev()'><i class="icon-arrow-left"></i> Prev</a>
                       <a href="javascript:" class="btn" onclick='galleryInit.next()'>Next <i class="icon-arrow-right"></i></a>
					<br /><br /></p>
					<div id="guggenheim-container-init">                                                            
						 <ul class="thumbnails guggenheim-slider">
					 		<c:forEach  var="video" items="${lastPlayedList}" varStatus="count">
					 		<c:if test="${!empty video.videoId}">
								<li class='span3 guggenheim-item'>
									<div class='thumbnail clearfix'>
									<div id="videoChannelLast${count.index}" style="" class=""> </div>
										<%-- <a href='${video.url}' class='oembed'></a>--%>									
									<div class='caption' style="display: inline-table;">
									<h5></h5>
									<a href='javascript:' class='btn'><i class='icon-search'></i></a>
									<a href='javascript:' class='btn left'><i class='icon-arrow-left'></i></a>
									<a href='javascript:' class='btn right'><i class='icon-arrow-right'></i></a>
									
									</div>
									</div>
								</li>
								</c:if>
							</c:forEach>
						</ul>                                                           
					</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

 