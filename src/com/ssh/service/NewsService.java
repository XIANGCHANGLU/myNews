package com.ssh.service;

import java.util.List;

import com.ssh.domain.News;
import com.ssh.domain.User;


public interface NewsService {
	//通过id查看用户文章
	public List<Object[]> findByuid(int uid);
	//通过id查看管理员文章
	public List<News> findByid(int id);
	//发布新闻
	public void addNews(News news);
	//所有新闻
	public List<News> findAllNews();
	//删除新闻
	public void deleteNews(News news);
	//通过标题查询新闻
	public List<News> findNewsByHead(String title);
	//更新新闻
	public void updateNews(News news);
}

