package yjp.wdb.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjp.wdb.domain.BoardVO;
import yjp.wdb.domain.Criteria;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "org.zerock.mapper.BoardMapper";

	@Override
	public void create(BoardVO vo) throws Exception {
		session.insert(namespace + ".create", vo);

	}

	@Override
	public BoardVO read(int bno) throws Exception {
		return session.selectOne(namespace + ".read", bno);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(int bno) throws Exception {
		session.delete(namespace + ".delete", bno);

	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<BoardVO> listPage(int page) throws Exception {
		if (page <= 0) {
			page = 1;
		}
		page = (page - 1) * 10;
		return session.selectList(namespace + ".listPage", page);

	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listCriteria", cri);
	}

}
