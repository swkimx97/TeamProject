<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>LOL THIS IS THE MAIN PAGE</title>

	<!-- Bootstrap core CSS -->
	<link href="<c:url value="/webjars/bootstrap/4.5.3/css/bootstrap.min.css" />" rel="stylesheet">
	
	<link href="<c:url value="/resources/css/shop-homepage.css" />" rel="stylesheet">
</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="/main/main">Compssa</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active">
						<a class="nav-link" href="/login/main">로그인
							<span class="sr-only">(current)</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/register/main">회원가입</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/mypage/main">마이페이지</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/cart/main">장바구니</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<h1 class="my-4">Shop 한글</h1>
				<div class="list-group">
					<a href="#" class="list-group-item">Category 1</a>
					<a href="#" class="list-group-item">Category 2</a>
					<a href="#" class="list-group-item">Category 3</a>
				</div>	
			</div>