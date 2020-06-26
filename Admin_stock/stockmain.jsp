<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>관리자 재고 관리</title>
 <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>

 <header id="top">
		<jsp:include page="topBar.jsp"></jsp:include>
	</header>
	

	<main role="main" id="center">
		<jsp:include page="stockContent.jsp"></jsp:include>
	</main>
	

	<footer id="footer" class="container py-5">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
 
</body>
</html>