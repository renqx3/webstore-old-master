package com.packt.webstore.service;

import com.packt.webstore.domain.Customer;
import com.packt.webstore.domain.repository.CustomerRepository;

import java.util.List;

/**
 * Created by Mateusz on 2016-11-27.
 */
public interface CustomerService {
    public List<Customer> getAllCustomers();
}
