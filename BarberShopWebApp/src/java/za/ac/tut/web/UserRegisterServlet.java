/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.util.Date;
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
 * @author Jakaza G Chauke
 */
public class UserRegisterServlet extends HttpServlet {
    @EJB
    private PersonFacadeLocal personFL;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        String firstname = request.getParameter("firstname");
        String gender = request.getParameter("gender");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Integer age = Integer.parseInt(request.getParameter("age"));
        
        
        Person person = createPerson(firstname,surname,gender,email,password,age);
        personFL.create(person);
        
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user_login.jsp");  
        requestDispatcher.forward(request, response);
    }

    private Person createPerson(String firstname, String surname, String gender, String email, String password, Integer age) {
        Person person = new Person();
        person.setFirstname(firstname);
        person.setAge(age);
        person.setEmail(email);
        person.setGender(gender);
        person.setPassword(password);
        person.setSurname(surname);
        person.setCreationDate(new Date());
        return person;
    }

}
