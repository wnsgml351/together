package yjp.wdb.persistence;

import java.util.List;

import yjp.wdb.domain.ElecData;

public interface ElecDataDAO {
	public List<ElecData> ansim() throws Exception;
}
