package com.niit.thatguyfrontend.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.thatguy.dao.CategoryDAO;
import com.niit.thatguybackend.model.Category;






@Controller
public class CategoryController {
	private static Logger log=LoggerFactory.getLogger(CategoryController.class);
	@Autowired
	private Category category;
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value="/categories",method=RequestMethod.GET)
	public String listCategories(Model model){
		log.debug("starting of the method category list");
		model.addAttribute("category",category);
		model.addAttribute("categoryList",this.categoryDAO.list());
		log.debug("Ending of the method category list");
		return "category";
	}
  @RequestMapping(value="/category/add",method=RequestMethod.POST)
  public String addCategory(@ModelAttribute("category")Category category){
	log.debug("starting of the method add category");
	
	  categoryDAO.save(category);
	log.debug("Ending of the method add category");
	   return "category";
	   
   }
   @RequestMapping("category/remove/{id}")
   public ModelAndView deleteCategory(@PathVariable("id")String id)throws Exception{
	   boolean flag=categoryDAO.delete(id);
	   ModelAndView mv=new ModelAndView("category");
	   String msg="Operation Successful";
	   if(flag!=true)
	   {
		   msg="Operation Failed";
	   }
	   mv.addObject("msg",msg);
	   return mv;
   }
   @RequestMapping("category/edit/{id}")
   public String editCategory(@ModelAttribute("category")Category category){
	   log.debug("Start of the method Edit Category");
	   categoryDAO.saveOrUpdate(category);
	   log.debug("End of the method Edit Category");
	   return "category";
	   
   }
}
