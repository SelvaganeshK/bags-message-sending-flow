package com.niit.dao;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierDAO {
	



	 public List getList();

	 public Supplier getRowById(int id);

	 public int updateRow(Supplier sup);

	 public int deleteRow(int id);
	 
		public int insertRow(Supplier sup);

	}

