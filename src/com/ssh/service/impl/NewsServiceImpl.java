package com.ssh.service.impl;

import java.util.List;

import com.ssh.dao.NewsDao;
import com.ssh.domain.News;
import com.ssh.service.NewsService;

public class NewsServiceImpl implements NewsService {
	private NewsDao newsDao;
	public NewsDao getNewsDao() {
		return newsDao;
	}
	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}
	public List<Object[]> findByuid(int uid){
		return this.newsDao.findByuid(uid);	
	}	
	public List<News> findByid(int id){
		return this.newsDao.findByid(id);
	}
	//发布新闻
	public void addNews(News news) {
		// TODO Auto-generated method stub
		this.newsDao.addNews(news);
	}
	public List<News> findAllNews(){
		return this.newsDao.findAllNews();
	}
	//删除新闻
	public void deleteNews(News news) {
		// TODO Auto-generated method stub
		this.newsDao.deleteNews(news);
	}
	public List<News> findNewsByHead(String title){
		return this.newsDao.findNewsByHead(title);
	}
	//更新新闻
	public void updateNews(News news){
		this.newsDao.updateNews(news);
	}
	
}
