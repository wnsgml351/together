package yjp.wdb.domain;

public class Groups {
	private String id;
	private int selectType;

	public int getSelectType() {
		return selectType;
	}

	public void setSelectType(int selectType) {
		this.selectType = selectType;
	}

	private int total;
	private int today;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getToday() {
		return today;
	}

	public void setToday(int today) {
		this.today = today;
	}

}
