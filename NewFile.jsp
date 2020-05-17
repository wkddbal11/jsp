<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>≈€«√∏¥</title>
<link rel='stylesheet' href='stylesheet.css'>
</head>
<body>

<header>
<jsp:include page='top.jsp' flush='false'/>
</header>

<div id='content'>
<section id='areaSub'>
<jsp:include page='left.jsp' flush='false'/>
</section>
<section id='areaMain'>
<jsp:include page='content.jsp' flush='false'/>
</section>
</div>

<footer>
<jsp:include page='bottom.jsp' flush='flase'/>
</footer>
</body>
