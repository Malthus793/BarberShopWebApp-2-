/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.Date;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Bookings;
import za.ac.tut.entities.Person;

/**
 *
 * @author Magamula
 */
@Stateless
public class BookingsFacade extends AbstractFacade<Bookings> implements BookingsFacadeLocal {

    @PersistenceContext(unitName = "BarberShopEJBModulesPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BookingsFacade() {
        super(Bookings.class);
    }

    @Override
    public List<Bookings> bookingsByDate(Date date) {
        Query query = em.createQuery("SELECT b FROM Bookings b WHERE b.date = :date");
        query.setParameter("date", date);
        List<Bookings> bookings = query.getResultList();
        return bookings;
    }

    @Override
    public List<Bookings> findbyID(Long id) {
        Query query = em.createQuery("SELECT b FROM Bookings b WHERE b.person.id = :id");
        query.setParameter("id", id);
        List<Bookings> bookings = (List<Bookings>) query.getResultList();
        return bookings;
    }

    @Override
    public void deleteAll(Person person) {
        Query query = em.createQuery("DELETE FROM Bookings b WHERE b.person = :person");
        query.executeUpdate();
    }
    
}
