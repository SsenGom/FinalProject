<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
<script type="text/javascript">
$(function(){
   $(".se").click(function(){
      $(".bt").trigger("click");
   });
});
</script>
<style type="text/css">
* {
	font-family: 'Gowun Dodum', sans-serif;
}

.wrapper {
	width: 500px;
	height: 300px;
	display: inline-block;
	margin-right: 50px;
	margin-bottom: 100px;
}

.wrapper img {
	width: 500px;
	height: 300px;
	margin-bottom: 10px;
}

.title {
	background-color: #fff;
	border-radius: 0px 80px 80px 0px;
	width: 450px;
	height: 100px;
	line-height: 30px;
	position: relative;
	top: -70px;
	padding-left: 10px;
	padding-top: 5px;
}

.title a {
	font-size: 1.5em;
	text-decoration: none;
	color: #000;
}

.scale {
	width: 500px;
	height: 300px;
	overflow: hidden;
}

.scale img:hover {
	cursor: pointer;
	transform: scale(1.1);
	-o-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-webkit-transform: scale(1.1);
	transition: transform .35s;
	-o-transition: transform .35s;
	-moz-transition: transform .35s;
	-webkit-transition: transform .35s;
}

.scale img {
	width: 500px;
	height: 300px;
}
</style>
</head>
<body>
<img src="../image/banner2.png">
<div class="searcharea" style="width:100%;text-align:center;position:relative;top:50px;left:-65px;">
<!-- ????????? -->
<form action="list" class="form-inline">
<div style="width:450px;display:inline-block;margin-right:270px;float:right;margin-bottom:30px;">
<select class="form-select" style="width:80px;display:inline-block" name="searchcolumn">
<option value="subject">??????</option>
<option value="content">??????</option>
</select>
<input type="text" name="searchword" class="form-control"
style="width:150px;display:inline-block" placeholder="?????? ??????">
<button type="submit" class="btn btn-dark bt" onchange="readURL(this)" style="visibility: hidden">??????</button>
<i class="bi bi-search se" style="cursor:pointer;font-size:1.3em;position:relative;left:-50px;"></i>
</div>
</form>
</div>
	<c:if test="${totalCount==0 }">
		<h2>???????????? ????????????</h2>
	</c:if>
	
	<c:if test="${myid=='admin' }">
		<button type="button"
			style="top: 51px; position: relative; margin-left: 430px;"
			class="btn btn-dark" onclick="location.href='insertform'">??????
			??????</button>
	</c:if>
	<div class="con"
		style="width: 1400px; height: auto; margin-left: 430px;margin-top:120px;">

		<c:if test="${totalCount>0 }">
			<c:forEach var="dto" items="${list }" varStatus="i">

				<div class="wrapper">
					<c:if test="${dto.mainphoto!='no' }">
						<div class="scale">
							<img src="../save/${dto.mainphoto }"
								onclick="location.href='content?num=${dto.num }&currentPage=${currentPage}'"
								style="cursor: pointer">
						</div>
					</c:if>
					<c:if test="${dto.mainphoto=='no' }">
						<img src="../image/noimage.png"
							onclick="location.href='content?num=${dto.num }&currentPage=${currentPage}'"
							style="cursor: pointer">
					</c:if>
					<div class="title">
						<span style="color: #2e2e2e; font-size: 0.9em;"> 
						<fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd" />
						</span> <br> <a href="content?num=${dto.num }&currentPage=${currentPage}">
							${dto.subject } </a>


					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>

	<c:if test="${totalCount>0 }">

		<div style="width: 800px; margin-right: 83px; text-align: center;"
			class="container">
			<ul class="pagination">

				<c:if test="${startPage}>1">
					<li><a href="list?currentPage=${startPage - 1}">??????</a></li>
				</c:if>

				<c:forEach var="pp" begin="${startPage}" end="${endPage }">

					<c:if test="${currentPage==pp }">
						<li class="active"><a href="list?currentPage=${pp}"
							style="cursor: pointer;">${pp}</a></li>
					</c:if>

					<c:if test="${currentPage!=pp }">
						<li class="active"><a href="list?currentPage=${pp}"
							style="cursor: pointer;">${pp}</a></li>
					</c:if>
				</c:forEach>

				<c:if test="${endPage<totalPage}">
					<li><a href="list?currentPage=${endPage+1}">??????</a></li>
				</c:if>

			</ul>
		</div>
	</c:if>
</body>
</html>