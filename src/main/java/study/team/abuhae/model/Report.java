package study.team.abuhae.model;

import lombok.Data;

/** report 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Report {
	
	private int reportno; // 신고 일련번호
	private char who; // 신고자의 타입
	private String type; // 신고타입
	private String contents; // 신고내용
	private int momno; // 맘 일련번호
	private int sitterno; // 시터 일련번호
	
	/** join 절에 따른 멤버변수 추가 - 다예 */
	private String name;
	
	private String reg_date;
}
