<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
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
            
            <%
		String sql = "select * from image where image_id=?";
		String pathImage = null;

		Connection conn = null;
		PreparedStatement psmt = null;
		FileOutputStream fos = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/jspdb", "jsp", "merryLeeJSP");
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			ResultSet rs = psmt.executeQuery();

			int i = 0;
			rs.next();
			InputStream is = (InputStream) rs.getBinaryStream("image_data");
			String name = rs.getString("image_time").substring(0, 10);
			fos = new FileOutputStream("C:/Users/User/workspace/project2/WebContent/img/" + name + "(" + i + ")"
					+ ".jpg");

			if (fos != null)
				pathImage = "img/" + name + "(" + i + ")" + ".jpg";
			
			byte[] b = new byte[1024];
			int n;
			while ((n = is.read(b)) > 0) {
				fos.write(b, 0, n);
			}
			i++;%>
							<div class="item active">
					<img src=<%=pathImage %>>
					<div class="carousel-caption">
						<h2>Title</h2>
						<p><%=name %></p>
					</div>
				</div>
				<%
	
			
			while (rs.next()) {

				is = (InputStream) rs.getBinaryStream("image_data");
				name = rs.getString("image_time").substring(0, 10);
				fos = new FileOutputStream("C:/Users/User/workspace/project2/WebContent/img/" + name + "(" + i + ")"
						+ ".jpg");

				if (fos != null)
					pathImage = "img/" + name + "(" + i + ")" + ".jpg";
				
				b = new byte[1024];

				while ((n = is.read(b)) > 0) {
					fos.write(b, 0, n);
				}
		i++;
		%>
				<div class="item">
					<img src=<%=pathImage %>>
					<div class="carousel-caption">
						<h2>Title</h2>
						<p><%=name%></p>
					</div>
				</div>
<%
		
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {conn.close();}
				catch (SQLException e) {e.printStackTrace();}
			}
			if (psmt != null) {
				try {psmt.close();}
				catch (SQLException e) {e.printStackTrace();}
			}
			if (fos != null) {
				try {fos.close();}
				catch (IOException e) {e.printStackTrace();}
			}
		}
%>
            


                
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