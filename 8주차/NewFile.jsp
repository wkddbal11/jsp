<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request ���尴ü ����</title>
</head>
<body>
 <h2>�й�,�̸�,�г�,���ð���</h2>
 
 <from method="post" action="repuestTestPro.jsp">
     ���:<input type="text" name="num"><br>
     �̸�:<input type="text" name="name"><br>
     �г�:<input type="radio" name="grade"value="1" checked> 1�г�&nbsp;
     <input type="radio" name="grade"value="2" checked> 2�г�&nbsp;
     <input type="radio" name="grade"value="3" checked> 3�г�&nbsp;
     <input type="radio" name="grade"value="4" checked> 4�г�<br>
     ���ð���:
     <select name="subject">
     <option value="JAVA">JAVA</option>
     <option value="JSP">JSP</option>
     <option value="XML">XML</option>
     </select> <br>
     <input type="submit" value="�Է¿Ϸ�">
     </from>   
</body>
</html>