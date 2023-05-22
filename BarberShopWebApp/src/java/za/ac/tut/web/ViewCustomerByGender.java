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
public class ViewCustomerByGender extends HttpServlet {
    @EJB
    private PersonFacadeLocal personFL;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String gender = request.getParameter("gender");
        
        List<Person> findCustomerByGender = personFL.findCustomerByGender(gender);
        System.out.println(findCustomerByGender);
        request.setAttribute("findCustomerByGender", findCustomerByGender);
        
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view_all_customers_by_gender.jsp");  
        requestDispatcher.forward(request, response);
    }
}
