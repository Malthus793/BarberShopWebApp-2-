/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class ViewTodaysBookingServlet extends HttpServlet {
    @EJB
    private BookingsFacadeLocal bfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String date = LocalDate.now().toString();
       
      SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
           
          Date fDate;
           
        try {
            fDate = dateFormat.parse(date);
            List<Bookings> bookingsByDate = bfl.bookingsByDate(fDate);
            
            
             request.setAttribute("bookingsByDate", bookingsByDate);
            
        } catch (ParseException ex) {
            Logger.getLogger(ViewTodaysBookingServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

       RequestDispatcher disp = request.getRequestDispatcher("view_bookings_by_date.jsp");
       disp.forward(request, response);               
   
    }

}
