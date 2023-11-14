<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transferência Bancária</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6">
            <h1 class="mb-4">Transferência Bancária</h1>
            <form action="transferir" method="post">
                <div class="form-group">
                    <label for="contaOrigem">Número da Conta de Origem:</label>
                    <input type="text" class="form-control" id="contaOrigem" name="contaOrigem" required>
                </div>
                <div class="form-group">
                    <label for="contaDestino">Número da Conta de Destino:</label>
                    <input type="text" class="form-control" id="contaDestino" name="contaDestino" required>
                </div>
                <div class="form-group">
                    <label for="valorTransferencia">Valor da Transferência:</label>
                    <input type="text" class="form-control" id="valorTransferencia" name="valorTransferencia" required>
                </div>
                <button type="submit" class="btn btn-primary">Transferir</button>
            </form>
        </div>
        <div class="col-md-6">
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>