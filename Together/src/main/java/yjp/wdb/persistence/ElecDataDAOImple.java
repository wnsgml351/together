package yjp.wdb.persistence;

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

}
