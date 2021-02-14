package app.web.choi.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.web.choi.dao.BoardDao;
import app.web.choi.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao boardDao;
	
	@Override
	public List<BoardVO> getBoardList(Map<String, Object> param) throws Exception {
		return boardDao.selectBoardList(param);
	}

}
