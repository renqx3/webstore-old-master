package com.packt.webstore.domain.repository.impl;

import com.packt.webstore.domain.Customer;
import com.packt.webstore.domain.repository.CustomerRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mateusz on 2016-11-27.
 */
@Repository
public class InMemoryCustomerRepository implements CustomerRepository{

    private List<Customer> listOfCustomers = new ArrayList<Customer>();

    public InMemoryCustomerRepository() {

        Customer customer = new Customer("1", "nowak", 2);
        Customer customer2 = new Customer("2", "kowal", 22);
        Customer customer3 = new Customer("3", "nowakowski", 12);
        Customer customer4 = new Customer("4", "kowalski", 42);
        listOfCustomers.add(customer4);
        listOfCustomers.add(customer3);
        listOfCustomers.add(customer2);
        listOfCustomers.add(customer);



    }
    public List<Customer> getAllCustomers() {return listOfCustomers; }

}
