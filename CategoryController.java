package com.niit.Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.model.Category;
import com.niit.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	CategoryService categoryService;

	public CategoryController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("category controller");
	}

	@RequestMapping("/listcategory")
	public@ResponseBody ModelAndView getlistcategory(ModelMap m)
	{
		List<Category> list=categoryService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(list);
		m.addAttribute("selva",st);
		System.out.println("Json"+st);
		 return new ModelAndView("listcategory");
	}
	@RequestMapping("/category")
	public ModelAndView gotoCategory(@ModelAttribute("cat") Category cat) {
		List categoryList = categoryService.getList();
		return new ModelAndView("category", "CategoryList", categoryList);
	}

	@RequestMapping(value = "saveCategory", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("cat") Category cat) {
		
		 
		categoryService.insertRow(cat);
		List categoryList = categoryService.getList();
		return new ModelAndView("category", "CategoryList", categoryList);
	}

	// @RequestMapping("register")
	// public ModelAndView registerUser(@ModelAttribute Product product) {
	// productService.insertRow(product);
	// return new ModelAndView("redirect:list");
	// }

	/*@RequestMapping("list")
	public ModelAndView getList() {
		List categoryList = categoryService.getList();
		return new ModelAndView("list", "CategoryList", categoryList);
	}*/

	@RequestMapping("/deleteCategory")
	public ModelAndView deleteUser(@ModelAttribute("cat") Category cat,@RequestParam int id) {
		categoryService.deleteRow(id);
		List categoryList = categoryService.getList();
		return new ModelAndView("category", "CategoryList", categoryList);
	}

	@RequestMapping("/editcategory")
	public ModelAndView editUser(@ModelAttribute("cat") Category cat, @RequestParam int id) 
	{
		cat = categoryService.getRowById(id);
		List productList = categoryService.getList();
		return new ModelAndView("editcategory", "CategoryObject", cat);
	}

	@RequestMapping("updateCategory")
	public ModelAndView updateUser(@ModelAttribute("cat") Category cat) {
		categoryService.updateRow(cat);
		List categoryList = categoryService.getList();
		return new ModelAndView("redirect:category");
	}

}
