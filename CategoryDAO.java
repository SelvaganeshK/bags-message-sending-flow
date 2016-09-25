package com.niit.dao;

import java.util.List;

import com.niit.model.Category;

public interface CategoryDAO {
	



	 public List getList();

	 public Category getRowById(int id);

	 public int updateRow(Category cat);

	 public int deleteRow(int id);
	 
		public int insertRow(Category cat);

	}

