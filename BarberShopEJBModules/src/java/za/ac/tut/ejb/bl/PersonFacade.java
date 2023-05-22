/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Person;

/**
 *
 * @author Magamula
 */
@Stateless
public class PersonFacade extends AbstractFacade<Person> implements PersonFacadeLocal {

    @PersistenceContext(unitName = "BarberShopEJBModulesPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PersonFacade() {
        super(Person.class);
    }

    @Override
    public Person find(String email) {
        Query query = em.createQuery("SELECT p FROM Person p WHERE p.email = :email");
        query.setParameter("email", email);
        Person person = (Person) query.getSingleResult();
        return person;
        
    }

    @Override
    public List<Person> ageRange(Integer minAge, Integer maxAge) {
       Query query = em.createQuery("SELECT p FROM Person p WHERE p.age BETWEEN :minAge AND :maxAge");
        query.setParameter("minAge", minAge); 
        query.setParameter("maxAge", maxAge); 
        List<Person> people = (List<Person>) query.getResultList();
        return people;
    }
    
}
