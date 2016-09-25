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

import com.niit.model.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	
	 
	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Category cat) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();

	  session.saveOrUpdate(cat);
	  tx.commit();
	  session.flush();
	  Serializable id = session.getIdentifier(cat);
	  session.close();
	  return (Integer) id;
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  Session session = sessionFactory.openSession();
	  @SuppressWarnings("unchecked")
	  List categoryList = session.createQuery("from Category").list();
	  session.close();
	  return categoryList;
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public Category getRowById(int id) {
	  Session session = sessionFactory.openSession();
	 Category cat= (Category) session.load(Category.class, id);
	  return cat;
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Category cat) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(cat);
	  tx.commit();
	  Serializable id = session.getIdentifier(cat);
	  session.close();
	  return (Integer) id;
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  Category cat = (Category) session.load(Category.class, id);
	  session.delete(cat);
	  tx.commit();
	  Serializable ids = session.getIdentifier(cat);
	  session.close();
	  return (Integer) ids;
	 }

	}   

