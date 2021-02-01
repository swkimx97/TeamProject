<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<%@include file="../includes/header.jsp"%>		

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                    </div>

		            <div class="col-lg-12">		
						<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner" role="listbox">
								<div class="carousel-item active">
									<img class="d-block img-fluid" src="http://placehold.it/1200x350" alt="First slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid" src="http://placehold.it/1200x350" alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block img-fluid" src="http://placehold.it/1200x350" alt="Third slide">
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
					
					<form id='actionForm' action="/main/main" method='get'>
					</form>
					
					<form id='categoryForm' action="/product/productList" method='get'>
					</form>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>
    <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../resources/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../resources/js/demo/chart-area-demo.js"></script>
    <script src="../resources/js/demo/chart-pie-demo.js"></script>
    
    <script type="text/javascript">
		$(document).ready(function() {
			var actionForm = $("#actionForm");
			
			$(".move").on("click", function(e) {
				e.preventDefault();
				actionForm.append("<input type='hidden' name='ID' value='"
					+ $(this).attr("href")
					+ "'>");
				actionForm.attr("action","/product/productDetail");
				actionForm.submit();
			});
			
			var categoryForm = $("#categoryForm");

			$(".collapse-item").on("click", function(e) {
				e.preventDefault();
				categoryForm.append("<input type='hidden' name='categoryID' value='"
					+ $(this).attr("href")
					+ "'>");
				categoryForm.attr("action","/product/productList");
				categoryForm.submit();
			});
			
			var searchForm = $("#searchForm");

			$("#searchForm button").on("click", function(e) {
				e.preventDefault();
				searchForm.attr("action","/product/productList");
				searchForm.submit();
			});
		});
	</script>

</body>

</html>