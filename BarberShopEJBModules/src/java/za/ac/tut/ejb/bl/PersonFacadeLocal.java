/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Person;

/**
 *
 * @author Magamula
 */
@Local
public interface PersonFacadeLocal {

    void create(Person person);

    void edit(Person person);

    void remove(Person person);

    Person find(Object id);
    
    Person find(String email);

    List<Person> findAll();
    
    List<Person> ageRange(Integer minAge,Integer maxAge);

    List<Person> findRange(int[] range);

    int count();
    
    List<Person> findCustomerByGender(String gender);
    
}
