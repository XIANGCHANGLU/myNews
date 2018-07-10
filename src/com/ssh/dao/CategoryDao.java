package com.ssh.dao;

import java.util.List;

import com.ssh.domain.Category;

public interface CategoryDao {
	public Category getCategoryById(int cid);
	public List<Category> findAllCategory();
	//�������
	public void addCategory(Category category);
	//ɾ������
	public void deleteCategory(Category category);
	//��������
	public void updateCategory(Category category);
	public List<Category> findCategoryByid(int cid);
}
