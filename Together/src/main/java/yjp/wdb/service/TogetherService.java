package yjp.wdb.service;

import java.util.List;

import yjp.wdb.domain.Date;
import yjp.wdb.domain.ElecData;

public interface TogetherService {
	public List<ElecData> getAllData() throws Exception;

	public Double getThisMonthSumData() throws Exception;
	
	public Double getThisDaySumData() throws Exception;
	
	public int getThisMonthStack() throws Exception;

	public List<ElecData> getRecent12H() throws Exception;
}
