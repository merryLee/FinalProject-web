<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<%
	  request.setCharacterEncoding("utf-8");
	  String id = (String) session.getAttribute("idKey");
	%>
<%@ include file="Heading.jsp"%>
</head>

<body>

	<%
			if (id == null) {
		%>
	<%@ include file="Top.jsp"%>

	<script>
		alert("로그인이 필요합니다.");
		location.href="Login.jsp";
	</script>

	<%} else {%>
	<%@ include file="TopLogout.jsp"%>

	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center"><%=id %>님 환영합니다.
					</h1>
				</div>
			</div>


			<div class="row">

				<%
		String sql = "select * from image where image_id=? order by image_time desc";
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
			while (rs.next()) {

				InputStream is = (InputStream) rs.getBinaryStream("image_data");
				String time = rs.getString("image_time");
				String date = rs.getString("image_time").substring(0, 10);
				String code = rs.getString("image_code");
				String title;

				if(code.equals("1")) { title = "신데렐라"; }
				else if(code.equals("2")) { title = "딸기동화"; }
				else { title = "title"; }

				
				fos = new FileOutputStream("C:/Program Files/Apache Software Foundation/Tomcat 8.0/webapps/ROOT/img/"
				 + date + "(" + i + ")"		+ ".jpg");

				if (fos != null)
					pathImage = "img/" + date + "(" + i + ")" + ".jpg";

				byte[] b = new byte[1024];
				int n;
				while ((n = is.read(b)) > 0) {
					fos.write(b, 0, n);
				}

				i++;
			%>


				<div class="col-md-4">
					<a><img src=<%=pathImage %> class="img-responsive img-rounded"></a>
					<h3 align="center"><%=title %></h3>
					<p align="center"><%=time %>&nbsp;
					</p>
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


<div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="pager">
                            <li>
                                <a href="file:///C:/Users/User/Desktop/My.jsp">←  Prev</a>
                            </li>
                            <li>
                                <a href="file:///C:/Users/User/Desktop/My.jsp">Next  →</a>
                            </li>
                        </ul>
                    </div>
                </div>
        </div>
</div>



		</div>
	</div>
	<%}%>
</body>

</html>
