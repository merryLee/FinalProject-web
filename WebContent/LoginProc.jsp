<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mMgr" class="connect.MemberMgr"/>
<%
	  request.setCharacterEncoding("utf-8");
	  String id = request.getParameter("id");
	  String pass = request.getParameter("pass");
	  String url = "Login.jsp";
	  String msg = "로그인에 실패하였습니다. 다시 확인해주세요.";
	  
	  boolean result = mMgr.loginMember(id,pass);
	  if(result){
	    session.setAttribute("idKey",id);
	    msg = "로그인에 성공하였습니다.";
	    url = "My.jsp";
	  }
%>
<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>