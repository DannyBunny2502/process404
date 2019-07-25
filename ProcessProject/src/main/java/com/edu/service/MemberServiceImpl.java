package com.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.edu.common.Search;
import com.edu.dao.MemberDAOImpl;
import com.edu.domain.MemberVO;

// 현재 클래스를 스프링에서 관리하는 service bean으로 등록
@Service
public class MemberServiceImpl implements MemberService {
	
	// MemberDAOImpl 객체를 스프링에서 생성하여 주입시킴
	@Inject
	MemberDAOImpl memberDao;
	
	// 01. 전체 회원 목록 조회
	@Override
	public List<MemberVO> memberList(Search search) {
		return memberDao.memberList(search);
	}
	
	// 02. 회원 등록
	@Override
	public void insertMember(MemberVO vo) {
		memberDao.insertMember(vo);
	}
	// 03. 회원 정보 상세 조회 
	@Override
	public MemberVO viewMember(String id) {
		return memberDao.viewMember(id);
	}
	// 04. 회원 정보 수정 처리
	@Override
	public void deleteMember(String id) {
		memberDao.deleteMember(id);
	}
	// 05. 회원 정보 삭제 처리
	@Override
	public void updateMember(MemberVO vo) {
		memberDao.updateMember(vo);
	}
	// 06. 회원 정보 수정 및 삭제를 위한 비밀번호 체크
	@Override
	public boolean checkPw(String id, String password) {
		return memberDao.checkPw(id, password);
	}
	
	 //총 게시글 개수 확인 : 페이징
	@Override
	public int getBoardListCnt(Search search)  {
		return memberDao.getBoardListCnt(search);
	}
	
	//모달창 상세정보확인
	@Override
	public List<MemberVO> modalmemberList(Search search) {
		return memberDao.memberList(search);
	}



}
