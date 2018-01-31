/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pizzariadomenico.Process;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author joliveira
 */
@WebServlet(name = "Salvar", urlPatterns = {"/Salvar"})
public class Salvar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession sessao = request.getSession();
        if (sessao.getAttribute("logado") == null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/Entrar");
            dispatcher.forward(request, response);
        } else {
            Produto pizza = new Produto();
            if (request.getParameter("codigo") == null || request.getParameter("codigo").equalsIgnoreCase("0")) {
                pizza.setNome(request.getParameter("nome"));
                pizza.setDescricao(request.getParameter("descricao"));
                pizza.setPreco(request.getParameter("preco"));
                pizza.setTipo(request.getParameter("tipo"));
                pizza.setAtivo("SIM");
                try {
                    Utils.inserirPizza(pizza);
                    response.sendRedirect("Manutencao");
                } catch (Exception ex) {
                    response.sendRedirect("Manutencao");
                }

            } else {
                pizza.setCodigo(Integer.parseInt(request.getParameter("codigo")));
                pizza.setNome(request.getParameter("nome"));
                pizza.setDescricao(request.getParameter("descricao"));
                pizza.setPreco(request.getParameter("preco"));
                pizza.setTipo(request.getParameter("tipo"));
                pizza.setAtivo(request.getParameter("ativo"));

                try {
                    Utils.alterar(pizza);
                    response.sendRedirect("Manutencao");
                } catch (Exception ex) {
                    response.sendRedirect("Manutencao");
                }
            }
        }
    }
}
