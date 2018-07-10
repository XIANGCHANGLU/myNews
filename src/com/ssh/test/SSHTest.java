package com.ssh.test;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ssh.dao.CategoryDao;
import com.ssh.dao.NewsDao;
import com.ssh.domain.Category;
import com.ssh.domain.News;

public class SSHTest {
	
	@Test
	public void demo1(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("config/applicationContext.xml");
		NewsDao newsDao = (NewsDao)ctx.getBean("newsDao");
		List<Object[]> listNew = newsDao.findByuid(1);
		
		List<News> list =new ArrayList<News>();
		for (int i = 0; i < listNew.size(); i++) {
			Object[] obs = listNew.get(i);
			System.out.println(((News)obs[0]).getNid());
			list.add((News)obs[0]);
		}
		
		for (News news : list) {
			System.out.println(news.getNid());
			if (news.getUser()!=null) {
				System.out.println(news.getUser().getUid());
			}
		}
		
 	}
	
	@Test
	public void demo2(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("config/applicationContext.xml");
		NewsDao newsDao = (NewsDao) ctx.getBean("newsDao"); 
		List<News> jhgjhgjhg= newsDao.findNewsByHead("e");
		System.out.println(jhgjhgjhg.toString());
		if (jhgjhgjhg!=null) {
			for (News news : jhgjhgjhg) {
				System.out.println(news.getContent());
			}
		}
	}
}
