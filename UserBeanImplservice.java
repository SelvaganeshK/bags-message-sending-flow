package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UserBeanDAO;
import com.niit.model.UserBean;

@Service("userBeanService")
public class UserBeanImplservice implements UserBeanService {
    
	 @Autowired
	 UserBeanDAO userBeanDAO;

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(UserBean us) {
	  return userBeanDAO.insertRow(us);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return userBeanDAO.getList();
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public UserBean getRowById(int id) {
	  return userBeanDAO.getRowById(id);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(UserBean us) {
	  return userBeanDAO.updateRow(us);
	 }

	 @Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return userBeanDAO.deleteRow(id);
	 }
}