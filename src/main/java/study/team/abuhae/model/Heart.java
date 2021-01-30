package study.team.abuhae.model;

import lombok.Data;

/** Heart 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Heart {
	
	private int heartno;
	private String reg_date;
	private String who;
	private int momno;
	private int sitterno;

}
