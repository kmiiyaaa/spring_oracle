package com.kmii.oracle.dao;

public interface MemberDao {

	public int memberJoinDao(String memberid, String memberpw, String membername);
	
	//아이디 존재 여부 확인 메서드
	public int memeberidCheckDao(String memberid);
	
	//
	public int memberLoginDao(String memberid, String memberpw);

}