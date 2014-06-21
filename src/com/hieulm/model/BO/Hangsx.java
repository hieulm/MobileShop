package com.hieulm.model.BO;

import java.io.Serializable;

public class Hangsx implements Serializable{
	private int mahangsx;
	private String tenhangsx;
	private Hinhanh hinhdaidien;
	public int getMahangsx() {
		return mahangsx;
	}
	public void setMahangsx(int mahangsx) {
		this.mahangsx = mahangsx;
	}
	public String getTenhangsx() {
		return tenhangsx;
	}
	public void setTenhangsx(String tenhangsx) {
		this.tenhangsx = tenhangsx;
	}
	public Hinhanh getHinhdaidien() {
		return hinhdaidien;
	}
	public void setHinhdaidien(Hinhanh hinhdaidien) {
		this.hinhdaidien = hinhdaidien;
	}	
}
