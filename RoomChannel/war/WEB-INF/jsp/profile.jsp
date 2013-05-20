<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div id="Profile" class="accordion-body collapse in" style="background: rgb(226, 226, 247);">
<div class="container clearfix">
<div class="row-fluid">
	 
	 <div class="span12">
	 	<!-- box-r -->
	 	<div class="box-r"> 		
		<div class="box-r-top">						
			<span class="box-r-top-title">
				Nick: <input id="nick" data-bind="value: stringValue, valueUpdate: 'afterkeydown'" class="search-query r6 minih" maxlength="20" type="text" value="${user.name}" alt="Type here to change your nick." title="Type here to change your nick" placeholder="Put your Nickname here"/> 
				<button id="nickUpdate" data-bind="enable: stringValue().length > 0" type="button" class="btn btn-mini margin-left">Update</button>
			</span>
			
			<label style="padding-top: 15px;"> Account: <span style="font-weight: bold;">${user.logMail}</span></label>

			<span class="box-r-top-right">
				<span id="badge_users" class="box-badge hide"></span>
			</span>
			<br>
			<%@ include file="/WEB-INF/jsp/avatar.jsp"%>
		</div>					
		<div id="box_0_content" class="box-r-content" style="margin-top:-55px">
     		
		<div class="container-fluid container-box margin-top">
		<div class="row-fluid">
			<div class="span6">
			<label style="padding-top: 15px;"> My Channels: </label>
			<div class="chart-area"><div id="chart5" style="height:10px"></div></div>
			<table class="table table-condensed table-hover margin-bottom0">
  			<tbody>
  			<c:if test="${empty user.channels}">
  				(no Channels created yet)
  			</c:if>
			<c:forEach  var="myChannel" items="${user.channelsDeref}" varStatus="count">
			<tr>
			<td><a href="/ch/${myChannel.name}">${myChannel.name}</a></td>
			<td>viewed: <span style="font-weight: bold;">${myChannel.nbrViewers}</span> times</td>
			<td><span class="pull-right"><a href="#" id="${myChannel.name}" class="btn btn-mini deleteChannel">Delete</a></span></td>
			</tr>
			</c:forEach>
			<input id="channelNameDelete" type="hidden" value=""/>
			</tbody>
			</table>
			<div class="chart-area">Chat Log (last 10 comments):<div id="chart5" style="height:145px">${user.chatHistory}</div></div>
			</div>
			
						
			<div class="span6">
					
			<div class="ibox-hero padding-10"><div id="chart4" style="height:245px"></div></div>
			</div>
			
		</div>
		</div>
	
		<!-- table full -->
		
		<div class="table-head">		
		
			<div id="box_tsea1_content" class="collapse in">
			<div class="table-search">			
			<select class="minih input-medium">
						<option>Today</option>
						<option>Last month</option>
						<option>All</option>
			</select>			
			</div>
			</div>
				
			<div class="table-search-opt">
			<a class="pull-left" href="users.html#self" data-toggle="collapse" data-target="#box_tsea1_content"><i id="box_tsea1_expand" class="icon-minus-sign"></i></a>
			<div style="text-align:right">
			<form class="form-search form-nomargin">
			<i id="tab_2_srem" class="icon-remove-circle tra icon-rpos"></i><input id="tab_2_svalue" class="search-query r6 minih" type="text"><button id="tab_2_search" type="button" class="btn btn-mini margin-left">Search</button>
			</form>
			</div>
			</div>		
		
		</div>
	
		<div id="tab_2"></div>
		
		<div class="table-foot">	
			
			<div class="pull-left">
			<div class="btn-group">
				<button id="tab_2_unselect" class="btn btn-mini" type="button"><i class="icon-remove-circle"></i></button>
				<button id="tab_2_selectall" class="btn btn-mini" type="button">All</button>
			</div>
			
			<div class="btn-group">
				<button id="tab_2_add" class="btn btn-mini" type="button">Add</button>
			</div>
			
			<div class="btn-group">
				<button id="tab_2_a1" class="btn btn-mini" type="button">Freeze</button>
			</div>			
			</div>
			
			<div style="text-align:right">
				<select id="tab_2_rowsn" data-table-rowsn="yes" class="minih r6 margin-right tab_2_navi">
				<option value="10">10</option>
				<option value="50">50</option>
				<option value="1">1</option>
				</select>
				<span id="tab_2_navi" class="btn-group"></span>
			</div>
		</div>
		
		<!-- end: table full -->

		</div>				
     	</div>
     	<!-- end: box-r -->	
	 </div>
	 
	 </div>
<!-- end: main content -->
</div>
</div>