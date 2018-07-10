package com.ssh.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ssh.dao.CategoryDao;
import com.ssh.domain.Category;

public class CategoryDaoImpl extends HibernateDaoSupport implements CategoryDao{
	public Category getCategoryById(int cid) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Category.class, cid);
	}
	public List<Category> findAllCategory() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Category");
	}
	public void addCategory(Category category) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(category);
	}
	public void deleteCategory(Category category) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(category);
	}
	public void updateCategory(Category category) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(category);
	}
	public List<Category> findCategoryByid(int cid) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from News where cid="+cid);
	}
}
