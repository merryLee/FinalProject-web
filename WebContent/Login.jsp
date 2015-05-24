<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<%
	  request.setCharacterEncoding("utf-8");
	  String id = (String) session.getAttribute("idKey");
%>
<%@ include file = "Heading.jsp" %>

<script type="text/javascript">
	function loginCheck() {
		if (document.loginForm.id.value == "") {
			alert("아이디를 입력해 주세요.");
			document.loginForm.id.focus();
			return;
		}
		if (document.loginForm.pass.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.loginForm.pass.focus();
			return;
		}
		document.loginForm.submit();
	}
</script>
</head>

<body>
   	<%
			if (id != null) { 
		%>
		<%@ include file = "TopLogout.jsp" %>
		<%} else {%>
		<%@ include file = "Top.jsp" %>


	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
	<form name="loginForm" method="post" action="LoginProc.jsp">
						<div class="form-group">
							<label class="control-label">ID</label>
							<input class="form-control" type="text" name="id" value="">
						</div>
						<div class="form-group">
							<label class="control-label" for="exampleInputPassword1">Password</label>
							<input class="form-control" id="exampleInputPassword1"
								placeholder="Password" type="password" name="pass" value="">
						</div>
						<button type="submit" class="btn btn-default" onclick="loginCheck()">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<%}%>
</body>

</html>