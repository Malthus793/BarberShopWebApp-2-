/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.Date;
import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Bookings;
import za.ac.tut.entities.Person;

/**
 *
 * @author Magamula
 */
@Local
public interface BookingsFacadeLocal {

    void create(Bookings bookings);

    void edit(Bookings bookings);

    void remove(Bookings bookings);

    Bookings find(Object id);

    List<Bookings> findAll();

    List<Bookings> findRange(int[] range);

    int count();
    
    List<Bookings> findbyID(Long id);
    
    void deleteAll(Person person);
    
    List<Bookings> findByPerson(Person person);
    
    void UpdateStatus(Long id,String status);
    
    List<Bookings> bookingsByDate(Date date); 
    
}
