package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2023-05-22T10:41:25")
@StaticMetamodel(Person.class)
public class Person_ { 

    public static volatile SingularAttribute<Person, String> firstname;
    public static volatile SingularAttribute<Person, String> password;
    public static volatile SingularAttribute<Person, String> gender;
    public static volatile SingularAttribute<Person, String> surname;
    public static volatile SingularAttribute<Person, Long> id;
    public static volatile SingularAttribute<Person, Date> creationDate;
    public static volatile SingularAttribute<Person, String> email;
    public static volatile SingularAttribute<Person, Integer> age;

}