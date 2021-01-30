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
	
}
