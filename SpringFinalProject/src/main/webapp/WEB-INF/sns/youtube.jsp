<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/youtube.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<style type="text/css">
* { font-family: 'Gowun Dodum', sans-serif; }
</style>
</head>
<body>

<ul class="mainSnsNav">
	<button class="liNav selected">Trend Now</button>
	<button class="liNav" onclick="location.href='../sns/list'">Fashion SNS</button>
	<button class="liNav" onclick="location.href='../resell/list'">Re-sell Market</button>
</ul>

<section style="width: 100%; max-width:1350px; min-width: 700px;  margin: auto;" class="container" >
	<article class="d-flex" id="search-section">
		<a id='logoLink' class="d-flex me-3" href='../trend/list'>
			<i class="bi bi-youtube"></i>
			<h3 class="p-2 mt-3 font-bold">Fashion-Tube</h3>
		</a>
		<div class='flex-grow-1 pt-3'>
			<div class="input-group mb-3" id="search">
			  <input type="text" id="keyword" class="form-control" placeholder="???? ?????? ?????? ???????????? ??????????????????! ????" aria-label="Recipient's username" aria-describedby="button-addon2">
		 	  <button class="btn btn-outline-secondary p-3 ps-4 pe-4" type="button" id="search-botton"><i class="bi bi-search"></i></button>
			</div>
			<span class="badge rounded-pill bg-danger fs-6 homebadge">?????????????</span>
			<span class="badge rounded-pill bg-light text-dark fs-6 recommend">?????? ?????????</span>
			<span class="badge rounded-pill bg-light text-dark fs-6 recommend">?????? ??????</span>
			<span class="badge rounded-pill bg-light text-dark fs-6 recommend">2023 ??????</span>
			<span class="badge rounded-pill bg-light text-dark fs-6 recommend">?????? ?????? ??????</span>
			<span class="badge rounded-pill bg-light text-dark fs-6 recommend">????????????</span>
			<span class="badge rounded-pill bg-light text-dark fs-6 recommend">OOTD</span>
			<span class="badge rounded-pill bg-light text-dark fs-6 recommend">??????????????????</span>
			<span class="badge rounded-pill bg-light text-dark fs-6 recommend">?????? ?????? ?????????</span>
			<span class="badge rounded-pill bg-light text-dark fs-6 recommend">?????? ??????</span>
		</div>
	</article>
	
	<h2 class="p-2 mt-3 font-bold" id="tag">???? ?????? ?????? ????????? ????????? ????</h2>
	<section class="container">
		<div id="youtube-list" class="row row-cols-1 row-cols-md-4 g-1">
			<!-- ????????? ???????????? ??? -->
		</div>
	</section>
</section>

<!-- ????????? ??? Modal start -->
<div class="modal fade" id="youtubeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="height: 90%">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      
      <div class="modal-header d-flex">
      	<h2 id="cardtitle"></h2>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      <div class="modal-body">
     	 <div class="container-fluid" style="width: 95vw;">
     	 	<div class="row" style="overflow: hidden;">      
		      	<div class="col-md-8" id="thisVideo"></div>
		      	<div class="col-md-4" id="relateVideo"></div>
      		</div>
      	</div>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
      </div>
      
    </div>
  </div>
</div>
<!-- ????????? Modal end -->

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script type="text/javascript" src="../js/youtube.js"></script>
</body>
</html>