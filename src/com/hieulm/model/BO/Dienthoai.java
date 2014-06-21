package com.hieulm.model.BO;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;
import com.google.gson.*;

public class Dienthoai implements Serializable, Product{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5890111139092157818L;
	private int madienthoai;
	private String tendienthoai;
	private Hinhanh hinhdaidien;
	private Hangsx hangsx;
	private Hedieuhanh hedieuhanh;
	private int soluong;
	private int gia;
	private String mausac;
	private String thongtinthem;
	private Set<Hinhanh> hinhanhsp;
	private Boolean hienthi;
	private Date ngaythemvao;
	private String chitiet;
	
	public String getChitiet() {
		return chitiet;
	}
	public void setChitiet(String chitiet) {
		this.chitiet = chitiet;
	}
	public Boolean getHienthi() {
		return hienthi;
	}
	public void setHienthi(Boolean hienthi) {
		this.hienthi = hienthi;
	}
	public Date getNgaythemvao() {
		return ngaythemvao;
	}
	public void setNgaythemvao(Date ngaythemvao) {
		this.ngaythemvao = ngaythemvao;
	}
	public int getMadienthoai() {
		return madienthoai;
	}
	public void setMadienthoai(int madienthoai) {
		this.madienthoai = madienthoai;
	}
	public String getTendienthoai() {
		return tendienthoai;
	}
	public void setTendienthoai(String tendienthoai) {
		this.tendienthoai = tendienthoai;
	}
	public Hinhanh getHinhdaidien() {
		return hinhdaidien;
	}
	public void setHinhdaidien(Hinhanh hinhdaidien) {
		this.hinhdaidien = hinhdaidien;
	}
	public Hangsx getHangsx() {
		return hangsx;
	}
	public void setHangsx(Hangsx hangsx) {
		this.hangsx = hangsx;
	}
	public Hedieuhanh getHedieuhanh() {
		return hedieuhanh;
	}
	public void setHedieuhanh(Hedieuhanh hedieuhanh) {
		this.hedieuhanh = hedieuhanh;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getMausac() {
		return mausac;
	}
	public void setMausac(String mausac) {
		this.mausac = mausac;
	}
	public String getThongtinthem() {
		return thongtinthem;
	}
	public void setThongtinthem(String thongtinthem) {
		this.thongtinthem = thongtinthem;
	}
	public Set<Hinhanh> getHinhanhsp() {
		return hinhanhsp;
	}
	public void setHinhanhsp(Set<Hinhanh> hinhanhsp) {
		this.hinhanhsp = hinhanhsp;
	}
	@Override
	public boolean isEqual(Product product) {
		// TODO Auto-generated method stub
		Dienthoai dt = (Dienthoai) product;
		if(madienthoai == dt.getMadienthoai())
			return true;
		return false;
	}
	
	
}
