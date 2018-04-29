package yjp.wdb.service;

import java.util.List;

import yjp.wdb.domain.BoardVO;
import yjp.wdb.domain.Criteria;


public interface BoardService {
	public void regist(BoardVO board)throws Exception;
	public BoardVO read(int bno)throws Exception;
	public void mofify(BoardVO borad)throws Exception;
	public void remove(int bno)throws Exception;
	public List<BoardVO> listAll()throws Exception;
	public List<BoardVO> listCriteria(Criteria cri)throws Exception;
	public int listCountCriteria(Criteria cri)throws Exception;
	
}