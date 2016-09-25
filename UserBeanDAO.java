package com.niit.dao;

import java.util.List;

import com.niit.model.UserBean;





public interface UserBeanDAO {
 public int insertRow(UserBean us);

 public List getList();

 public UserBean getRowById(int id);

 public int updateRow(UserBean us);

 public int deleteRow(int id);

}