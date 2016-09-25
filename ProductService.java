package com.niit.service;

import java.util.List;

import com.niit.model.Product;



public interface ProductService {
	 public int insertRow(Product prod,String s);

	 public List getList();

	 public Product getRowById(int id);

	 public int updateRow(Product prod);

	 public int deleteRow(int id);

	 
	
	}




