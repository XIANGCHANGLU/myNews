package com.ssh.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.domain.Category;
import com.ssh.service.CategoryService;

public class CategoryAction extends ActionSupport{
	
	private CategoryService categoryService;
	private String categoryname;//新闻类型名
	private int cid;//类型ID
	
	
	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
	public String getCategoryById(){
		Category category =this.categoryService.getCategoryById(cid);
		if (category!=null) {
			return SUCCESS;
		}else{
			return INPUT;
		}	
	}
	
	public String findAllCategory(){
		Map request = (Map)ActionContext.getContext().get("request");
		request.put("listcategory", this.categoryService.findAllCategory());		
		return SUCCESS;
	}
	
	public String addCategory(){
		Category category = new Category();
		category.setCategoryname(categoryname);
		this.categoryService.addCategory(category);
		return SUCCESS;
	}
	
	public String deleteCategory(){
		Category category = this.categoryService.getCategoryById(cid);
		
		this.categoryService.deleteCategory(category);
		return SUCCESS;
	}
	
	public String updateCategory(){
		Category category = new Category();
		category = this.categoryService.getCategoryById(cid);
		category.setCategoryname(categoryname);
		this.categoryService.updateCategory(category);
		return SUCCESS;
	}
	
	public String findCategoryid(){
		Map request = (Map)ActionContext.getContext().get("request");
		List<Category> listCategoryByid = this.categoryService.findCategoryByid(cid);
		if (listCategoryByid.size()>0) {
			request.put("listCategoryByid", listCategoryByid);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
}
