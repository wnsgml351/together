package yjp.wdb.persistence;

import java.util.HashMap;
import java.util.List;

import yjp.wdb.domain.ElecData;

public interface ElecDataDAO {
	public List<ElecData> ansim() throws Exception;
	public List<HashMap<String, Object>> ansimTable() throws Exception;
}
