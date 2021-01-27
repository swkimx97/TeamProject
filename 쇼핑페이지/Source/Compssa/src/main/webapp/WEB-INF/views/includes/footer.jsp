<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    
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
	});
	</script>

</body>
</html>