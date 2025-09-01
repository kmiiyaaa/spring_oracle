package com.kmii.oracle.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class BoardDto {
	private int bnum;  // 글번호(기본키), 자동증가
	private String btitle;
	private String bcontent;
	private String bwriter; //글쓴이 아이디
	private int bhit;
	//private String bdate;
	private Timestamp bdate;
	
	//BoardDto : MemberDto -> 1:1 관계
	private MemberDto memberDto;
	
	
}
