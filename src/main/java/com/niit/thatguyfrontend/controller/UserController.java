package com.niit.thatguyfrontend.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.thatguy.dao.CartDAO;
import com.niit.thatguy.dao.CategoryDAO;

import com.niit.thatguy.dao.SupplierDAO;
import com.niit.thatguy.dao.UserDAO;
import com.niit.thatguybackend.model.Cart;
import com.niit.thatguybackend.model.Category;
import com.niit.thatguybackend.model.Supplier;
import com.niit.thatguybackend.model.User;
@Controller
public class UserController {
	Logger log=LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private UserDAO userDAO;

	@Autowired
	private Category category;
	@Autowired
	private Supplier supplier;
	@Autowired
	private Cart cart;
	@Autowired
	private User user;
	@Autowired
	HttpSession session;
	
@RequestMapping(value="/Login",method=RequestMethod.POST)
public ModelAndView Login(@RequestParam(value="name")String name,
		@RequestParam(value="password")String password,HttpSession session)
{
	log.debug("Starting of the method login");
	log.info("name is {} password is{}",name,password);
	ModelAndView mv=new ModelAndView("/Home");
	user=userDAO.isValidUser(name,password);
	
	if(user!=null){
		log.debug("Valid Credentials");
		user=userDAO.get(name);
		session.setAttribute("loggedInUser",user.getName());
		session.setAttribute("loggedInUserID",user.getId());
		session.setAttribute("user",user);
		if(user.getRole().equals("ROLE_ADMIN")){
			log.debug("logged in as ADMIN");
			mv.addObject("isAdmin","true");
			session.setAttribute("supplier",supplier);
			session.setAttribute("supplierList",supplierDAO.list());
			
			session.setAttribute("category",category);
			session.setAttribute("categoryList",categoryDAO.list());
			}else{
				log.debug("logged in as USER");
				mv.addObject("isAdmin","false");
				cart=cartDAO.get(name);
				mv.addObject("cart",cart);
				//Fetching the cart list based on user ID
				//List<Cart> cartList=cartDAO.list(userID);
				//mv.addObject("cartList",cartList);
				//mv.addObject("cartSize",cartList.size());
			}
	}else{
		mv.addObject("invalidCredentials","true");
		mv.addObject("errorMessage","Invalid Credentials");
		}
	log.debug("ending of the method login");
	return mv;
}

@RequestMapping("/logout")
public ModelAndView logout(HttpServletRequest request,HttpSession session)
{
	ModelAndView mv=new ModelAndView("/Home");
	session.invalidate();
	session=request.getSession(true);
	session.setAttribute("category",category);
	session.setAttribute("categoryList",categoryDAO.list());
	
	mv.addObject("logoutMessage","Log Out Successful");
	mv.addObject("loggedOut","true");
	
	return mv;
}
@RequestMapping(value="/loginError",method=RequestMethod.GET)
public String loginError(Model model){
	log.debug("Starting of method login error");
	model.addAttribute("errorMessage","Login Error");
	log.debug("Ending of the method Login Error");
	return "Home";
}
}