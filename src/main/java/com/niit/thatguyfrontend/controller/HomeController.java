package com.niit.thatguyfrontend.controller;



import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.thatguy.dao.CategoryDAO;
import com.niit.thatguy.dao.SupplierDAO;
import com.niit.thatguy.dao.UserDAO;
import com.niit.thatguybackend.model.Category;
import com.niit.thatguybackend.model.Product;
import com.niit.thatguybackend.model.Supplier;
import com.niit.thatguybackend.model.User;
@Controller
public class HomeController {
	Logger log=LoggerFactory.getLogger(HomeController.class);
	@Autowired
	User user;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired 
	private Category category;
	
	
	@Autowired
	private Product product;
	
	@Autowired
	private Supplier supplier;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	
	@RequestMapping("/")
	public ModelAndView onLoad(HttpSession session) {
		log.debug("Starting of the method onLoad");
		ModelAndView mv=new ModelAndView("/Home");
		session.setAttribute("category",category);
		session.setAttribute("product" ,product);
		session.setAttribute("supplier",supplier);
		session.setAttribute("supplierList",supplierDAO.list());
		session.setAttribute("categoryList",categoryDAO.list());
		log.debug("ending of the method onLoad");
		return mv;
	}
	
	//@RequestMapping("/home")
	//public ModelAndView homePage()
	//{
	//	ModelAndView mv=new ModelAndView("Home");
	//	mv.addObject("message","Welcome to ThatGuy");
	//	List<Category> categoryList=categoryDAO.list();
	//	session.setAttribute("categoryList", categoryList);
	//	session.setAttribute("category",category);
	//	return mv;
	//}
	@RequestMapping("/Home")
	public ModelAndView Home(){
		ModelAndView mv=new ModelAndView("/Home");
		return mv;
	}
	/*@RequestMapping("/user/register")
	public ModelAndView navigateToRegistration()
	{
		ModelAndView mv=new ModelAndView("/user/register");
		mv.addObject("isUserClickedRegistration",true);
		return mv;
	}*/
	
	
	@RequestMapping(value="/Register",method=RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute User user) {
		//Before adding user check whether the user exists
		ModelAndView mv=new ModelAndView("/Home");
		if(userDAO.get(user.getId())==null){
			userDAO.saveOrUpdate(user);
		}else{
			mv.addObject("message","User With ID Exists");
		}
		// If User Doesn't Exist then save 
		mv.addObject("successMessage","Registration Seccessful");
		return mv;
	}
	@RequestMapping("/Register")
	public ModelAndView Register(){
		ModelAndView mv=new ModelAndView("/Register");
		mv.addObject("user",user);
		mv.addObject("isUserClickedRegisterHere","true");
		return mv;
	}
	
	@RequestMapping("/Login")
	public ModelAndView Login(){
		ModelAndView mv=new ModelAndView("/Login");
		mv.addObject("user",user);
		mv.addObject("isUserClickedLoginHere","true");
		return mv;
	}
	
	@RequestMapping("/Aboutus")
	public ModelAndView Aboutus(){
		ModelAndView mv=new ModelAndView("/Aboutus");
		return mv;
	}
	@RequestMapping("/Contactus")
	public ModelAndView Contactus(){
		ModelAndView mv=new ModelAndView("/Contactus");
		return mv;
	}
	
	
	}
		
	
	
