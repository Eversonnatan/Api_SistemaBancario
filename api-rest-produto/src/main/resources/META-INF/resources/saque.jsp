<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Saque Geral</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/deposito.css">
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6">
            <h1 class="mb-4">Saque Geral</h1>
            <form action="sacar" method="post">
                <div class="form-group">
                    <label for="numeroConta">Número da Conta:</label>
                    <input type="text" class="form-control" id="numeroConta" name="numeroConta" required>
                </div>
                <div class="form-group">
                    <label for="valorSaque">Valor do Saque:</label>
                    <input type="text" class="form-control" id="valorSaque" name="valorSaque" required>
                </div>
                <button type="submit" class="btn btn-primary">Sacar</button>
            </form>
        </div>
        <div class="col-md-6 right-side">
            <img src="./assets/saque-image.png" alt="Depósito" class="deposit-image">
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>