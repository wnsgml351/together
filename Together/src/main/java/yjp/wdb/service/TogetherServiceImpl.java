package yjp.wdb.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.domain.ElecData;
import yjc.wdb.persistence.TogetherDAO;

@Service
public class TogetherServiceImpl implements TogetherService {

	@Inject
	private TogetherDAO dao;

	@Override
	public List<ElecData> getAllData() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
