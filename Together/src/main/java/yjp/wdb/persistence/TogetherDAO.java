package yjp.wdb.persistence;

import java.util.List;

import yjp.wdb.domain.ElecData;

public interface TogetherDAO {
	public List<ElecData> getAllData() throws Exception;

	public void insertData(ElecData e) throws Exception;

	public Double getThisMonthSumData() throws Exception;

	public Double getThisDaySumData() throws Exception;

	public int getThisMonthStack() throws Exception;

	public List<ElecData> getRecent12H() throws Exception;
}
