<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<%@include file="../includes/headerBackup.jsp"%>

			<!-- /.col-lg-3 -->

			<div class="col-lg-9">
			    <div class="card mt-4">		    
	    			<div class="col-lg-12">		
						<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner" role="listbox">
								<div class="carousel-item active">
									<img class="d-block img-fluid" src="http://placehold.it/900x400" alt="First slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid" src="http://placehold.it/900x400" alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid" src="http://placehold.it/900x400" alt="Third slide">
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
					</div>
			    
					<!-- <img class="card-img-top img-fluid" src="http://placehold.it/900x400" alt=""> -->
					<div class="card-body">
						<h3 class="card-title">${product.name}</h3>
						<h4>$${product.price }</h4>
						<p class="card-text">${product.description}</p>
						<c:set var = "point" value = "${product.point}"/>
						<c:choose>
					        <c:when test="${point eq 0}">
					        	<span class="text-warning">&#9734; &#9734; &#9734; &#9734; &#9734;</span>
					        </c:when>
					        <c:when test="${point eq 1}">
					        	<span class="text-warning">&#9733; &#9734; &#9734; &#9734; &#9734;</span>
					        </c:when>
					        <c:when test="${point eq 2}">
					        	<span class="text-warning">&#9733; &#9733; &#9734; &#9734; &#9734;</span>
					        </c:when>
					        <c:when test="${point eq 3}">
					        	<span class="text-warning">&#9733; &#9733; &#9733; &#9734; &#9734;</span>
					        </c:when>
					        <c:when test="${point eq 4}">
					        	<span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
					        </c:when>		
					        <c:when test="${point eq 5}">
					        	<span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9733;</span>
					        </c:when>								     						        
					        <c:otherwise>
					        	<span class="text-warning">&#9734; &#9734; &#9734; &#9734; &#9734;</span>
					        </c:otherwise>
					    </c:choose>
						${product.point} stars
					</div>
				</div>
				<!-- /.card -->
			
				<div class="card card-outline-secondary my-4">
					<div class="card-header">
						Product Reviews
					</div>
			         
					<div class="card-body">
						<c:forEach items="${reviewList}" var="review">
							<h4>${review.title} </h4>
							<p>${review.content}</p>
							<small class="text-muted">Posted by ${review.userName} on ${review.reviewDate}</small> <button id="editButton" value = '<c:out value="${product.ID}"/>' class="btn btn-success">Edit/Delete Review</button>
							<hr>
						</c:forEach>
						<a href="#" class="btn btn-success">Leave a Review</a>
					</div>
				</div>
				<!-- /.card -->
			</div>
			<!-- /.col-lg-9 -->
		</div>

		<form id='actionForm' action="/product/productDetail" method='get'>
			<input type='hidden' name='UserID' value='1'>
		</form>
	</div>
  	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
		</div>
	  	<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/4.5.3/js/bootstrap.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/4.5.3/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var actionForm = $("#actionForm");
			
			$("#editButton").on("click", function(e) {
				e.preventDefault();
				actionForm.append("<input type='hidden' name='ProductID' value='"
					+ $(this).attr("value")
					+ "'>");
				actionForm.attr("action","/mypage/reviewHistory");
				actionForm.submit();
			});
		});
	</script>

</body>
</html>

</body>

</html>