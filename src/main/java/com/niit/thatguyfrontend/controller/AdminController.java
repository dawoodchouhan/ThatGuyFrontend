package com.niit.thatguyfrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.thatguy.dao.CategoryDAO;
import com.niit.thatguy.dao.ProductDAO;
import com.niit.thatguy.dao.SupplierDAO;
import com.niit.thatguybackend.model.Category;
import com.niit.thatguybackend.model.Product;
import com.niit.thatguybackend.model.Supplier;

@Controller
public class AdminController {
	@Autowired
	private Product product;
	@Autowired
	private Supplier supplier;
	@Autowired
	private Category category;
	
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private ProductDAO productDAO;

	
	@RequestMapping("/manageCategories")
	public ModelAndView categories(){
		ModelAndView mv=new ModelAndView("/home");
		mv.addObject("category",category);
		mv.addObject("isAdminClickedCategory","true");
		mv.addObject("categoryList",categoryDAO.list());
		return mv;
	}
	@RequestMapping("/manageProducts")
	public ModelAndView products(){
		ModelAndView mv=new ModelAndView("/home");
		mv.addObject("product",product);
		mv.addObject("isAdminClickedProducts","true");
		mv.addObject("productList",productDAO.list());
		return mv;
	}
	@RequestMapping("/manageSuppliers")
	public ModelAndView suppliers(){
		ModelAndView mv=new ModelAndView("/home");
		mv.addObject("supplier",supplier);
		mv.addObject("isAdminClickedSuppliers","true");
		mv.addObject("supplierList",supplierDAO.list());
		return mv;
	}
}
