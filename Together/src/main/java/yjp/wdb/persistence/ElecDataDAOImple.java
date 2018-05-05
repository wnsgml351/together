package yjp.wdb.persistence;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjp.wdb.domain.ElecData;

@Repository
public class ElecDataDAOImple implements ElecDataDAO {

	@Inject
	private SqlSession session;
	private final static String NAMESPACE = "yjp.wdb.together.sqlMapper";

	@Override
	public List<ElecData> test(ElecData e) {
		List<ElecData> a = session.selectList(NAMESPACE + ".getData", e);
		return a;
	}

	@Override
	public List<ElecData> dataDay() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(NAMESPACE + ".dataDay");
	}

	@Override
	public List<List<ElecData>> ansim() throws Exception {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy.MM.dd");
		Calendar cal = Calendar.getInstance();
		cal.add(cal.MONTH, 0);
		String currentMonth = dateFormat.format(cal.getTime());
		System.out.println(currentMonth);
		List<List<ElecData>> list = new ArrayList<>();
		list.add(session.selectList(NAMESPACE + ".ansim", currentMonth));
		System.out.println(list);
		return list;
	}

	@Override
	public List<List<ElecData>> ansimall() throws Exception {
		List<List<ElecData>> list = new ArrayList<>();
		list.add(session.selectList(NAMESPACE + ".ansimAll"));
		return list;
	}
	/*
	 * @Override public List<List<ElecData>> ansima() throws Exception { List<List<ElecData>> list = new ArrayList<>(); list.add(session.selectList(NAMESPACE + ".ansimA")); return list; }
	 */

	@Override
	public List<ElecData> dataMonth() throws Exception {
		return session.selectList(NAMESPACE + ".dataMonth");
	}

	@Override
	public List<ElecData> ansimDayAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(NAMESPACE + ".ansimdayAll");
	}

	@Override
	public List<List<ElecData>> ansimdayLast() throws Exception {
		List<List<ElecData>> list = new ArrayList<>();
		list.add(session.selectList(NAMESPACE + ".ansimdayLast"));
		//4�썡 30�씪 �뜲�씠�꽣
		return list;
	}

}
