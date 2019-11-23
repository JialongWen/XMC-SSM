<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>小木虫音乐网</title>
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
          <section class="hbox stretch">
            <section>
              <section class="vbox">
                <section class="scrollable padder-lg w-f-md" id="bjax-target">
                  <a href="#" class="pull-right text-muted m-t-lg" data-toggle="class:fa-spin" ><i class="icon-refresh i-lg  inline" id="refresh"></i></a>
                  <h2 class="font-thin m-b">Discover <span class="musicbar animate inline m-l-sm" style="width:20px;height:20px">
                    <span class="bar1 a1 bg-primary lter"></span>
                    <span class="bar2 a2 bg-info lt"></span>
                    <span class="bar3 a3 bg-success"></span>
                    <span class="bar4 a4 bg-warning dk"></span>
                    <span class="bar5 a5 bg-danger dker"></span>
                  </span></h2>
                  <div class="row row-sm">
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="text-info padder m-t-sm text-sm">
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star-o text-muted"></i>
                            </div>
                            <div class="center text-center m-t-n">
                              <a href="#"><i class="icon-control-play i-2x"></i></a>
                            </div>
                            <div class="bottom padder m-b-sm">
                              <a href="#" class="pull-right">
                                <i class="fa fa-heart-o"></i>
                              </a>
                              <a href="#">
                                <i class="fa fa-plus-circle"></i>
                              </a>
                            </div>
                          </div>
                          <div class="top">
                            <span class="pull-right m-t-sm m-r-sm badge bg-white">12</span>
                          </div>
                          <a href="#"><img src="${pageContext.request.contextPath}/resources/images/p7.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Ligula H</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="text-info padder m-t-sm text-sm">
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star-o text-muted"></i>
                            </div>
                            <div class="center text-center m-t-n">
                              <a href="#"><i class="icon-control-play i-2x"></i></a>
                            </div>
                            <div class="bottom padder m-b-sm">
                              <a href="#" class="pull-right">
                                <i class="fa fa-heart-o"></i>
                              </a>
                              <a href="#">
                                <i class="fa fa-plus-circle"></i>
                              </a>
                            </div>
                          </div>
                          <a href="#"><img src="${pageContext.request.contextPath}/resources/images/p8.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Aliquam sollicitudin venenati</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">James East</a>
                        </div>
                      </div>
                    </div>
                    <div class="clearfix visible-xs"></div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="text-info padder m-t-sm text-sm">
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star-o text-muted"></i>
                            </div>
                            <div class="center text-center m-t-n">
                              <a href="#"><i class="icon-control-play i-2x"></i></a>
                            </div>
                            <div class="bottom padder m-b-sm">
                              <a href="#" class="pull-right">
                                <i class="fa fa-heart-o"></i>
                              </a>
                              <a href="#">
                                <i class="fa fa-plus-circle"></i>
                              </a>
                            </div>
                          </div>
                          <a href="#"><img src="${pageContext.request.contextPath}/resources/images/p9.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Lementum ligula vitae</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                        </div>
                      </div>
                    </div>
                    <div class="clearfix visible-xs"></div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="text-info padder m-t-sm text-sm">
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star-o text-muted"></i>
                            </div>
                            <div class="center text-center m-t-n">
                              <a href="#"><i class="icon-control-play i-2x"></i></a>
                            </div>
                            <div class="bottom padder m-b-sm">
                              <a href="#" class="pull-right">
                                <i class="fa fa-heart-o"></i>
                              </a>
                              <a href="#">
                                <i class="fa fa-plus-circle"></i>
                              </a>
                            </div>
                          </div>
                          <a href="#"><img src="${pageContext.request.contextPath}/resources/images/p11.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Aliquam sollicitudin venenatis ipsum</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Jack Jason</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="text-info padder m-t-sm text-sm">
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star"></i>
                              <i class="fa fa-star-o text-muted"></i>
                            </div>
                            <div class="center text-center m-t-n">
                              <a href="#"><i class="icon-control-play i-2x"></i></a>
                            </div>
                            <div class="bottom padder m-b-sm">
                              <a href="#" class="pull-right">
                                <i class="fa fa-heart-o"></i>
                              </a>
                              <a href="#">
                                <i class="fa fa-plus-circle"></i>
                              </a>
                            </div>
                          </div>
                          <a href="#"><img src="${pageContext.request.contextPath}/resources/images/p12.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Vestibulum ullamcorper</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">MM &amp; DD</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                </section>
		<%@ include file="inc/footer.jsp" %>
              </section>
            </section>
            <!-- side content -->
	<%@ include file="inc/side_content.jsp" %>
            <!-- / side content -->
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section> 
  <%@ include file="inc/bottom.jsp" %>
</body>
</html>
