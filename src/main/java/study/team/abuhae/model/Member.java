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
	private char type;			// 맘 or 시터 구분 ('M', 'S')
	private String id;			// 아이디
	private String password;	// 비밀번호
	private String name;		// 이름
	private String email;		// 이메일
	private String phone;		// 연락처
	private String birthdate;	// 생년월일
	private char gender;		// 성별 ('F', 'M')
	private String startdate;	// 이용권 시작 날짜
	private String enddate;		// 이용권 종료 날짜
	private char profile_img;	// 프로필 이미지 ('Y' or 'N')
	private char job_opening;	// 구인구직 여부 ('Y' or 'N')
	private char ticket_type; 	// 이용권 종류 ('1', '3', '6')
	private String ticket_price;// 이용권 금액
	private String signup_date; // 가입일자
	
	// 정렬조건
	private static String order;	
	
	// JOIN절에 의한 추가 멤버변수
	private String r_type;  	// 신고 유형
	private String contents; 	// 신고 내용
	
	/** LIMIT 절에서 사용할 조회 시작 위치 */
	private static int offset;
	
	/** LIMIT 절에서 사용할 조회할 데이터 수 */
	private static int listCount;

	public static int getOffset() {
		return offset;
	}

	public static void setOffset(int offset) {
		Member.offset = offset;
	}

	public static int getListCount() {
		return listCount;
	}

	public static void setListCount(int listCount) {
		Member.listCount = listCount;
	}

	public static String getOrder() {
		return order;
	}

	public static void setOrder(String order) {
		Member.order = order;
	}
}

