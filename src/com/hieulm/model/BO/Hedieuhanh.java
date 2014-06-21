package com.hieulm.model.BO;

import java.io.Serializable;

public class Hedieuhanh implements Serializable{
	private int mahedieuhanh;
	private String tenhedieuhanh;
	public int getMahedieuhanh() {
		return mahedieuhanh;
	}
	public void setMahedieuhanh(int mahedieuhanh) {
		this.mahedieuhanh = mahedieuhanh;
	}
	public String getTenhedieuhanh() {
		return tenhedieuhanh;
	}
	public void setTenhedieuhanh(String tenhedieuhanh) {
		this.tenhedieuhanh = tenhedieuhanh;
	}	
}
