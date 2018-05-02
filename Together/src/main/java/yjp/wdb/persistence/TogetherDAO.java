package yjp.wdb.persistence;

import java.util.List;

import yjp.wdb.domain.Date;
import yjp.wdb.domain.ElecData;

public interface TogetherDAO {
	public List<ElecData> getAllData() throws Exception;
	
	public void insertData(ElecData e) throws Exception;
	
	public Double getThisMonthSumData(Date d) throws Exception;
}
