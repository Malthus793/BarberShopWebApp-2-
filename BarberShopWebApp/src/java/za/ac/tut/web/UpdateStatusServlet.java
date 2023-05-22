/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.BookingsFacadeLocal;
import za.ac.tut.entities.Bookings;

/**
 *
 * @author Student
 */
public class UpdateStatusServlet extends HttpServlet {

    @EJB
    private BookingsFacadeLocal bfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String status = request.getParameter("status");
        Long id = Long.parseLong(request.getParameter("id"));
        
        bfl.UpdateStatus(id, status);
        
        
        RequestDispatcher disp = request.getRequestDispatcher("update_status_outcome.jsp");
        disp.forward(request, response);
    }

    
}
