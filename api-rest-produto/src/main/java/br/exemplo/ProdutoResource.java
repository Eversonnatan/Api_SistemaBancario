package br.exemplo;

import br.exemplo.GlobalExceptionHandler.ContaInvalidaException;
import br.exemplo.GlobalExceptionHandler.SaldoInsuficienteException;
import br.exemplo.models.ContaCorrente;
import br.exemplo.service.ContaCorrenteService;
import br.exemplo.service.ContaCorrenteServiceExten;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;

import java.util.ArrayList;
import java.util.List;

@Path("/contacorrente")
public class ProdutoResource{

    List<ContaCorrente> contasCorrentes = new ArrayList<>();
    ContaCorrenteService contaService = new ContaCorrenteServiceExten(contasCorrentes);

    @POST
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @Produces(MediaType.APPLICATION_JSON)
    public String CriarConta(
            @FormParam("nome") String nome, @FormParam("cpf") String cpf

    ) {
        try {

            ContaCorrente contaCorrente = contaService.criarConta(nome, cpf);
            return "Conta criada com sucesso!\n" + contaCorrente.toString();
        } catch (ContaInvalidaException ex) {
            return("Conta inválida");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @POST
    @Path("/depositar")
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @Produces(MediaType.TEXT_PLAIN)
    public String depositar(
            @FormParam("numeroConta") String numeroConta,
            @FormParam("valor") double valor
    ) {
        try {
            contaService.depositar(numeroConta, valor);
            return "Depósito realizado com sucesso para a conta " + numeroConta;
        } catch (ContaInvalidaException ex) {
            return "Conta inválida. Peço que , verifique o número da conta.";
        } catch (Exception e) {
            e.printStackTrace();
            return "Ocorreu um erro durante o depósito. Peço que , tente novamente.";
        }
    }

    @GET
    @Path("/saldo/{numeroConta}")
    @Produces(MediaType.TEXT_PLAIN)
    public String verSaldo(@PathParam("numeroConta") String numeroConta) {
        ContaCorrente conta = contaService.getContaPorNumero(numeroConta);
        if (conta != null) {
            return "O saldo atual da conta " + numeroConta + " é: R$" + conta.getSaldo().floatValue();
        } else {
            return "Conta Inexistente. Verifique o número da conta.";
        }
    }

    @POST
    @Path("/sacar")
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @Produces(MediaType.TEXT_PLAIN)
    public String sacar(
            @FormParam("numeroConta") String numeroConta,
            @FormParam("valor") double valor
    ) {
        try {
            contaService.sacar(numeroConta, valor);
            return "Saque de " + valor + " realizado com sucesso da conta " + numeroConta;
        } catch (ContaInvalidaException e) {
            return "Conta inválida. Verifique o número da conta.";
        } catch (SaldoInsuficienteException e) {
            return "Saldo insuficiente para realizar o saque na conta " + numeroConta;
        } catch (Exception e) {
            e.printStackTrace();
            return "Ocorreu um erro ao tentar sacar da conta " + numeroConta + ". Peço que, tente novamente.";
        }
    }

    @PATCH
    @Path("/transferir")
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @Produces(MediaType.TEXT_PLAIN)
    public String transferir(
            @FormParam("contaOrigem") String contaOrigem,
            @FormParam("contaDestino") String contaDestino,
            @FormParam("valor") double valor
    ) {
        try {
            contaService.transferir(contaOrigem, contaDestino, valor);
            return "Transferência de " + valor + " da conta " + contaOrigem + " para a conta " + contaDestino + "  procedimento realizada com sucesso.";
        } catch (ContaInvalidaException e) {
            return "Conta inválida. Verifique os números da conta de origem .";
        } catch (SaldoInsuficienteException e) {
            return "Saldo insuficiente na conta " + contaOrigem + " impossivel  realizar a transferência.";
        } catch (Exception e) {
            e.printStackTrace();
            return "Ocorreu um erro ao tentar fazer a transferência. Peço que , tente novamente.";
        }
    }
}
