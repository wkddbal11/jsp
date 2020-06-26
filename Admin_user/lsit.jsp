<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  //1. Context 객체 생성
  Context initCtx = new InitialContext();

  //2. DataSource 객체 생성
  DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/ysh");
  
  //3. CP에서 connection 가져오기
  Connection con = ds.getConnection();
  
  String sql = "SELECT * FROM JSPMEMBER";
  Statement st = con.createStatement();
  
  //4. 반환 객체
  ResultSet rs = st.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>Insert title here</title>
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class ="container">
<h1  class ="text-center font-weight-bold">로그인 정보</h1>
<br>
<br>

 <table class ="table table-hover"> 
 <tr>
 <th>아이디</th>
 <th>이름</th>
 <th>비밀번호</th>
  <th>비밀번호</th>
   <th>비밀번호</th>
    <th>비밀번호</th>
     <th>비밀번호</th>
 </tr>
 <%
 //5.결과 집합처리
 while(rs.next()){
	 String id = rs.getString("ID");
	 String pwd = rs.getString("PWD");
	 String name = rs.getString("NAME");
	 String address = rs.getString("ADDRESS");
	 String nickname = rs.getString("NICKNAME");
	 String email = rs.getString("EMAIL");
	 String phone = rs.getString("PHONE");
 %>

 <tr>
 <td><%=id %></td>
							<td><%=pwd %></td>
							<td><%=name %></td>
							<td><%=address %> </td>
							<td><%=nickname %> </td>
							<td><%=email %></td>
							<td><%=phone %></td>
 </tr>

 <% } 
 //6. 객체 연결 해제
 rs.close();
 st.close();
 con.close();
 %>
  </table>
  </div>
 	
</body>
</html>