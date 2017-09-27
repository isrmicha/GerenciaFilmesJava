<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		</form>
	</div>
	<br>
	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col-6">
				<div class="card text-center border-primary">
					<div class="card-header text-white bg-primary"><h4>Menu</h4></div>
					<div class="card-body">
						<a href="inserir.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Inserir Filme</a>
						
						<form method="post" action="exibirServlet">
						<br>
						<button type="submit" class="btn btn-secundary btn-lg ">Exibir Filmes</button>
					</form>
					</div>
				</div>
				<br>
					<%
								String mensagem = (String) session.getAttribute("mensagem");
								if (mensagem != null) {
									out.print("<div class='alert alert-success' role='alert'><b>" + mensagem + "</b></div>");
									session.setAttribute("mensagem", null);
								}
							%>
			</div>

		</div>



	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
</body>
</html>

