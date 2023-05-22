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
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.PersonFacadeLocal;
import za.ac.tut.entities.Person;

/**
 *
 * @author Student
 */
public class UserLoginServlet extends HttpServlet {
    @EJB
    private PersonFacadeLocal personFL;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String url = "";
        // Fetch user details from the database
        // Check if email and password matches with entered values.
        // save user to session
        // Go to main page
        
        if(email.equals("") || password.equals("")){
            
                response.sendRedirect("user_login.jsp?error=true");
            
        }else{
        
            Person person = personFL.find(email);

            String pEmail = person.getEmail();
            String pPassword = person.getPassword();

            if(email.equals(pEmail) && password.equals(pPassword)){
                response.sendRedirect("bookings_page.jsp");
                session.setAttribute("person", person);
            }else{
                response.sendRedirect("user_login.jsp?error=true");
            }  
            
        
        
        }
        
        
        
        

    }
}
