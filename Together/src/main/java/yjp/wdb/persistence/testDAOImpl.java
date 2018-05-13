package yjp.wdb.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjp.wdb.domain.Date;

@Repository
public class testDAOImpl implements testDAO {

	@Inject
	private SqlSession session;

	private final static String NAMESPACE = "yjp.wdb.together.sqlMapper";

	@Override
	public void test(Date d) throws Exception {
		Double result = session.selectOne(NAMESPACE + ".test", d);
		// System.out.println(result+"kWh");
	}

}
