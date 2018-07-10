package com.ssh.service;

import java.util.List;

import com.ssh.domain.News;
import com.ssh.domain.User;


public interface NewsService {
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
	//ͨ�������ѯ����
	public List<News> findNewsByHead(String title);
	//��������
	public void updateNews(News news);
}

