<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<%@include file="../includes/header.jsp"%>		

			<div class="col-lg-9">		
				<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img class="d-block img-fluid" src="http://placehold.it/900x350" alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Third slide">
						</div>
				  	</div>
				  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
				  </a>
				</div>
				
				<div class="row">
					<c:forEach items="${productList}" var="product">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a class='move' href='<c:out value="${product.ID}"/>'><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
								<div class="card-body">
									<h4 class="card-title">
										<a class='move' href='<c:out value="${product.ID}"/>'>${product.name}</a>
									</h4>
										<h5>$${product.price}</h5>
										<p class="overflow-auto" style="height:50px">${product.description}</p>
								</div>
								<div class="card-footer">
									<c:set var = "point" value = "${product.point}"/>
									<c:choose>
								        <c:when test="${point eq 0}">
								        	<small class="text-muted">&#9734; &#9734; &#9734; &#9734; &#9734;</small>
								        </c:when>
								        <c:when test="${point eq 1}">
								        	<small class="text-muted">&#9733; &#9734; &#9734; &#9734; &#9734;</small>
								        </c:when>
								        <c:when test="${point eq 2}">
								        	<small class="text-muted">&#9733; &#9733; &#9734; &#9734; &#9734;</small>
								        </c:when>
								        <c:when test="${point eq 3}">
								        	<small class="text-muted">&#9733; &#9733; &#9733; &#9734; &#9734;</small>
								        </c:when>
								        <c:when test="${point eq 4}">
								        	<small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
								        </c:when>		
								        <c:when test="${point eq 5}">
								        	<small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9733;</small>
								        </c:when>								     						        
								        <c:otherwise>
								        	<small class="text-muted">&#9734; &#9734; &#9734; &#9734; &#9734;</small>
								        </c:otherwise>
								    </c:choose>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- /.row -->	
			</div>
			<!-- /.col-lg-9 -->
		</div>
    	<!-- /.row -->
    
		<form id='actionForm' action="/board/list" method='get'>
		</form>
	</div>
	<!-- /.container -->

<%@include file="../includes/footer.jsp"%>

