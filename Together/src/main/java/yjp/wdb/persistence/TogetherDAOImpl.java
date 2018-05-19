package yjp.wdb.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
		System.out.println(e.getWatt());
		session.insert(NAMESPACE + ".insertData", e);
	}

	@Override
	public Double getThisMonthSumData() throws Exception {
		return session.selectOne(NAMESPACE + ".getThisMonthSumData");
	}

	@Override
	public Double getThisDaySumData() {
		return session.selectOne(NAMESPACE + ".getThisDaySumData");
	}

	public List<ElecData> getRecent12H() throws Exception {
		return session.selectList(NAMESPACE + ".getRecent12H");
	}

	@Override
	public int getThisMonthStack() throws Exception {
		Double d = getThisMonthSumData() * 1000;
		int result = 0;

		if (d <= 200000) {
			result = 1;
		} else if (d > 200000 && d <= 400000) {
			result = 2;
		} else if (d > 400000) {
			result = 3;
		}

		return result;
	}

}
