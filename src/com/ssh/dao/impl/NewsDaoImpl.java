package com.ssh.dao.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ssh.dao.NewsDao;
import com.ssh.domain.News;

public class NewsDaoImpl extends HibernateDaoSupport implements NewsDao {

	public List<Object[]> findByuid(int uid) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from News n,User u where u.uid="+uid);
	}
	public List<News> findByid(int id){
		return this.getHibernateTemplate().find("from News where nid="+id);
	}
	public void addNews(News news) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(news);
	}
	public List<News> findAllNews() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from News");
	}
	public void deleteNews(News news) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(news);
	}
	public List<News> findNewsByHead(String head) { 
	        List<News> newsByHead = this.getHibernateTemplate().find("from News n where n.head like '%"+head+"%'");
	        System.out.println(head);
	        return newsByHead;
	}
	public List<News> findNewsByTame(Date time) {
		// TODO Auto-generated method stub
		return null;
	}
	 public void updateNews(News news){
		 this.getHibernateTemplate().update(news);
	 }
}
