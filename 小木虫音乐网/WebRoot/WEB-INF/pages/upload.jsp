<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
<style type="text/css">
#col-md-8 {text-align: center;}
#codefile{background-color: #F2F4F8;}
</style>
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
			         <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        	<h1 class="page-header">上传音乐</h1>
        	<div class="row placeholders">
        		<div class="col-md-8">
		        	<form action="${pageContext.request.contextPath }/code" class="form-horizontal" method="POST" enctype="multipart/form-data">
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">音乐文件</label>
					    <div class="col-sm-5" >
					      <input type="file" class="form-control file" id="codefile" name="codefile" placeholder="音乐文件" data-msg-placeholder="请选择文件" data-show-preview="false" data-show-upload="false">
					    </div>
					    <div class="col-sm-5">
					      <p class="text-warning text-left" style="font-size: 16px; padding-top: 4px;"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;上传文件限定于音乐文件，文件大小不超过20M</p>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">歌曲说明</label>
					    <div class="col-sm-5">
					      <textarea class="form-control" id="intro" name="intro" placeholder="歌曲说明" rows="5"  style="resize:none;"></textarea>
					    </div>
					    <div class="col-sm-5">
					      <p class="text-warning text-left" id="intro_info" style="font-size: 16px; padding-top: 4px;"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;请填写歌曲说明！</p>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-5">
					      <button type="submit" class="btn btn-success btn-block">提交</button>
					    </div>
					  </div>
					</form>
	        	</div>
        	</div>
			</div>
        </section>
      </section>
    </section>    
  </section> 
  <%@ include file="inc/bottom.jsp" %>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/bootstrap-fileinput-master/js/fileinput.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/bootstrap-fileinput-master/js/locales/zh.js"></script>

	<script type="text/javascript">
		$(document).on('ready', function() {
			var idIntro=false;
			$("#intro").blur(function(){
	    		var value = $(this).val();
	    		if(isBlank(value)){
	    			//错误
	    			//在oldpassword_info中显示错误信息
	    			validateInfo("intro_info", false, "歌曲说明不可为空");
	    			idIntro = false;
	    		}else{
	    			//正确
	    			//在oldpassword_info中显示正确的信息
	    			validateInfo("intro_info", true, "");
	    			idIntro = true;
	    		}
	    	});
			
			function isBlank(value){
		    	if(value == null || value == ""){
		    		return true;
		    	}else{
		    		return false;
		    	}
		    }
			
			
			function validateInfo(boxid, isSuccess, message){
		    	var p = $("#" + boxid);
				p.removeClass("text-warning text-left");
				p.removeClass("text-danger");
				p.removeClass("text-success");
				p.empty();
				var icon;
				if(isSuccess){
					p.addClass("text-success");
					icon = $("<span class='glyphicon glyphicon-ok-circle'></span>");
				}else{
					p.addClass("text-danger");
					icon = $("<span class='glyphicon glyphicon-remove-circle'></span>");
				}
				var msg = $("<span>&nbsp;" + message + "</span>");
				p.append(icon);
				p.append(msg);
		    }

		});
	</script>
</body>
</html>
