package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BoardDAO;
import org.zerock.mapper.BoardMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	private final BoardMapper mapper;

	@Override
	public Long register(BoardDAO board) {
		
		mapper.insertSelectKey(board);
		
		return board.getBno();
	}

	@Override
	public BoardDAO get(Long bno) {

		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardDAO board) {

		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long bno) {

		return mapper.delete(bno) == 1;
	}

	@Override
	public List<BoardDAO> getList() {

		return mapper.getList();
	}

}
