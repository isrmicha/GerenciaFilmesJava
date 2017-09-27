<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  </head>
  <body>
      
  <div class="container">
</form>
</div>
<br>
<div class="container">
  <div class="row justify-content-md-center">
    <div class="col-8">
      <div class="card text-center border-primary">
  <div class="card-header text-white bg-primary">
    Login
  </div>
  <div class="card-body">
    	<form method="post" action="loginServlet">
    <div class="form-group row">
      <label for="inputEmail3" class="col-sm-2 col-form-label">Login</label>
      <div class="col-10">
        <input type="text" class="form-control" id="login" name="login" placeholder="Login">
      </div>
    </div>
    <div class="form-group row">
      <label for="inputPassword3" class="col-sm-2 col-form-label">Senha</label>
      <div class="col-10">
        <input type="password" class="form-control" id="senha" name="senha" placeholder="Senha">
      </div>
    </div>
    <div class="form-group row">
      <div class="col-12 align-self-end">
        <button type="submit" class="btn btn-primary btn-lg btn-block">Entrar</button>
      </div>
    </div>
    
<% 
String mensagem = (String) session.getAttribute("mensagem");
if(mensagem!=null){
	out.print("<div class='alert alert-danger' role='alert'><b>"+mensagem+"</b></div>");
	 session.setAttribute("mensagem",null);
}
%>


  </form>
  </div>
</div>
    </div>
   
  </div>



</div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>

