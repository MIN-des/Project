package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardDAO;

public interface BoardMapper {

	List<BoardDAO> getList();
	
	void insert(BoardDAO board);
	
	void insertSelectKey(BoardDAO board);
	
	BoardDAO read(Long bno);
	
	int delete(Long bno);
	
	int update(BoardDAO board);
}
