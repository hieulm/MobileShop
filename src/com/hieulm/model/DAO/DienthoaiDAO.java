package com.hieulm.model.DAO;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hieulm.model.BO.*;
import com.hieulm.model.util.HibernateUtil;

public class DienthoaiDAO {
	// lay danh sach tat cac cac dienthoai theo hangsx
	public List<Dienthoai> getAllDienthoai() {
		Session session = null;
		Transaction tx = null;
		List<Dienthoai> dienthoais;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			tx = session.beginTransaction();
			dienthoais = session.createQuery("FROM Dienthoai").list();
			session.getTransaction().commit();
			return dienthoais;
		} catch (Exception ex) {
			tx.rollback();
			throw ex;
		} finally {

			session.close();
		}
	}

	// lay danh sach cac san pham moi them vao
	public List<Dienthoai> getNewDienthoai(int sl) {
		int n = sl;
		return null;
	}

	// lay thong tin ve dienthoai theo id
	public Dienthoai getDienthoaiById(int id) {
		Session session = null;
		Transaction tx = null;
		List<Dienthoai> dienthoais;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			tx = session.beginTransaction();
			dienthoais = session
					.createQuery(
							"FROM Dienthoai dienthoai where dienthoai.madienthoai = :id")
					.setParameter("id", id).list();
			return dienthoais.get(0);
		} catch (Exception ex) {
			tx.rollback();
			throw ex;
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}

	// thay doi thong tin dienthoai
	public int modifyDienthoaiById(int id, Dienthoai another) {
		return 0;
	}

	public List<Dienthoai> getDienthoaiByHangsx(int hangsxId) {
		Session session = null;
		Transaction tx = null;
		List<Dienthoai> dienthoai;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			tx = session.beginTransaction();
			// List<Hangsx> hangsxs =
			// session.createQuery("From Hangsx hangsx where hangsx.mahangsx = 1").list();
			// Hangsx hangsx = hangsxs.get(0);
			dienthoai = session
					.createQuery(
							"FROM Dienthoai dienthoai where dienthoai.hangsx.mahangsx = :brandId")
					.setParameter("brandId", hangsxId).list();
			return dienthoai;
		} catch (Exception ex) {
			tx.rollback();
			throw ex;
		} finally {
			session.getTransaction().commit();
			session.close();
		}
	}

	public List<Dienthoai> getDienthoaiByHedieuhanh(int mahdh) {
		Session session = null;
		Transaction tx = null;
		List<Dienthoai> dienthoai;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			tx = session.beginTransaction();
			// List<Hangsx> hangsxs =
			// session.createQuery("From Hangsx hangsx where hangsx.mahangsx = 1").list();
			// Hangsx hangsx = hangsxs.get(0);
			dienthoai = session
					.createQuery(
							"FROM Dienthoai dienthoai where dienthoai.hedieuhanh.mahedieuhanh = :osId")
					.setParameter("osId", mahdh).list();
			session.getTransaction().commit();
			return dienthoai;
		} catch (Exception ex) {
			tx.rollback();
			throw ex;
		} finally {
			session.close();
		}
	}

	public List<Dienthoai> getDienthoaiByPriceRange(int minPrice, int maxPrice) {
		Session session = null;
		Transaction tx = null;
		List<Dienthoai> dienthoai;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			tx = session.beginTransaction();
			if (maxPrice == 0) {
				System.out.println("inside DienthoaiDao, maxPrice == "
						+ maxPrice);
				dienthoai = session
						.createQuery(
								"FROM Dienthoai dienthoai where dienthoai.gia >= :minPrice")
						.setParameter("minPrice", minPrice).list();
			}
			else{
				dienthoai = session
						.createQuery(
								"FROM Dienthoai dienthoai where dienthoai.gia >= :minPrice and dienthoai.gia <= :maxPrice")
						.setParameter("minPrice", minPrice)
						.setParameter("maxPrice", maxPrice).list();
			}

			
			session.getTransaction().commit();
			return dienthoai;
		} catch (Exception ex) {
			tx.rollback();
			throw ex;
		} finally {
			session.close();
		}
	}
}
