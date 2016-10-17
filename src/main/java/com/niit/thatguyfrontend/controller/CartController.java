package com.niit.thatguyfrontend.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.thatguy.dao.CartDAO;
import com.niit.thatguy.dao.ProductDAO;
import com.niit.thatguybackend.model.Cart;
import com.niit.thatguybackend.model.Product;

@Controller
public class CartController {
	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private Cart cart;
	@Autowired
	private ProductDAO productDAO;


	@RequestMapping(value="/myCart",method=RequestMethod.GET)
	public String myCart(Model model,HttpSession session){
		model.addAttribute("cart",new Cart());
		//get the logged in user id
		String loggedInUserid=(String) session.getAttribute("loggedInUserID");
	/*int cartSize=cartDAO.list(loggedInUserid).size();
	if(cartSize==0){
		model.addAttribute("errorMessage","no items in your cart");
	}else{
		//model.addAttribute("cartList",cartDAO.list(loggedInUserid));
		model.addAttribute("totalAmount",cartDAO.TotalAmount(loggedInUserid));
		model.addAttribute("displayCart",true);
	}*/
	return "/Home";
	}
	//to add and update cart
	@RequestMapping(value="/myCart/add/{id}",method=RequestMethod.GET)
	public String addToCart(@PathVariable("id")String id,HttpSession session){
		Product product=productDAO.get(id);
		//cart.setPrice(product.getPrice());
		cart.setProductid(product.getId());
		cart.setQuantity("1");
		String loggedInUserid=(String) session.getAttribute("loggedInUserID");
		cart.setId(loggedInUserid);
		cart.setStatus("N");
		cartDAO.saveOrUpdate(cart);
		return "Home";
		
	}
	@RequestMapping("myCart/delete/{id}")
	public String removeCart(@PathVariable("id") String id,ModelMap model) throws Exception{
		try{
			cartDAO.delete(id);
			model.addAttribute("message","removed successfully!");
		}catch(Exception e){
			model.addAttribute("message",e.getMessage());
			e.printStackTrace();
			
		}
		return "Home";
	}
	@RequestMapping("myCart/edit/{id}")
	public String editCart(@PathVariable("id")String id,Model model,HttpSession session){
		System.out.println("editCart");
		model.addAttribute("cart",this.cartDAO.get(id));
		String loggedInUserid=(String) session.getAttribute("loggedInUserID");
		//model.addAttribute("listCarts",this.cartDAO.list(loggedInUserid));
		return "cart";
		
	}
}
