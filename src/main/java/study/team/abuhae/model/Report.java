package study.team.abuhae.model;

import lombok.Data;

/** report 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Report {
	
	private int reportno;
	private String who;
	private String type;
	private String contents;
	private int momno;
	private int sitterno;
	
	/** join 절에 따른 멤버변수 추가 - 다예 */
	private String name;
}
