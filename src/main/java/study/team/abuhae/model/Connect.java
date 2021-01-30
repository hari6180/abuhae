package study.team.abuhae.model;

import lombok.Data;

/** connect 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Connect {
	
	private int cntno;
	private String applydate;
	private String who;
	private int momno;
	private int sitterno;
	private String accept;
	private String deny_type;
	private String deny_text;
	
}
