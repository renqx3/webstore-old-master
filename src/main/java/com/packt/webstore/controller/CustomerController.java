package com.packt.webstore.controller;

import com.packt.webstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Mateusz on 2016-11-27.
 */

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/customers")
    public String list(Model model){
        model.addAttribute("customers", customerService.getAllCustomers());
        return "customers";
    }
}
