package com.ncs.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ncs.vo.ComunityVO;

@Repository
public interface ComunityMapper {
	
	public List<ComunityVO> selectList();
	public int insert(ComunityVO vo);
	public ComunityVO selectOne(ComunityVO vo);
}
