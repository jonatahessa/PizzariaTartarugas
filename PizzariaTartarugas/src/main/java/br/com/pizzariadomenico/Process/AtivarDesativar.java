/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pizzariadomenico.Process;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jonat
 */
@WebServlet(name = "AtivarDesativar", urlPatterns = {"/AtivarDesativar"})
public class AtivarDesativar extends HttpServlet {

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
            Produto produto = new Produto();
            try {
                try {
                    produto = Utils.obter(Integer.parseInt(request.getParameter("codigo-ativar")));
                } catch (Exception ex) {
                    Logger.getLogger(AbrirEditar.class.getName()).log(Level.SEVERE, null, ex);
                }

                if (produto.getAtivo().equalsIgnoreCase("SIM")) {
                    produto.setAtivo("NAO");
                } else {
                    produto.setAtivo("SIM");
                }
                Utils.alterar(produto);
                response.sendRedirect("Manutencao");
            } catch (Exception ex) {
                response.sendRedirect("Manutencao");
            }
        }
    }
}
