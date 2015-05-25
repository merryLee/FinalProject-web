<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
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
		
		<%
			Calendar cal = Calendar.getInstance();
			String date = cal.get(Calendar.YEAR)+"."+
				(cal.get(Calendar.MONTH)+1)+"."+cal.get(Calendar.DATE);
		%>
        <div class="cover">
            <div class="cover-image" style="background-image : url('img/background.jpg')"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h1>동화바라기</h1>
                        <p>무브 컨트롤러를 이용한 동화여행</p>
                        <br>
                        <br>
                        <p><%=date %></p>
            
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <img src="img/submain1.jpg" class="img-responsive img-rounded">
                        <h2 align="center">동화바라기</h2>
                        <p>
                            <br>
                            <br></p>
                    </div>
                    <div class="col-md-4">
                        <img src="img/submain2.jpg" class="img-responsive img-rounded">
                        <h2 align="center">신데렐라</h2>
                        <p>
                            <br>
                            <br></p>
                    </div>
                    <div class="col-md-4">
                        <img src="img/submain3.jpg" class="img-responsive img-rounded">
                        <h2 align="center">딸기동화</h2>
                        <p>
                            <br>
                            <br></p>
                    </div>
                </div>
            </div>
        </div>
        <footer class="section section-primary">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h1>Made by 퐁당퐁당</h1>
                        <p>Chaeyeong, Jaewon, Seonmin, Solhee</p>
                    </div>
                </div>
            </div>
        </footer>
    </body>

</html>