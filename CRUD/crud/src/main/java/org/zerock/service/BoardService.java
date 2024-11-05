package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardDAO;

public interface BoardService {

	Long register(BoardDAO board);

	BoardDAO get(Long bno);

	boolean modify(BoardDAO board);

	boolean remove(Long bno);

	List<BoardDAO> getList();
}
