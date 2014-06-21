package com.hieulm.util;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hieulm.model.BO.Dienthoai;
import com.hieulm.model.BO.Hangsx;
import com.hieulm.model.BO.Hedieuhanh;
import com.hieulm.model.DAO.HangsxDAO;
import com.hieulm.model.DAO.HedieuhanhDAO;
import com.hieulm.model.util.HibernateUtil;

public class Category {
	
	private static Category instance = null;
	
	protected Category(){
		
	}
	
	public static Category getInstance(){
		if(instance == null) instance = new Category();
		return instance;
	}
	public static List<Hangsx> getHangDienthoai(){
		HangsxDAO dao = new HangsxDAO();
		List<Hangsx> hangsxs = dao.listAllHangsx();
		return hangsxs;
	}
	public static List<Hedieuhanh> getHedieuhanh(){
		HedieuhanhDAO dao = new HedieuhanhDAO();
		List<Hedieuhanh> hedieuhanhs = dao.listAllHedieuhanh();
		return hedieuhanhs;
	}
	
	
	
}
