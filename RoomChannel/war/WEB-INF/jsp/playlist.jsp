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
                  <a class="accordion-toggle" data-toggle="collapse" href="#gallery" data-original-title="">
                      <i class="icon-th icon-white"></i> <span class="divider-vertical"></span> Your Playlist<i class="icon-chevron-down icon-white pull-right"></i>
                  </a>
              </div>
              <div id="gallery" class="accordion-body collapse in">
                  <div class="accordion-inner paddind">
                      <div id="guggenheim-container">
                                                            
                                                            
                         <ul class="thumbnails guggenheim-slider">
                         </ul>
                                                            
						</div>
					<p>
                       <a href="javascript:" class="btn" onclick='gallery.reset()'><i class="icon-refresh"></i> Reset</a> |
                       <%--
                       <a href="javascript:" class="btn" onclick='reorder()'><i class="icon-retweet"></i> Re-order elements</a> |
                       <a href="javascript:" class="btn" onclick='filterEls("blue")'><i class="icon-filter"></i> Blue</a>
                       <a href="javascript:" class="btn" onclick='filterEls("red")'><i class="icon-filter"></i> Red</a>
                       <a href="javascript:" class="btn" onclick='filterEls("green")'><i class="icon-filter"></i> Green</a> |
                       --%>
                       <a href="javascript:" class="btn" onclick='gallery.prev()'><i class="icon-arrow-left"></i> Prev</a>
                       <a href="javascript:" class="btn" onclick='gallery.next()'>Next <i class="icon-arrow-right"></i></a>
					<br /></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="broadcastBlock" style = "display:none;width: 50%;margin: 0 auto;">
  <form class="broadcast-form form-inline">
     <input id="txtVideoUrl2" class="broadcast-field" type="text" value="" placeholder="Youtube URL" />
     <div class="submit-url-container">
 		<button type="button" class="submit-url btn btn-large" id="btnBroadcast">BROADCASTING LIVE!</button>
  	 </div>
   </form>
</div>
 