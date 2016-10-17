package com.niit.thatguyfrontend.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.thatguy.dao.CategoryDAO;
import com.niit.thatguy.dao.ProductDAO;
import com.niit.thatguy.dao.SupplierDAO;
import com.niit.thatguybackend.model.Category;
import com.niit.thatguybackend.model.Product;
import com.niit.thatguybackend.model.Supplier;
import com.niit.thatguyfrontend.util.FileUtil;



@Controller
public class ProductController {
	
	@Autowired(required=true)
	private ProductDAO productDAO;
	@Autowired(required=true)
	private CategoryDAO categoryDAO;
	@Autowired(required=true)
	private SupplierDAO supplierDAO;
	
	private String path="F:\\DevOps\\Images";
	

	
	
@RequestMapping(value="/product",method=RequestMethod.GET)
public String listProducts(Model model){
	model.addAttribute("product",new Product());
	model.addAttribute("category",new Category());
	model.addAttribute("supplier",new Supplier());
	model.addAttribute("productList",this.productDAO.list());
	model.addAttribute("categoryList",this.categoryDAO.list());
	model.addAttribute("supplierList",this.supplierDAO.list());
	return "product";
}
//For Adding and Updating Products
	@RequestMapping(value="/product/add",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product")Product product){
		Category category=categoryDAO.getByName(product.getCategory().getName());
		Supplier supplier=supplierDAO.getByName(product.getSupplier().getName());
		System.out.println("Catagory : "+category);
		product.setCategory(category);
		product.setSupplier(supplier);
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		productDAO.saveOrUpdate(product);
		//FileUtil.upload(path,file,product.getId()+".jpg");
		return "product";
	}
	@RequestMapping("product/remove/{id}")
	public String removeProduct(@PathVariable("id") String id,ModelMap model) throws Exception{
		try{
			productDAO.delete(id);
			model.addAttribute("message","Product was Added");
		}catch(Exception e){
			model.addAttribute("message",e.getMessage());
			e.printStackTrace();
		}
		return "product";
	}
	
	@RequestMapping("product/edit/{id}")
	public String editProduct(@PathVariable("id")String id,Model model){
		System.out.println("editProduct");
		model.addAttribute("product",this.productDAO.get(id));
		model.addAttribute("productList",this.productDAO.list());
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("supplierList",this.supplierDAO.list());
		
		return "product";
	}
	//To Get Selected Product 
	@RequestMapping("product/get/{id}")
	public Model getProduct(@PathVariable("id")String id,Model model)
	{
		Product selectedProduct=productDAO.get(id);
		model.addAttribute("selectedProduct",selectedProduct);
		return model;
	}
}
