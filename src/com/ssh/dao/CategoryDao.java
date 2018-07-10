package com.ssh.dao;

import java.util.List;

import com.ssh.domain.Category;

public interface CategoryDao {
	public Category getCategoryById(int cid);
	public List<Category> findAllCategory();
	//添加类型
	public void addCategory(Category category);
	//删除类型
	public void deleteCategory(Category category);
	//更新类型
	public void updateCategory(Category category);
	public List<Category> findCategoryByid(int cid);
}
