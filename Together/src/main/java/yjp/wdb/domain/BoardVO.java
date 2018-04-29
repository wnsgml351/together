package yjp.wdb.domain;

import java.sql.Timestamp;

public class BoardVO {
	private int bno;
	private String title;
	private String writer;
	private String content;
	private int viewcnt;
	private Timestamp regdate;

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setReg_date(Timestamp regdate) {
		this.regdate = regdate;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
}
