package com.ncs.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ncs.vo.ReplyVO;

public interface ComReplyMapper {

	int register(ReplyVO rvo);
	List<ReplyVO> selectList(int seq);
	int update(ReplyVO rvo);
	int delete(ReplyVO rvo);
	int replyCount();
	
}
