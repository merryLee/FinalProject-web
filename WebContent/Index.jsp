<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <%
	  request.setCharacterEncoding("utf-8");
	  String id = (String) session.getAttribute("idKey");
	%>
    <head>
		<%@ include file = "Heading.jsp" %>
    </head>
    
    <body>
   	<%
			if (id != null) { 
		%>
		<%@ include file = "TopLogout.jsp" %>
		<%} else {%>
		<%@ include file = "Top.jsp" %>
		<%}%>
		
		
        <div class="cover">
            <div class="cover-image" style="background-image : url('C:/Users/User/Desktop/Web/back1024.jpg')"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h1>Heading</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici eli.</p>
                        <br>
                        <br>
                        <a class="btn btn-lg btn-default">Click me</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <img src="file:///C:/Users/User/Desktop/Web/front.jpg" class="img-responsive img-rounded">
                        <h2>A Title</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                            <br>Ut enim ad minim veniam, quis nostrud</p>
                    </div>
                    <div class="col-md-4">
                        <img src="file:///C:/Users/User/Desktop/Web/cin2.jpg" class="img-responsive img-rounded">
                        <h2>A title</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                            <br>Ut enim ad minim veniam, quis nostrud</p>
                    </div>
                    <div class="col-md-4">
                        <img src="file:///C:/Users/User/Desktop/Web/str1.jpg" class="img-responsive img-rounded">
                        <h2>A title</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                            <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                            <br>Ut enim ad minim veniam, quis nostrud</p>
                    </div>
                </div>
            </div>
        </div>
        <footer class="section section-primary">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Footer header</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,</p>
                    </div>
                </div>
            </div>
        </footer>
    </body>

</html>