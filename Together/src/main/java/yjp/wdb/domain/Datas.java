package yjp.wdb.domain;

import java.sql.Timestamp;

public class Datas {
	private int data_no;

	private int plug_no;

	private Timestamp time;

	private int ampere;

	private int watt;

	private int total_usage;

	

	public int getData_no() {

		return data_no;

	}

	public void setData_no(int data_no) {

		this.data_no = data_no;

	}

	public int getPlug_no() {

		return plug_no;

	}

	public void setPlug_no(int plug_no) {

		this.plug_no = plug_no;

	}

	public Timestamp getTime() {

		return time;

	}

	public void setTime(Timestamp time) {

		this.time = time;

	}

	public int getAmpere() {

		return ampere;

	}

	public void setAmpere(int ampere) {

		this.ampere = ampere;

	}

	public int getWatt() {

		return watt;

	}

	public void setWatt(int watt) {

		this.watt = watt;

	}

	public int getTotal_usage() {

		return total_usage;

	}

	public void setTotal_usage(int total_usage) {

		this.total_usage = total_usage;

	}
}
