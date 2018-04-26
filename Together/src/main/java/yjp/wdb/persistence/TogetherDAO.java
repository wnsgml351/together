package yjp.wdb.persistence;

import java.util.List;

import yjp.wdb.domain.ElecData;

public interface TogetherDAO {
	public List<ElecData> getAllData() throws Exception;
}
