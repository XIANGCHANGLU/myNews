package com.ssh.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.ssh.domain.Category;
import com.ssh.domain.News;
import com.ssh.domain.User;
import com.ssh.service.CategoryService;
import com.ssh.service.NewsService;

public class NewsAction extends ActionSupport{
	private NewsService newsService;
	private CategoryService categoryService;
	private String head;//头部
	private String content;//新闻内容
	private User user;//用户
	private String title;//新闻标题
	private int cid;//类型ID
	private int nid;//新闻ID
	public CategoryService getCategoryService() {
		return categoryService;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	

	public NewsService getNewsService() {
		return newsService;
	}

	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	
	
	
	public String findByUserid(){
		Map session = ActionContext.getContext().getSession();
		Object o = session.get("listuser");
		List<User> listUser =(List<User>)o;
		User user = new User();
		user = listUser.get(0);
		List<News> list= new ArrayList<News>();
		List<News> list_news_byuid = new ArrayList<News>();
		List<Object[]> listNews = this.newsService.findByuid(user.getUid());
		for (int i = 0; i < listNews.size(); i++) {
			Object[] obj = listNews.get(i);
			list.add((News)obj[0]);
		}
		for (News news : list) {
			if (news.getUser()!=null) {
				list_news_byuid.add(news);
			}
		}
		if (list_news_byuid.size()>0) {
			session.put("list_news_byuid", list_news_byuid);
			return SUCCESS;
		}else{
			return INPUT;
		}	
	}
	
	public String addNews(){
		News news = new News();
		SimpleDateFormat format= new SimpleDateFormat("MMDDHHmmss");
		Date date = new Date();	
		news.setPublish_time(date);
		news.setHead(head);
		news.setContent(content);
		
		Map session = ActionContext.getContext().getSession();
		Object o = session.get("listuser");
		List<User> listUser =(List<User>)o;
			
		Category category = new Category();
		category = this.categoryService.getCategoryById(cid);
		System.out.println(category);
		news.setCategory(category);
			
		User user = new User();
		user =  listUser.get(0);
		news.setUser(user);
		this.newsService.addNews(news);
		return SUCCESS;

	}
	
	public String findAllNews(){
		Map session =ActionContext.getContext().getSession();
		List<News> listNews = this.newsService.findAllNews();
		if (listNews.size()>0) {
			session.put("listNews", listNews);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public String findByid(){
		Map session =ActionContext.getContext().getSession();
		List<News> list = this.newsService.findByid(nid);
		if (list.size()>0) {
			session.put("NewsByid", list);
			return SUCCESS;
		}else{
			return INPUT;
		}
		
	}
	
	public String deleteNews(){
		List<News> list = this.newsService.findByid(nid);
		News news = list.get(0);
		this.newsService.deleteNews(news);
		return SUCCESS;
	}
	
	public String findNewsByHead(){
		List<News> listNewsByTitle = this.newsService.findNewsByHead(head);
		Map session =ActionContext.getContext().getSession();
		if (listNewsByTitle.size()>0) {
			session.put("listNewsByTitle", listNewsByTitle);
			return SUCCESS;
		}else{
			return INPUT;
		}
		
	}
	
	public String findNewsByCid(){
		List<News> listNewsBycid = this.newsService.findByid(cid);
		Map session =ActionContext.getContext().getSession();
		if (listNewsBycid.size()>0) {
			session.put("listNewsBycid", listNewsBycid);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	public String updateNews(){
		List<News> news = this.newsService.findByid(nid);
		
		SimpleDateFormat format= new SimpleDateFormat("MMDDHHmmss");
		Date date = new Date();	
			
		News updateNews = news.get(0);
		updateNews.setHead(head);
		updateNews.setPublish_time(date);
		updateNews.setContent(content);
		
		Category category = new Category();
		category = this.categoryService.getCategoryById(cid);
		System.out.println(category);
		updateNews.setCategory(category);
		
		this.newsService.updateNews(updateNews);
		return SUCCESS;
		
	}
	
	//
	public String find(){
		List<News> listNewsByTitle = this.newsService.findNewsByHead(head);
		Map session =ActionContext.getContext().getSession();
		if (listNewsByTitle.size()>0) {
			session.put("listNewsByHead", listNewsByTitle);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	//
	public String find_category(){
		List<News> listNewsBycid = this.newsService.findByid(cid);
		Map session =ActionContext.getContext().getSession();
		if (listNewsBycid.size()>0) {
			session.put("listNewsBycategorycid", listNewsBycid);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	
	//
	public String findByid_index(){
		Map session =ActionContext.getContext().getSession();
		List<News> list = this.newsService.findByid(nid);
		if (list.size()>0) {
			session.put("NewsByid_index", list);
			return SUCCESS;
		}else{
			return INPUT;
		}
		
	}
}
