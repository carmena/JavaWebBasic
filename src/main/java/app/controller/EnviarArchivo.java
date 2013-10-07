/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package app.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Profesor
 */
@WebServlet(name = "EnviarArchivo", urlPatterns = {"/EnviarArchivo"})
public class EnviarArchivo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setHeader("Content-Disposition", "attachment; filename=adjunto.pdf");
        response.setContentType("application/pdf");
        
        File dir = new File("c:\\");
        File f = new File(dir, "archivo.pdf");
        byte[] bytearray = new byte[(int) f.length()];
        FileInputStream is = new FileInputStream(f);
        is.read(bytearray);
        OutputStream os = response.getOutputStream();
        os.write(bytearray);
        os.flush();

    }
}
