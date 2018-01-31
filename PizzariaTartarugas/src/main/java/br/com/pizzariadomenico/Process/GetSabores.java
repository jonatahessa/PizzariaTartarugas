/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pizzariadomenico.Process;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jonat
 */
@WebServlet(name = "GetSabores", urlPatterns = {"/GetSabores"})
public class GetSabores extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        List<Produto> pizzas = Utils.ListarPizzasPaginaInicialPizzas();
        List<Produto> doces = Utils.ListarPizzasPaginaInicialDoces();
        List<Produto> calzones = Utils.ListarPizzasPaginaInicialCalzones();
        List<Produto> novidades = Utils.ListarPizzasPaginaInicialNovidade();
        List<Produto> promocao = Utils.ListarPizzasPaginaInicialPromocoes();
        
        if (promocao != null) {
            for (Produto prod : promocao) {
                String promoConvert = prod.getDescricao().replaceAll("\n", "<br/>");
                prod.setDescricao(promoConvert);
            }
        }
        
        if (novidades != null) {
            for (Produto nov : novidades) {
                String promoConvert = nov.getDescricao().replaceAll("\n", "<br/>");
                nov.setDescricao(promoConvert);
            }
        }
        request.setAttribute("pizzas", pizzas);
        request.setAttribute("doces", doces);
        request.setAttribute("calzones", calzones);
        request.setAttribute("novidades", novidades);
        request.setAttribute("promocoes", promocao);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(GetSabores.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
