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
import za.ac.tut.ejb.bl.PersonFacadeLocal;
import za.ac.tut.entities.Person;

/**
 *
 * @author Student
 */
public class FindCustomerByAgeServlet extends HttpServlet {
    @EJB
    private PersonFacadeLocal personFL;
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        Integer min = Integer.parseInt(request.getParameter("min_age"));
        Integer max = Integer.parseInt(request.getParameter("max_age"));
        
        List<Person> customers = personFL.ageRange(min, max);
        
        
        request.setAttribute("customers", customers);
        
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view_all_customers_by_age.jsp");  
        requestDispatcher.forward(request, response);
        
    }

}
