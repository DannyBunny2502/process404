package com.edu.service;

import java.util.List;

import com.edu.common.Search;
import com.edu.domain.MemberVO;

public interface MemberService {
	// 회원 목록 
	public List<MemberVO> memberList(Search search);
	// 회원 입력
	public void insertMember(MemberVO vo);
	// 회원 정보 상세보기
	public MemberVO viewMember(String id);
	// 회원삭제
	public void deleteMember(String id);
	// 회원정보 수정
	public void updateMember(MemberVO vo);
	// 비밀번호 체크
	public boolean checkPw(String id, String password);
	
	//총 게시글 개수 확인
	public int getBoardListCnt(Search search) ;
	
	//모달창 상세정보확이 
	public List<MemberVO> modalmemberList(Search search);


}
