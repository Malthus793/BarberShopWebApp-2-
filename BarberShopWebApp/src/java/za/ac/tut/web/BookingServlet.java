/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.BookingsFacadeLocal;
import za.ac.tut.ejb.bl.PersonFacadeLocal;
import za.ac.tut.entities.Bookings;
import za.ac.tut.entities.Person;

/**
 *
 * @author Student
 */
public class BookingServlet extends HttpServlet {

    @EJB
    private BookingsFacadeLocal bfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
       Person person = (Person) session.getAttribute("person");
        
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String branch = request.getParameter("branch");
            String comment = request.getParameter("message");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            String style = request.getParameter("style");
            Integer numPeople = Integer.parseInt(request.getParameter("number"));
            
        try {
            
            
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm");
            
            Date fDate = dateFormat.parse(date);
            
            
       

                Date fTime = timeFormat.parse(time);
                Time finalTime = new Time(fTime.getTime());
                
                System.out.println( fDate + " " + fTime);
                
                Bookings book = createBookings(style,finalTime,name,phone,branch,numPeople,fDate,person);
                
                bfl.create(book);
                
                
                        RequestDispatcher requestDispatcher = request.getRequestDispatcher("booking_outcome.jsp");  
        requestDispatcher.forward(request, response);
                
             
        } catch (ParseException ex) {
            Logger.getLogger(BookingServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
               
        
        
    }

     private Bookings createBookings(String style, Time finalTime, String name, String phone, String branch, Integer numPeople, Date fDate, Person person) {
       Bookings book = new Bookings();
                book.setPerson(person);
                book.setContacts(phone);
                book.setName(name);
                book.setNumPeople(numPeople);
                book.setDate(fDate);
                book.setBranch(branch);
                book.setStyle(style);
                book.setStatus("Pending");
                book.setTime(finalTime);
                book.setCreationDate(new Date());
                return book;
    }

    

}
