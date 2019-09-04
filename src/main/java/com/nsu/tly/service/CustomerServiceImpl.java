package com.nsu.tly.service;
import java.util.List;

import com.nsu.tly.dao.CustomerMapper;
import com.nsu.tly.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
	//注解注入CustomerDao
	@Autowired
	private CustomerMapper customerMapper;
	//通过Id查询客户
	public Customer findCustomerById(Integer id) {
		return this.customerMapper.selectByPrimaryKey(id);
	}

    //查询所有客户
	public List<Customer> findAllCustomer() {
		return this.customerMapper.selectAllCustomer();
	}
}
