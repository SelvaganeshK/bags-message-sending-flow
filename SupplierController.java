package com.niit.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.model.Supplier;
import com.niit.service.SupplierService;

@Controller
public class SupplierController {

	@Autowired
	SupplierService supplierService;

	public SupplierController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("supplier controller");
	}

	@RequestMapping("/listsupplier")
	public@ResponseBody ModelAndView getlistsupplier(ModelMap m)
	{
		List<Supplier> list=supplierService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(list);
		m.addAttribute("selva",st);
		System.out.println("Json"+st);
		 return new ModelAndView("listsupplier");
	}
	@RequestMapping("/supplier")
	public ModelAndView gotoSupplier(@ModelAttribute("sup") Supplier sup) {
		List supplierList = supplierService.getList();
		return new ModelAndView("supplier", "SupplierList", supplierList);
	}

	@RequestMapping(value = "saveSupplier", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("sup") Supplier sup) {
		
		 
		supplierService.insertRow(sup);
		List supplierList = supplierService.getList();
		return new ModelAndView("supplier", "SupplierList", supplierList);
	}

	// @RequestMapping("register")
	// public ModelAndView registerUser(@ModelAttribute Supplier supplier) {
	// supplierService.insertRow(supplier);
	// return new ModelAndView("redirect:list");
	// }

	/*@RequestMapping("list")
	public ModelAndView getList() {
		List supplierList = supplierService.getList();
		return new ModelAndView("list", "SupplierList", supplierList);
	}*/

	@RequestMapping("deleteSupplier")
	public ModelAndView deleteUser(@ModelAttribute("sup") Supplier sup,@RequestParam int id) {
		supplierService.deleteRow(id);
		List supplierList = supplierService.getList();
		return new ModelAndView("supplier", "SupplierList", supplierList);
	}

	@RequestMapping("editsupplier")
	public ModelAndView editUser(@ModelAttribute("sup") Supplier sup, @RequestParam int id) 
	{
		sup = supplierService.getRowById(id);
		List supplierList = supplierService.getList();
		return new ModelAndView("editsupplier", "SupplierObject", sup);
	}

	@RequestMapping("updateSupplier")
	public ModelAndView updateUser(@ModelAttribute("sup") Supplier sup) {
		supplierService.updateRow(sup);
		List supplierList = supplierService.getList();
		return new ModelAndView("redirect:supplier");
	}

}
