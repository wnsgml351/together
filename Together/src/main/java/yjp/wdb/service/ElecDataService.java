package yjp.wdb.service;

import java.util.List;

import yjp.wdb.domain.ElecData;

public interface ElecDataService {
	public List<ElecData> test(ElecData e);
	public List<ElecData> dataDay() throws Exception;
	public List<List<ElecData>> ansim() throws Exception;
	public List<List<ElecData>> ansimall() throws Exception;/*
	public List<List<ElecData>> ansima() throws Exception;*/
	public List<ElecData> dataMonth() throws Exception;
	public List<ElecData> ansimDayAll() throws Exception;
	public List<List<ElecData>> ansimdayLast() throws Exception;
}