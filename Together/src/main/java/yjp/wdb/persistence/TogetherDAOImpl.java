package yjp.wdb.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjp.wdb.domain.Date;
import yjp.wdb.domain.ElecData;

@Repository
public class TogetherDAOImpl implements TogetherDAO {

	@Inject
	private SqlSession session;

	private final static String NAMESPACE = "yjp.wdb.together.sqlMapper";

	@Override
	public List<ElecData> getAllData() throws Exception {
		return session.selectList(NAMESPACE + ".getAllData");
	}

	@Override
	public void insertData(ElecData e) throws Exception {
		session.insert(NAMESPACE + ".insertData", e);
	}

	@Override
	public Double getThisMonthSumData(Date d) throws Exception {
		Double dou = session.selectOne(NAMESPACE + ".getThisMonthSumData", d);
		if (dou == null) {
			dou = 0.0;
		}
		System.out.println(dou);
		return session.selectOne(NAMESPACE + ".getThisMonthSumData", d);
	}

}
