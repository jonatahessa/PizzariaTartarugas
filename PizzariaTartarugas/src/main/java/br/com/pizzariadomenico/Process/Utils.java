/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pizzariadomenico.Process;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jonat
 */
public class Utils {

    public static List<Produto> ListarPizzasManutencao() throws Exception {
        List<Produto> pizzas = new ArrayList<>();
        pizzas = br.com.pizzariadomenico.Daos.DaoProduto.listarManutencao();

        return pizzas;
    }

    public static List<Produto> ListarPizzasPaginaInicialPizzas() throws Exception {
        List<Produto> pizzas = new ArrayList<>();
        pizzas = br.com.pizzariadomenico.Daos.DaoProduto.listarPaginaInicialPizza();

        return pizzas;
    }

    public static List<Produto> ListarPizzasPaginaInicialDoces() throws Exception {
        List<Produto> pizzas = new ArrayList<>();
        pizzas = br.com.pizzariadomenico.Daos.DaoProduto.listarPaginaInicialDoces();

        return pizzas;
    }
    
    public static List<Produto> ListarPizzasPaginaInicialBordas() throws Exception {
        List<Produto> pizzas = new ArrayList<>();
        pizzas = br.com.pizzariadomenico.Daos.DaoProduto.listarPaginaInicialBorda();

        return pizzas;
    }
    
    public static List<Produto> ListarPizzasPaginaInicialQuatros() throws Exception {
        List<Produto> pizzas = new ArrayList<>();
        pizzas = br.com.pizzariadomenico.Daos.DaoProduto.listarPaginaInicialQuatro();

        return pizzas;
    }
    
    public static List<Produto> ListarPizzasPaginaInicialPromocoes() throws Exception {
        List<Produto> produto = br.com.pizzariadomenico.Daos.DaoProduto.listarPaginaInicialPromocoes();

        return produto;
    }

    public static void inserirPizza(Produto pizza) throws Exception {
        br.com.pizzariadomenico.Daos.DaoProduto.inserir(pizza);
    }

    public static void desativar(int id) throws Exception {
        br.com.pizzariadomenico.Daos.DaoProduto.desativar(id);
    }

    public static void ativar(int id) throws Exception {
        br.com.pizzariadomenico.Daos.DaoProduto.ativar(id);
    }

    public static void alterar(Produto pizza) throws Exception {
        br.com.pizzariadomenico.Daos.DaoProduto.alterar(pizza);
    }
    
    public static Produto obter(int id) throws Exception {
        Produto produto = br.com.pizzariadomenico.Daos.DaoProduto.obter(id);
        
        return produto;
    }

    public static String criptografia(String password) throws NoSuchAlgorithmException,
            UnsupportedEncodingException {
        MessageDigest algoritmo = MessageDigest.getInstance("SHA-256");
        byte digestMessage[] = algoritmo.digest(password.getBytes("UTF-8"));
        StringBuilder hexPassword = new StringBuilder();
        for (byte aByte : digestMessage) {
            hexPassword.append(String.format("%02X", 0xFF & aByte));
        }
        return hexPassword.toString();
    }

    public static boolean confirmaLogin(String login, String senha) throws Exception {
        return br.com.pizzariadomenico.Daos.DaoProduto.verificarUsuario(login, senha);
    }
}
