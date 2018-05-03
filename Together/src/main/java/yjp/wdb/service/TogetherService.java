package yjp.wdb.service;

import java.util.List;

import yjp.wdb.domain.Date;
import yjp.wdb.domain.ElecData;

public interface TogetherService {
	public List<ElecData> getAllData() throws Exception;

	public Double getThisMonthSumData(Date d) throws Exception;
}
