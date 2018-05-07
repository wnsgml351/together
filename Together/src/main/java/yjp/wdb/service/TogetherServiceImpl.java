package yjp.wdb.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjp.wdb.domain.Date;
import yjp.wdb.domain.ElecData;
import yjp.wdb.persistence.TogetherDAO;

@Service
public class TogetherServiceImpl implements TogetherService {

	@Inject
	private TogetherDAO dao;

	@Override
	public List<ElecData> getAllData() throws Exception {
		return dao.getAllData();
	}

	@Override
	public Double getThisMonthSumData(Date d) throws Exception {
		return dao.getThisMonthSumData(d);
	}

	@Override
	public List<ElecData> getRecent12H() throws Exception {
		return dao.getRecent12H();
	}
}