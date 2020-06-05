<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%request.setCharacterEncoding("EUC-KR");%>

<%
 String num = request.getParameter("num");
 String name = request.getParameter("name");
  String grade = request.getParameter("grade");
   String subject = request.getParameter("subject");
   %>
   <h2>학생정보</h2>
   <table border="1">
    <tr>
      <td width="150">학번</td>
      <td width="150"><%=num %></td>
    </tr>
    <tr>
    <td width="150">이름</td>
      <td width="150"><%=name %></td>
    </tr>
    <tr>
    <td width="150">학년</td>
      <td width="150"><%=grade %></td>
     </tr>
    <tr>
    <td width="150">선택과목</td>
      <td width="150"><%=subject %></td>
      </tr>
    </table>