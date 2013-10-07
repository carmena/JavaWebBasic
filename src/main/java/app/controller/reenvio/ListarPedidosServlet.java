/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package app.controller.reenvio;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Profesor
 */
@WebServlet(name = "ListarPedidosServlet", urlPatterns = {"/ListarPedidosServlet"})
public class ListarPedidosServlet extends HttpServlet {

   

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        System.out.println("Dentro de ListarPedidosServlet");		
		
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/pedidos.jsp");
	rd.forward(request, response);

    }

    
   
}
