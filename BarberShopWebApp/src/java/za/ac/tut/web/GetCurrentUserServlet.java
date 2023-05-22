/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.BookingsFacadeLocal;
import za.ac.tut.entities.Bookings;
import za.ac.tut.entities.Person;

/**
 *
 * @author Student
 */
public class GetCurrentUserServlet extends HttpServlet {
    @EJB
    private BookingsFacadeLocal bookingFL;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        HttpSession session = request.getSession(true);
        Person person = (Person)session.getAttribute("person");
        
        
        List<Bookings> bookings = bookingFL.findByPerson(person);
       
        request.setAttribute("bookings", bookings);
        RequestDispatcher disp = request.getRequestDispatcher("user_profile.jsp");
        disp.forward(request, response);
    }


}
