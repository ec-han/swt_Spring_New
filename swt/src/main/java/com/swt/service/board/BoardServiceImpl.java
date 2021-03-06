package com.swt.service.board;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swt.domain.board.BoardDTO;
import com.swt.persistence.board.BoardDAO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class BoardServiceImpl implements BoardService {
	@Inject
	private BoardDAO bDao;
	
	@Transactional
	@Override
	public int create(BoardDTO bDto) {
		
		int result = bDao.create(bDto);
		// attach 테이블에 첨부파일 이름 추가
		String[] files = bDto.getFiles();
		log.info(bDto.toString());
		if(files==null) { // 첨부파일 없으면 skip
			return result;
		}
		for (String name : files) {
			bDao.addAttach(name); // attach 테이블에 insert 
			log.info("swt 파일첨부 DAO 다녀옴");
		}
		return result;
	}

	@Override
	public int update(BoardDTO bDto) {
		return bDao.update(bDto);
	}

	@Override
	public int delete(int bno) {
		return bDao.delete(bno);
	}

	@Override
	public BoardDTO read(int bno) {
		return bDao.read(bno);
	}

	@Override
	public List<BoardDTO> listAll(String sort_option, String search_option, String keyword, int start, int end) {
		return bDao.listAll(sort_option, search_option, keyword, start, end);
	}

	@Override
	public void increaseViewCnt(int bno, HttpSession session) {
		long update_time=0;
		if(session.getAttribute("update_time_"+bno)!=null) {
			// 최근에 조회수를 올린 시간
			update_time = (long)session.getAttribute("update_time_"+bno);
		}
		long current_time = System.currentTimeMillis();
		
		// 일정 시간이 경과한 후 조회수 증가 처리
		if(current_time - update_time > 24*60*60*1000) {
			// 조회수 증가 처리
			bDao.increaseViewCnt(bno);
			
			// 조회수를 올린 시간 저장
			session.setAttribute("update_time_"+bno, current_time);
			// log.info("update_time_"+update_time+"current_time_"+current_time);
		}
	}

	@Override
	public int countArticle(String search_option, String keyword) {
		return bDao.countArticle(search_option, keyword);
	}

	@Override
	public void answer(BoardDTO bDto) {
		// 비즈니스로직: 답글 등록
		// 1. 답글을 달 게시글의 re_step보다 큰 답글들을  re_step + 1
		bDao.updateStep(bDto.getRe_step(),bDto.getRef());
		// 2. 답글 테이블에 등록
		bDto.setRe_step(bDto.getRe_step()+1);
		bDto.setRe_level(bDto.getRe_level()+1);
		bDao.answer(bDto);
	}

}
