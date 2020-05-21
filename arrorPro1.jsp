<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>에러가 발생되는 페이지</title>
</head>
<body>
  <%
     int a, b, c;
     a=10;
     b=0;
     c=a/b; //문제 발생
     
     out.println(c);
     
     %>
</body>
</html>