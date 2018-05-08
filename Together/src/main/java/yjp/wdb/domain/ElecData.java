package yjp.wdb.domain;

import java.sql.Timestamp;

public class ElecData {
	private String title;
	private int watt;
	private Timestamp reg_date;
	private String reg_string_date;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getWatt() {
		return watt;
	}

	public void setWatt(int watt) {
		this.watt = watt;
	}

	public Timestamp getReg_date() {
		return reg_date;
	}

	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}

	public String getReg_string_date() {
		return reg_string_date;
	}

	public void setReg_string_date(String reg_string_date) {
		this.reg_string_date = reg_string_date;
	}

}
