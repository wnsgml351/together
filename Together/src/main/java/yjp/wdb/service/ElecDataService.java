package yjp.wdb.service;

import java.util.HashMap;
import java.util.List;

import yjp.wdb.domain.ElecData;

public interface ElecDataService {

	public List<ElecData> ansim() throws Exception;
	public List<HashMap<String, Object>> ansimTable() throws Exception;
}