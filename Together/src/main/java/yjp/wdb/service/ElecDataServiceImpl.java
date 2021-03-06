package yjp.wdb.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjp.wdb.persistence.ElecDataDAO;
import yjp.wdb.domain.ElecData;

@Service
public class ElecDataServiceImpl implements ElecDataService {

	@Inject
	private ElecDataDAO dao;

	@Override
	public List<ElecData> ansim() throws Exception {
		return dao.ansim();
	}

	@Override
	public List<HashMap<String, Object>> ansimTable() throws Exception {
		// TODO Auto-generated method stub
		return dao.ansimTable();
	}

}
