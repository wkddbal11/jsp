<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%><%@ page language="java" contentType="text/html; charset=UTF-8"
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
<style>
.side-dropdown-menu {
	/* position: absolute; */
	height: 700px;
	top: 100%;
	left: 0;
	z-index: 1000;
	/* display: none; */
	float: left;
	min-width: 10rem;
	padding-top: 150px;
	margin: 32px 0 0;
	font-size: 1rem;
	color: #212529;
	text-align: left;
	list-style: none;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid rgba(0, 0, 0, .15);
	border-radius: .25rem;
	max-width: 0%;
	!
	important;
}
.dropdown-item{
	padding : 10px 24px 10px 24px;
}
.Reversive-Form {
	width: 1300px;
	left: 200px;
	top: 130px;
	position: absolute;
	max-width: 100%;
}
 </style>
</head>
<body>
<div class="big-page-nav">
		<div class="row">
			<div class="col-md-3 col-md-pull-9 left-Menu-hi">
				<div class="side-dropdown-menu">
				
					<a class="dropdown-item" href="#">회원관리</a> 
					<a class="dropdown-item" href="stockmain.jsp">재고관리</a> 
					<a class="dropdown-item" href="#">상품등록</a> 
					<a class="dropdown-item" href="#">게시판관리</a>
					<a class="dropdown-item" href="#">공지작성</a>
					
					</div>
			</div>
					
		<div class="col-md-9 col-md-push-3 Reversive-Form border border-light ">
				<table class="table">
					<h1 class="text-center">회원관리</h1><br>
					<thead>
						<tr>
							<th scope="col">아이디</th>
							<th scope="col">비밀번호</th>
							<th scope="col">이름</th>
							<th scope="col">주소</th>
							<th scope="col">닉네임</th>
							<th scope="col">이메일</th>
							<th scope="col">휴대전화</th>
							<th scope="col"></th>
							<th scope="col"></th>
						</tr>
					</thead>
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
							<td><a type="button" class="btn btn-sm btn-outline-dark">삭제</a></td>
						<td><a type="button" href ="" class="btn btn-sm btn-outline-dark">편집</a></td>
 </tr>

 <% } 
 //6. 객체 연결 해제
 rs.close();
 st.close();
 con.close();
 %>
						</table>
						</div>
					
				
			</div>
			</div>
</body>
</html>