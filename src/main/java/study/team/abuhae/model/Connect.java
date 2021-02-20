package study.team.abuhae.model;

import lombok.Data;

/** connect 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Connect {
	
	private int cntno; // 구인 성사 일련번호
	private String applydate; // 지원날짜
	private char who; // 지원한 사람 타입 구분
	private int momno; // 맘 일련번호
	private int sitterno; // 시터 일련번호 
	private char accept; // 지원 승인여부
	private String deny_type; // 거절 타입
	
	//join절에 대한 추가 컬럼
	private int memberno;	//회원번호
	private String name;	//이름
	private String birthdate; 	//생년월일
	private int payment;	//시급
	private String phone;	//전화번호
	
	
}
