package com.hieulm.model.DAO;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hieulm.model.BO.*;
import com.hieulm.model.util.HibernateUtil;

public class HedieuhanhDAO {
	// lay danh sach tat cac cac he dieu hanh
	public List<Hedieuhanh> listAllHedieuhanh(){
		Session session = null;
		Transaction tx = null;
		List<Hedieuhanh> hedieuhanhs;
		try{
			session = HibernateUtil.getSessionFactory().openSession();
			tx=session.beginTransaction();
			hedieuhanhs = session.createQuery("FROM Hedieuhanh").list();
			return hedieuhanhs;
		}catch(Exception ex){
			tx.rollback();
		    throw ex;
		}finally{
			session.getTransaction().commit();
			session.close();
		}
	}
	// them he dieu hanh
	public int addHedieuhanh(Hedieuhanh hedieuhanh){
		return 0;
	}
}
