package com.hieulm.model.DAO;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hieulm.model.BO.*;
import com.hieulm.model.util.HibernateUtil;

public class HangsxDAO {
	
	// lay danh sach tat cac cac hang dien thoai
	Session session;
	Transaction tx;
	public List<Hangsx> listAllHangsx(){		
		try{
			session = HibernateUtil.getSessionFactory().openSession();
			tx=session.beginTransaction();
			List<Hangsx> hangsxs = session.createQuery("FROM Hangsx").list();
			return hangsxs;
		}catch(Exception ex){
			tx.rollback();
		    throw ex;
		}finally{
			session.getTransaction().commit();
			session.close();
		}
	}
	// them mot hangsx vao db
	public int addHangsx(Hangsx hangsx){
		try{
			session = HibernateUtil.getSessionFactory().getCurrentSession();
			tx=session.beginTransaction();
			session.save(hangsx);
			return 0;
		}catch(Exception ex){
			tx.rollback();
		    throw ex;
		}finally{
			session.getTransaction().commit();
			session.close();
		}
	}
	
	public Hangsx getHangsxByName(String name){
		try{
			List<Hangsx> hangsxs;
			session = HibernateUtil.getSessionFactory().getCurrentSession();
			tx=session.beginTransaction();
			hangsxs = session.createQuery("From Hangsx hangsx where hangsx.tenahangsx = :name")
					.setParameter("name", name).list();
			session.getTransaction().commit();
			if(hangsxs.isEmpty()) 
				return null;
			else 
				return hangsxs.get(0);
		}catch(Exception ex){
			tx.rollback();
		    throw ex;
		}finally{
			
			session.close();
		}
	}
}
