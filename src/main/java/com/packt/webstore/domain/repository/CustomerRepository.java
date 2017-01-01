package com.packt.webstore.domain.repository;

import com.packt.webstore.domain.Customer;

import java.util.List;

/**
 * Created by Mateusz on 2016-11-27.
 */
public interface CustomerRepository {
    List<Customer> getAllCustomers();
}
