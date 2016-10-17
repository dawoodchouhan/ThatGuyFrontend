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

import com.niit.thatguy.dao.SupplierDAO;
import com.niit.thatguybackend.model.Supplier;
@Controller
public class SupplierController {
	private static Logger log=LoggerFactory.getLogger(SupplierController.class);
	@Autowired
	private Supplier supplier;
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping(value="/suppliers",method=RequestMethod.GET)
	public String listSuppliers(Model model){
		log.debug("starting of the method supplier list");
		model.addAttribute("supplier",supplier);
		model.addAttribute("supplierList",this.supplierDAO.list());
		log.debug("Ending of the method supplier list");
		return "supplier";
	}
  @RequestMapping(value="/supplier/add",method=RequestMethod.POST)
  public String addSupplier(@ModelAttribute("supplier")Supplier supplier){
	log.debug("starting of the method add supplier");
	
	  supplierDAO.save(supplier);
	log.debug("Ending of the method add supplier");
	   return "supplier";
	   
   }
   @RequestMapping("supplier/remove/{id}")
   public ModelAndView deleteSupplier(@PathVariable("id")String id)throws Exception{
	   boolean flag=supplierDAO.delete(id);
	   ModelAndView mv=new ModelAndView("supplier");
	   String msg="Operation Successful";
	   if(flag!=true)
	   {
		   msg="Operation Failed";
	   }
	   mv.addObject("msg",msg);
	   return mv;
   }
   @RequestMapping("supplier/edit/{id}")
   public String editSupplier(@ModelAttribute("supplier")Supplier supplier){
	   log.debug("Start of the method Edit Supplier");
	   supplierDAO.saveOrUpdate(supplier);
	   log.debug("End of the method Edit Supplier");
	   return "supplier";
	   
   }
}


