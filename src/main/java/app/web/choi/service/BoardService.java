package app.web.choi.service;

import java.util.List;
import java.util.Map;

import app.web.choi.vo.BoardVO;

public interface BoardService {
	
	List<BoardVO> getBoardList(Map<String, Object> param) throws Exception;
	
}
