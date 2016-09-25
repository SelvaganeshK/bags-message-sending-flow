package com.niit.service;

import java.util.List;

import com.niit.model.Supplier;



public interface SupplierService {
	 public int insertRow(Supplier sup);

	 public List getList();

	 public Supplier getRowById(int id);

	 public int updateRow(Supplier sup);

	 public int deleteRow(int id);

	 
	
	}




