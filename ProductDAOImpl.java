 package com.niit.dao;

import java.io.Serializable;
import java.util.List;

import javax.persistence.AssociationOverride;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	
	 
	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Product prod,String s) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  prod.setImgs(s);
	  session.saveOrUpdate(prod);
	  tx.commit();
	  session.flush();
	  Serializable id = session.getIdentifier(prod);
	  session.close();
	  return (Integer) id;
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  Session session = sessionFactory.openSession();
	  @SuppressWarnings("unchecked")
	  List productList = session.createQuery("from Product").list();
	  session.close();
	  return productList;
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public Product getRowById(int id) {
	  Session session = sessionFactory.openSession();
	  Product prod= (Product) session.load(Product.class, id);
	  return prod;
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Product prod) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(prod);
	  tx.commit();
	  Serializable id = session.getIdentifier(prod);
	  session.close();
	  return (Integer) id;
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  Product prod = (Product) session.load(Product.class, id);
	  session.delete(prod);
	  tx.commit();
	  Serializable ids = session.getIdentifier(prod);
	  session.close();
	  return (Integer) ids;
	 }

	}   

