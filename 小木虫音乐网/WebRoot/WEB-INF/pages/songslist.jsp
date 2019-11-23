<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>小米虫音乐网</title>
  <%@ include file="inc/head.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.js"></script>
  <script type="text/javascript">
  $(document).ready(function(){
    	var xmlhttp = new XMLHttpRequest();
    	xmlhttp.onreadystatechange = function(){
    		var path = new Array();
    		if(xmlhttp.readyState==4 && xmlhttp.status==200){
    			var codelist = JSON.parse(xmlhttp.responseText);
    			$.each(codelist,function(index,code){
    				var completepath = code.filepath;
    				path = completepath.split("XMCYYW");
    				var j1 = encodeURI(code.codename);
    			
    				var j2 = decodeURI(j1); 
    		
    				var tr = $("<tr></tr></br>");
    				var td1 = $("<td>"+ (index+1) +"</td>");
    				var td2 = $("<td>"+ code.codename +"</td>");
    				var td3 = $("<td>"+code.owner.username+"</td>");
    				var td4 = $("<td>"+ code.intro +"</td>");
    				var i = $("<i class='glyphicon glyphicon-arrow-down'></i>");
    				var a = $("<a class='downld' href='"+ path[1]+decodeURI(j1)+"'></a>");
    				var td5 = $("<td></td>");
    				a.append(i);
    				td5.append(a);
    				tr.append(td1);
    				tr.append(td2);
    				tr.append(td3);
    				tr.append(td4);
    				tr.append(td5);
    				$("table").append(tr);
    			});
    		}
    	};
    	xmlhttp.open("GET","findcodelist",true);
    	xmlhttp.send();
    	
    	$("a.downld").click(function(){
    		var aa = getQueryString("title");
    		decodeURI(aa);
    	});
    	function getQueryString(name){
    	     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
    	     var r = window.location.search.substr(1).match(reg);
    	     if(r!=null)return  unescape(r[2]); return null;
    	}
    	
  });
  </script>
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
    		<table>
    			<tr style="height: 100px;">
    				<td>音乐编号</td>
    				<td style="width: 400px;">音乐名称</td>
    				<td style="width: 300px;">音乐上传者</td>
    				<td style="width: 300px;">音乐说明</td>
    				<td>下载</td>
    			</tr>
    			
    		</table>
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
