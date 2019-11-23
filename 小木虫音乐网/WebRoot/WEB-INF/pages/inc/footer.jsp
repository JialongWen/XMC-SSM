<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <footer class="footer bg-dark" style="width: 100%;">
                 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.js"></script>
                  <script type="text/javascript"> 
                  var s =0;
                  $(document).ready(function(){
                  	var xmlhttp = new XMLHttpRequest();
                  	var codename = new Array();
                  	var song = new Array();
                  	xmlhttp.onreadystatechange = function(){
                  		if(xmlhttp.readyState==4 && xmlhttp.status==200){
                  			var codelist = JSON.parse(xmlhttp.responseText);
                  			$.each(codelist,function(index,code){
                  				var li = $("<li class='list-group-item' style='background-color: #E0EAEC;'></li>");
                  				var span = $("<span class='pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm'></span>");
                  				var i = $("<i class='on b-light right sm'></i>");
                  				var div = $("<div></div>");
                  				var div1 = $("<div></div>");
                  				var aa = $("<a id='"+ index +"'  onclick=\"play('"+index+"//"+code.codename+"')\">"+ code.codename +"</a>");
                  				//var aa = $("<a onclick='play("+"\'"+code.filepath+"\'"+")'>"+ code.codename +"</a>");
                  				div.append(aa);
                  				div1.append(div);
                  				span.append(i);
                  				li.append(span);
                  				li.append(div1);
                  				$("ul.display_ul").append(li);
                  				codename[index] = code.codename;
                  				var i= code.filepath;
                  				var c= new Array();
                  				c = i.split("webapps");
                  				song[index] = c[1]+code.codename;
                  			});
                  		}
                  	};
                  	xmlhttp.open("GET","findcodelist",true);
                  	xmlhttp.send();
                  	
                  	
                  	//上一首
                  	$("a[class='jp-next']").click(function(){
                  		$("a[class='jp-play']").hide();
                		$("a#jp-suspend").show();
                  		if (s==song.length-1) {
                  			s=0;
                  			audio.src =song[s];
                  			$("#sii").remove();
                      		var i = $("<i id='sii'>"+ codename[s] +"</i>");
                      		$("div#codenamenew").append(i);
                  			audio.play();
                  		}else{
                  		s=s+1;
                  		audio.src =song[s];
                  		$("#sii").remove();
                  		var i = $("<i id='sii'>"+ codename[s] +"</i>");
                  		$("div#codenamenew").append(i);
                  		audio.play();
                  		}
        			});
                  	
                  	
                  	//下一首
                  	$("a[class='jp-previous']").click(function(){
                  		$("a[class='jp-play']").hide();
                		$("a#jp-suspend").show();
                  		if (s==0) {
                  			s=song.length-1;
                  			audio.src =song[s];
                  			$("#sii").remove();
                      		var i = $("<i id='sii'>"+ codename[s] +"</i>");
                      		$("div#codenamenew").append(i);
                  			audio.play();
                  		}else{
                  		s=s-1;
                  		audio.src =song[s];
                  		$("#sii").remove();
                  		var i = $("<i id='sii'>"+ codename[s] +"</i>");
                  		$("div#codenamenew").append(i);
                  		audio.play();
                  		}
        			});
                  	 
                  	//播放
                    $("a[class='jp-play']").click(function(){
                    	var audio = $("#audio")[0];
                    	if(audio.paused){
                    		$("a[class='jp-play']").hide();
                    		$("a#jp-suspend").show();
                    		timer = setInterval(function(){
                    			if(audio.ended){
                    				$("a[class='jp-previous']").click();
                    			}else{
                    				var current =audio.currentTime;
                    				var duration =audio.duration;
	                    		$(".currenTime").text(formatTime(current));
	                    		$(".totalTitime").text(formatTime(duration));
	                    		
                    			}
                    		});
                    		$("#sii").remove();
                      		var i = $("<i id='sii'>"+ codename[s] +"</i>");
                      		$("div#codenamenew").append(i);
                      		audio.play();
                      	}
                      });
                    
                    //暂停
                    $("a#jp-suspend").click(function(){
                    	var audio = $("#audio")[0];
                    	if(audio.played){
                    		$("a#jp-suspend").hide();
                    		$("a[class='jp-play']").show();
                      		audio.pause();
                      	}
                    });
                   /*  $("a[class='jp-suspend']").click(function(){
                    	var audio = $("#audio")[0];
                    	if(audio.played){
                    		var i = $("<i class='icon-control-play i-2x'></i>");
                    		var a = $("<a class='jp-play'></a>");
                    		a.append(i);
                      		$("a[class='jp-suspend']").remove();
                      		$("div#jp-con").append(a);
                      		audio.pause();
                      	}
                    }); */
                    
                    //音量大小
                    $("div#volume_bm").click(function(){
                    	var volume = $("#audio")[0].volume;
                    	var newvolume = new Array();
                    	var volumes = $("div#volume_m").css("width");
                    	newvolume = volumes.split("p");
                    	volume = newvolume[0]/100;
                    	$("#audio")[0].volume = volume;
                    });
                    
                    //静音和打开音量
                    var volumet = null;
                    $("a#off_all").click(function(){
                    	volumet = $("div#volume_m").css("width");
                    		var volume = 0;
                    		$("#audio")[0].volume = volume;
                    });
                    
                    $("a#on_all").click(function(){
                    	var newvolume = new Array();
                    	newvolume = volumet.split("p");
                    	var volume = newvolume[0]/100;
                    	$("#audio")[0].volume = volume;
                    });
                    
                  //播放时间的显示
                  	//格式化时间
                   	function formatTime(time){
                   		var value=~~time;
                   		var refornaTime = null;
                   		if(value<10){
                   			refornaTime = "00:0"+value;
                   		}else if(value<60){
                   			refornaTime = "00:"+value;
                   		}else{
                   			var m = ~~(value/60);
                   			if(m<10){
                   				m = "0"+m;
                   			}
                   			var ss = ~~(value%60);
                   			if(s<10){
                   				ss = "0"+s;
                   			}
                   			refornaTime = m+":"+ss;
                   		}
                   		return refornaTime;
                  	};
                  	
                  });
                  
                  function play(name){
                  	var idAndname = new Array();
                  	idAndname = name.split("//");
                  $("a#"+ idAndname[0] +"").click(function(){
                			audio.src ="\\XMCYYW\\resources\\song\\"+idAndname[1];
                			$("#sii").remove();
                    		var i = $("<i id='sii'>"+idAndname[1]+"</i>");
                    		$("div#codenamenew").append(i);
                    		$("a[class='jp-play']").hide();
                    		$("a#jp-suspend").show();
                			audio.play();
                			s=idAndname[0];
      				});
                	  }
                  
                  </script>
                  <div id="jp_container_N">
                    <div class="jp-type-playlist">
                      <div id="jplayer_N" class="jp-jplayer hide"></div>
                      <div class="jp-gui">
                        <div class="jp-video-play hide">
                          <a class="jp-video-play-icon">play</a>
                        </div>
                        <div class="jp-interface">
                          <div class="jp-controls">
                            <div style="width: 20px;"><a class="jp-previous"><i class="icon-control-rewind i-lg"></i></a></div>
                            <div id="jp-con" style="width: 20px;">
                              <a class="jp-play" ><i class="icon-control-play i-2x"></i></a>
                              <a class='jp-suspend hid' id="jp-suspend"><i class='icon-control-pause i-2x'></i></a>
                            </div>
                            <div style="width: 20px;"><a class="jp-next"><i class="icon-control-forward i-lg"></i></a></div>
                            <div class="hide"><a class="jp-stop"><i class="fa fa-stop"></i></a></div>
                           
                            <div class="hidden-xs hidden-sm jp-volume" id="codenamenew" style="background-color: #4D5D6E; width: 600px">
                            </div>
                            <div style="width: 10px;"><span class="currenTime">00:00</span></div> 
                            <div style="width: 10px;"><span class="totalTitime">00:00</span></div>
                            <div class="hidden-xs hidden-sm" style="width: 10px;">
                              <a class="jp-mute" title="mute" id="off_all"><i class="icon-volume-2"></i></a>
                              <a class="jp-unmute hid" title="unmute"  id="on_all"><i class="icon-volume-off"></i></a>
                            </div>
                            <div class="hidden-xs hidden-sm jp-volume" id="volume_bm">
                              <div class="jp-volume-bar dk" id="volume_b" style="width: 100px;">
                                <div class="jp-volume-bar-value lter" id="volume_m"></div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="jp-playlist dropup" id="playlist">
                        <ul class="dropdown-menu aside-xl dker">
                          <!-- The method Playlist.displayPlaylist() uses this unordered list -->
                          <li class="list-group-item"></li>
                        </ul>
                      </div>
                      <div class="jp-no-solution hide">
                      <div>
                       <audio src="${pageContext.request.contextPath}\resources\song\Skyvoice - I'm Okay.mp3"  id="audio" c ></audio>
                       </div>
                      </div>
                    </div>
                  </div>
                </footer>