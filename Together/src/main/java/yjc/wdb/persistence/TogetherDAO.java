package yjc.wdb.persistence;

import java.util.List;

import yjc.wdb.domain.ElecData;

public interface TogetherDAO {
	public List<ElecData> getAllData() throws Exception;
}
