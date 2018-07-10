package com.ssh.dao;

import java.util.List;
import java.util.Date;
import com.ssh.domain.Category;
import com.ssh.domain.News;

public interface NewsDao {
	
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
	//通过标题模糊查询新闻
	public List<News> findNewsByHead(String head);
	//通过时间查询新闻
	public List<News> findNewsByTame(Date time);
	//更新新闻
	public void updateNews(News news);
}