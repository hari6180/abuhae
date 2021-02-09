package study.team.abuhae.model;

import lombok.Data;

/**
 * @author Hari
 * 맘,시터 회원가입시 공통적으로 받는 데이터를 추출한 부모 클래스.
 * 자식클래스(Mom_info, Sitter_info)는 해당 클래스를 상속받아
 * 모든 멤버변수에 접근할 수 있다.
 */
@Data
public abstract class Member {
	private int memberno;		// 회원 일련번호 PRI
	private String id;			// 아이디
	private String password;	// 비밀번호
	private String name;		// 이름
	private String email;		// 이메일
	private String phone;		// 연락처
	private String birthdate;	// 생년월일
	private String startdate;	// 이용권 시작 날짜
	private String enddate;		// 이용권 종료 날짜
	private char profile_img;	// 프로필 이미지 ('Y' or 'N')
	private char job_opening;	// 구인구직 여부 ('Y' or 'N')
	private char ticket_type; 	// 이용권 종류 ('1', '3', '6')
	private String ticket_price;// 이용권 금액
	private char gender;		// 성별 ('F', 'M')
}

