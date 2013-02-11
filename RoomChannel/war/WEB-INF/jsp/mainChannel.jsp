<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        
        <link rel="stylesheet" href="/css/jquery.oembed.css"/>
		<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <style>
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
        </style>
              
		<style>
			.ui-autocomplete-loading { background: white url('/img/loading.gif') right center no-repeat; }
		</style>
    </head>
	<body>
		<%@ include file="/WEB-INF/jsp/header.jsp"%>
		
		<div>Current online users: <label style="display:inline;float left; font-size:32px" id="nbrUsrs"><img src="/img/loading.gif"/></label></div><br/>
		<input id="videoUrl" type="text" value="" placeholder="http://" />
		<div id="videoChannel"></textarea>
			
		<%@ include file="/WEB-INF/jsp/footer.jsp"%>
	</body>
</html>