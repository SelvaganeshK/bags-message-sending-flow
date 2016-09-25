package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDAO {
	


	public int insertRow(Product product,String s);

	 public List getList();

	 public Product getRowById(int id);

	 public int updateRow(Product product);

	 public int deleteRow(int id);

	}
