package com.ssh.service.impl;

import java.util.List;

import com.ssh.dao.CategoryDao;
import com.ssh.domain.Category;
import com.ssh.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {
	private CategoryDao categoryDao;
	public CategoryDao getCategoryDao() {
		return categoryDao;
	}
	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}
	public Category getCategoryById(int cid) {
		// TODO Auto-generated method stub
		return categoryDao.getCategoryById(cid);
	}
	public List<Category> findAllCategory(){
		return categoryDao.findAllCategory();
	}
	public void addCategory(Category category) {
		// TODO Auto-generated method stub
		this.categoryDao.addCategory(category);
	}
	public void deleteCategory(Category category) {
		// TODO Auto-generated method stub
		this.categoryDao.deleteCategory(category);
	}
	public void updateCategory(Category category) {
		// TODO Auto-generated method stub
		this.categoryDao.updateCategory(category);
	}
	public List<Category> findCategoryByid(int cid){
		return this.categoryDao.findCategoryByid(cid);
	}
}
