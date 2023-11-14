<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
  <title>Erro</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <h1>Ocorreu um erro!</h1>
  <div class="alert alert-danger mt-3" role="alert">
    ${mensagemErro}
  </div>
  <a href="index.jsp" class="btn btn-primary mt-3">Voltar</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>