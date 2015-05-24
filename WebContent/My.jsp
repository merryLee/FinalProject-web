<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    
    <head>
    <%
	  request.setCharacterEncoding("utf-8");
	  String id = (String) session.getAttribute("idKey");
	%>
		<%@ include file = "Heading.jsp" %>
    </head>
    
    <body>
    	<%
			if (id == null) { 		
		%>
		<%@ include file = "Top.jsp" %>
		<% response.sendRedirect("Login.jsp"); %>
		<%} else {%>
		<%@ include file = "TopLogout.jsp" %>


        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h4><%=id %>님 환영합니다.</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel slide" id="fullcarousel-example" data-interval="5000"
        data-ride="carousel">
            <div class="carousel-inner">
            
                <div class="item active">
                    <img src="https://ununsplash.imgix.net/photo-1423753623104-718aaace6772?q=75&amp;fm=jpg&amp;s=1ffa61419561b5c796bca3158e7c704c">
                    <div class="carousel-caption">
                        <h2>Title</h2>
                        <p>Description</p>
                    </div>
                </div>
                <div class="item">
                    <img src="https://unsplash.imgix.net/photo-1423683249427-8ca22bd873e0?q=75&amp;fm=jpg&amp;s=5e57c661d0f772ce269188a6f5325708">
                    <div class="carousel-caption">
                        <h2>Title</h2>
                        <p>Description</p>
                    </div>
                </div>
                <div class="item">
                    <img src="https://unsplash.imgix.net/photo-1423347834838-5162bb452ca7?q=75&amp;fm=jpg&amp;s=c255e589621f06513c1d123c7323fe9c">
                    <div class="carousel-caption">
                        <h2>Title</h2>
                        <p>Description</p>
                    </div>
                </div>
                <div class="item">
                    <img src="back1024.jpg">
                    <div class="carousel-caption">
                        <h2>Title</h2>
                        <p>Description</p>
                    </div>
                </div>
                
                
            </div>
            <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
            <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p>Lorem ipsum d</p>
                        <p>Lorem ipsum d</p>
                    </div>
                </div>
            </div>
        </div>
        
        <%}%>
    </body>

</html>