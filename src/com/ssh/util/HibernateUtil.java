package com.ssh.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static final Configuration configuration;
	private static final SessionFactory sessionFactory;
	
	static {
		configuration = new Configuration().configure();
		sessionFactory = configuration.buildSessionFactory();
	}

	public static Session openSession(){
		return sessionFactory.openSession();
	}
	
	public static Session getCurrentSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public static void main(String[] args) {
		openSession();
	}
}
