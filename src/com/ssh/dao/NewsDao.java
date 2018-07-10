package com.ssh.dao;

import java.util.List;
import java.util.Date;
import com.ssh.domain.Category;
import com.ssh.domain.News;

public interface NewsDao {
	
	//ͨ��id�鿴�û�����
	public List<Object[]> findByuid(int uid);
	//ͨ��id�鿴����Ա����
	public List<News> findByid(int id);
	//��������
	public void addNews(News news);
	//��������
	public List<News> findAllNews();
	//ɾ������
	public void deleteNews(News news);
	//ͨ������ģ����ѯ����
	public List<News> findNewsByHead(String head);
	//ͨ��ʱ���ѯ����
	public List<News> findNewsByTame(Date time);
	//��������
	public void updateNews(News news);
}