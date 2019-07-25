package com.edu.dao;

import java.util.List;

import com.edu.common.Search;
import com.edu.domain.MemberVO;

public interface MemberDAO {
	// 회원 목록 
	public List<MemberVO> memberList(Search search);
	
	// 회원 입력
	public void insertMember(MemberVO vo);
	// 회원 정보 상세보기
	public MemberVO viewMember(String userId);
	// 회원삭제
	public void deleteMember(String userId);
	// 회원정보 수정
	public void updateMember(MemberVO vo);
	// 비밀번호 체크
	public boolean checkPw(String userId, String userPw);
	
	//총 게시글 개수 확인 : 페이징 
	public int getBoardListCnt(Search search);
	
	//모달창 상세정보 확인
	public List<MemberVO> modalmemberList(Search search);
	

}
