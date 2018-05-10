package yjp.wdb.persistence;

import java.util.Calendar;
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
		System.out.println(e.getWatt());
		session.insert(NAMESPACE + ".insertData", e);
	}

	@Override
	public Double getThisMonthSumData() throws Exception {

		Calendar c = Calendar.getInstance();

		Date date = new yjp.wdb.domain.Date();

		String start = Integer.toString(c.get(Calendar.YEAR)) + "-" + Integer.toString(c.get(Calendar.MONTH) + 1) + "-1";
		String end = Integer.toString(c.get(Calendar.YEAR)) + "-" + Integer.toString(c.get(Calendar.MONTH) + 1) + "-31";

		date.setStartDate(start);
		date.setEndDate(end);

		Double result = session.selectOne(NAMESPACE + ".getThisMonthSumData", date);
		if (result == null) {
			result = 0.0;
		}
		return result;
	}

	@Override
	public Double getThisDaySumData() {
		Date date = new Date();
		Calendar c = Calendar.getInstance();

		date.setStartDate(c.get(Calendar.YEAR) + "-" + (c.get(Calendar.MONTH) + 1) + "-" + c.get(Calendar.DAY_OF_MONTH) + " 00:00:00");
		date.setEndDate(c.get(Calendar.YEAR) + "-" + (c.get(Calendar.MONTH) + 1) + "-" + (c.get(Calendar.DAY_OF_MONTH) + 1) + " 00:00:00");

		System.out.println(date.getStartDate() + " - " + date.getEndDate());

		Double d = session.selectOne(NAMESPACE + ".getThisDaySumData", date);

		System.out.println("띠요옹 : " + d);
		return d;
	}

	public List<ElecData> getRecent12H() throws Exception {

		Calendar c = Calendar.getInstance();
		long end = c.getTimeInMillis() + ((60 - c.get(Calendar.MINUTE)) * 60 * 1000) - (60 - c.get(Calendar.SECOND) * 1000) - 1;
		long start = end - (12 * 60 * 60 * 1000);

		start /= 1000;
		end /= 1000;

		System.out.println("시작 : " + start + " 끝 : " + end);

		Date d = new Date();
		d.setStartLongDate(start);
		d.setEndLongDate(end);

		List<ElecData> list = session.selectList(NAMESPACE + ".getRecent12H", d);

		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getWatt() + " - " + list.get(i).getReg_string_date());
		}
		return list;
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
