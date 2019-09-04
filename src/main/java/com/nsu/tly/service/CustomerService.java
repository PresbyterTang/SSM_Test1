package com.nsu.tly.service;
import com.nsu.tly.model.Customer;

import java.util.List;


public interface CustomerService {
	
	public Customer findCustomerById(Integer id);
	
	public List<Customer> findAllCustomer();
}

