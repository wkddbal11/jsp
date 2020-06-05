<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request 내장객체 예제</title>
</head>
<body>
 <h2>학번,이름,학년,선택과목</h2>
 
 <from method="post" action="repuestTestPro.jsp">
     헉번:<input type="text" name="num"><br>
     이름:<input type="text" name="name"><br>
     학년:<input type="radio" name="grade"value="1" checked> 1학년&nbsp;
     <input type="radio" name="grade"value="2" checked> 2학년&nbsp;
     <input type="radio" name="grade"value="3" checked> 3학년&nbsp;
     <input type="radio" name="grade"value="4" checked> 4학년<br>
     선택과목:
     <select name="subject">
     <option value="JAVA">JAVA</option>
     <option value="JSP">JSP</option>
     <option value="XML">XML</option>
     </select> <br>
     <input type="submit" value="입력완료">
     </from>   
</body>
</html>