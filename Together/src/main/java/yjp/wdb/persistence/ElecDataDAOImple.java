package yjp.wdb.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjp.wdb.domain.ElecData;

@Repository
public class ElecDataDAOImple implements ElecDataDAO {

	@Inject
	private SqlSession session;
	private final static String NAMESPACE = "yjp.wdb.together.AnsimMapper";

	@Override
	public List<ElecData> ansim() throws Exception {
		return session.selectList(NAMESPACE + ".ansim");
	}

	@Override
	public List<HashMap<String, Object>> ansimTable() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(NAMESPACE+".tableAnsim");
	}

}
