package com.nsu.tly.web;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nsu.tly.model.Customer;
import com.nsu.tly.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	@RequestMapping("/findCustomerById")
	public String findCustomerById(HttpServletRequest request,HttpServletResponse response,Model model,Integer id) {
		Customer customer=customerService.findCustomerById(id);
		model.addAttribute("customer",customer);
		return "customer";
	}

	@RequestMapping("/findAllCustomer")
	public String findAllCustomer(HttpServletRequest request,HttpServletResponse response,Model model) {
		List<Customer> cList=customerService.findAllCustomer();
		model.addAttribute("cList",cList);
		return "list";
	}


	@RequestMapping("/findAllCustomer1")
	@ResponseBody
	public List<Customer> findAllCustomer1(HttpServletRequest request,HttpServletResponse response) {
		List<Customer> cList=customerService.findAllCustomer();
		return cList;
	}

	@RequestMapping("/index")
	public String toIndex(HttpServletRequest request,HttpServletResponse response) {
		return "index";
	}
}
