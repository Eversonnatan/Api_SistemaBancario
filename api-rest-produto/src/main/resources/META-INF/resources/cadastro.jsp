<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cadastro de Conta</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="container mt-5">
  <h1>Cadastro de Conta</h1>
  <form action="cadastrar" method="post">
    <div class="mb-3">
      <label for="nome" class="form-label">Nome:</label>
      <input type="text" class="form-control" id="nome" name="nome" placeholder="Digite seu nome" required>
    </div>
    <div class="mb-3">
      <label for="cpf" class="form-label">CPF:</label>
      <input type="text" class="form-control" id="cpf"  name="cpf" placeholder="Digite seu CPF" required>
    </div>
    <button type="submit" class="btn btn-primary" value="Cadastrar">Cadastrar</button>
  </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>