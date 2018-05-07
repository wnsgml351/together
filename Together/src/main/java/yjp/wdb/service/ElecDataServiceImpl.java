package yjp.wdb.service;

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
	public List<ElecData> test(ElecData e) {
		return dao.test(e);
	}

	@Override
	public List<ElecData> dataDay() throws Exception {
		// TODO Auto-generated method stub
		return dao.dataDay();
	}

	@Override
	public List<List<ElecData>> ansim() throws Exception {
		// TODO Auto-generated method stub
		return dao.ansim();
	}

	@Override
	public List<List<ElecData>> ansimall() throws Exception {
		// TODO Auto-generated method stub
		return dao.ansimall();
	}

	@Override
	public List<ElecData> dataMonth() throws Exception {
		return dao.dataMonth();
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ElecData> ansimDayAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.ansimDayAll();
	}

	@Override
	public List<List<ElecData>> ansimdayLast() throws Exception {
		// TODO Auto-generated method stub
		return dao.ansimdayLast();
	}

	/*@Override
	public List<List<ElecData>> ansima() throws Exception {
		// TODO Auto-generated method stub
		return dao.ansima();
	}*/
	
	
	
	

}
