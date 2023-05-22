package za.ac.tut.entities;

import java.sql.Time;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.Person;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2023-05-22T10:59:58")
@StaticMetamodel(Bookings.class)
public class Bookings_ { 

    public static volatile SingularAttribute<Bookings, Date> date;
    public static volatile SingularAttribute<Bookings, Person> person;
    public static volatile SingularAttribute<Bookings, String> name;
    public static volatile SingularAttribute<Bookings, Integer> numPeople;
    public static volatile SingularAttribute<Bookings, String> style;
    public static volatile SingularAttribute<Bookings, Long> id;
    public static volatile SingularAttribute<Bookings, Time> time;
    public static volatile SingularAttribute<Bookings, Date> creationDate;
    public static volatile SingularAttribute<Bookings, String> branch;
    public static volatile SingularAttribute<Bookings, String> contacts;
    public static volatile SingularAttribute<Bookings, String> status;

}