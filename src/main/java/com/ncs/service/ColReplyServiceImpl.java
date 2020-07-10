package com.ncs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncs.mapper.ColReplyMapper;
import com.ncs.mapper.ColumnMapper;
import com.ncs.vo.ReplyVO;

@Service
public class ColReplyServiceImpl implements ColReplyService {
	
	@Autowired
	ColReplyMapper rmapper;
	
	@Autowired
	ColumnMapper mapper;

	@Override
	public int register(ReplyVO rvo) {
		
		/* 댓글 남긴 사람들에게 업데이트 될 때마다 메시지 전송
		 * for (iterable_type iterable_element : iterable) {
		 * messageMapper.delevery(element); }
		 */
		mapper.replycountUp(rvo.getSeq());
		return rmapper.register(rvo);
	}

	@Override
	public List<ReplyVO> selectlist(int seq) {
		return rmapper.selectlist(seq);
	}

	@Override
	public int update(ReplyVO rvo) {
		return rmapper.update(rvo);
	}

	@Override
	public int delete(ReplyVO rvo) {
		return rmapper.delete(rvo);
	}

	@Override
	public int replyCount() {
		return rmapper.replyCount();
	}
	
	

}
