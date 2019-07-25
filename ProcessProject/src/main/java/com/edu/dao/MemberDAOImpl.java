package com.edu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.edu.common.Search;
import com.edu.domain.MemberVO;

// 현재 클래스를 DAO bean으로 등록시킴
@Repository
public class MemberDAOImpl implements MemberDAO {
	
	// SqlSession 객체를 스프링에서 생성하여 주입시켜준다.
	// 의존관계 주입(Dependency Injection, DI)
	// 느스한 결함
	// IoC(Inversion of Control, 제어의 역전)
	@Inject
	// Inject애노테이션이 없으면 sqlSession은 null상태이지만
	// Inject애노테이션이 있으면 외부에서 객체를 주입시켜주게 된다. 
	// try catch문, finally문, 객체를 close할 필요가 없어졌다.
	SqlSession sqlSession;
	
	// 01. 전체 회원 목록 조회
	@Override
	public List<MemberVO> memberList(Search search) {
		return sqlSession.selectList("member.memberList",search);
	}
	// 02. 회원 등록
	@Override
	public void insertMember(MemberVO vo) {
		sqlSession.insert("member.insertMember", vo);
	}
	// 03. 회원 정보 상세 조회
	@Override
	public MemberVO viewMember(String id) {
		return sqlSession.selectOne("member.viewMember", id);
	}
	// 04. 회원 정보 수정 처리
	@Override
	public void deleteMember(String id) {
		sqlSession.delete("member.deleteMember",id);
	}
	// 05. 회원 정보 삭제 처리
	@Override
	public void updateMember(MemberVO vo) {
		sqlSession.update("member.updateMember", vo);

	}
	// 06. 회원 정보 수정 및 삭제를 위한 비밀번호 체크
	@Override
	public boolean checkPw(String id, String password) {
		boolean result = false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("password", password);
		int count = sqlSession.selectOne("member.checkPw", map);
		if(count == 1) result= true;
		return result;
	}
	
	//총 게시글 개수 확인
	@Override
		public int getBoardListCnt(Search search){
			return sqlSession.selectOne("member.getBoardListCnt",search);
		}
	
	
	//모달창 상세정보확인
	@Override
	public List<MemberVO> modalmemberList(Search search) {
		return sqlSession.selectList("member.modalmemberList",search);
	}


}
