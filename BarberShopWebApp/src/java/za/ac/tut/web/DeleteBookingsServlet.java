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
public class DeleteBookingsServlet extends HttpServlet {
    @EJB
    private BookingsFacadeLocal bfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long booking_id = Long.parseLong(request.getParameter("booking_id"));
        Bookings findBookingsById = bfl.find(booking_id);
        
        bfl.remove(findBookingsById);
        request.setAttribute("booking_id", booking_id);
        
        RequestDispatcher disp = request.getRequestDispatcher("view_deleted_bookings.jsp");
        disp.forward(request, response);
        
        
    }

  
}
