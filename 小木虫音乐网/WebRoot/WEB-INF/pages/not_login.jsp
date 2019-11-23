<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>小米虫音乐网</title>
  <%@ include file="inc/head.jsp" %>
</head>
<body class="">
  <section class="vbox">
	<%@ include file="inc/header.jsp" %>
    <section>
      <section class="hbox stretch">
        <!-- .aside -->
		<%@ include file="inc/aside.jsp" %>
        <!-- /.aside -->
        <section id="content">
			   <!-- Begin page content -->
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    		<div class="text-center">
    	       <h1 class="text-danger"><span class="glyphicon glyphicon-remove" style="position: relative; top:6px;"></span>&nbsp;请先登录!</h1>
            </div>
        </div>
      </div>
    </div>
			</div>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section> 
  <%@ include file="inc/bottom.jsp" %>
</body>
</html>
