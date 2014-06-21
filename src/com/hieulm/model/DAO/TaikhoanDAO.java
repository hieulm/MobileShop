package com.hieulm.model.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hieulm.model.BO.*;
import com.hieulm.model.util.HibernateUtil;

public class TaikhoanDAO {

	public Taikhoan getTaikhoanByTentaikhoan(String tentaikhoan) {
		Session session = null;
		Transaction tx = null;
		List<Taikhoan> taikhoans;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			tx = session.beginTransaction();
			taikhoans = session
					.createQuery(
							"From Taikhoan taikhoan where taikhoan.tentaikhoan = :tentaikhoan")
					.setParameter("tentaikhoan", tentaikhoan).list();
			return taikhoans.get(0);
		} catch (Exception ex) {
			tx.rollback();
			throw ex;
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}

	public Taikhoan getTaikhoanByEmail(String email) {
		Session session = null;
		Transaction tx = null;
		List<Taikhoan> taikhoans;
		Taikhoan taikhoan = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			tx = session.beginTransaction();
			taikhoans = session
					.createQuery(
							"From Taikhoan taikhoan where taikhoan.email = :email")
					.setParameter("email", email).list();
			if (taikhoans.isEmpty())
				return null;
			else
				return taikhoans.get(0);
		} catch (Exception ex) {
			tx.rollback();
			return null;
		} finally {
			session.getTransaction().commit();
			session.close();
		}

	}

	public int addTaikhoan(Taikhoan taikhoan){
		Session session = null;
		Transaction tx = null;
		System.out.println("inside addTaikhoan Function");
		int r = 1;
		session = HibernateUtil.getSessionFactory().openSession();
		try {
			tx = session.beginTransaction();
			session.save(taikhoan);
			tx.commit();
		} catch (Exception ex) {
			System.out.println(ex);
			tx.rollback();
			r = -1;
		} finally {
			session.close();
		}
		return r;
	}

	public int modifyTaikhoan(String tentaikhoan, Taikhoan dummy) {

		Taikhoan taikhoan = getTaikhoanByTentaikhoan(tentaikhoan);
		taikhoan = dummy;
		Session session = null;
		Transaction tx = null;
		int r = 1;
		session = HibernateUtil.getSessionFactory().openSession();
		try {
			tx = session.beginTransaction();
			session.update(taikhoan);
			tx.commit();
		} catch (Exception ex) {
			tx.rollback();
			r = -1;
		} finally {
			session.close();
		}

		return r;
	}
	
	public List<Taikhoan> getAllTaikhoan(){
		Session session = null;
		Transaction tx = null;
		try{
			session = HibernateUtil.getSessionFactory().openSession();
			tx=session.beginTransaction();
			List<Taikhoan> taikhoans = session.createQuery("FROM Taikhoan").list();
			return taikhoans;
		}catch(Exception ex){
			tx.rollback();
		    throw ex;
		}finally{
			session.getTransaction().commit();
			session.close();
		}
	}
	
	public int removeTaikhoanByTentaikhoan(String tentaikhoan){
		Taikhoan taikhoan = new Taikhoan();
		taikhoan = getTaikhoanByTentaikhoan(tentaikhoan);
		Session session = null;
		Transaction tx = null;
		try{
			session = HibernateUtil.getSessionFactory().openSession();
			tx=session.beginTransaction();
			session.delete(taikhoan);
			return 1;
		}catch(Exception ex){
			tx.rollback();
		    throw ex;
		}finally{
			session.getTransaction().commit();
			session.close();
		}
	}
}
