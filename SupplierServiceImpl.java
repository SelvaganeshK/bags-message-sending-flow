package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {
    
	@Autowired
	 SupplierDAO supplierDAO;

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Supplier sup) {
	  return supplierDAO.insertRow(sup);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return supplierDAO.getList();
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public Supplier getRowById(int id) {
	  return supplierDAO.getRowById(id);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Supplier sup) {
	  return supplierDAO.updateRow(sup);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return supplierDAO.deleteRow(id);
	 }
}