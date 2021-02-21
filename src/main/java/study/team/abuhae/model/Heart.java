package study.team.abuhae.model;

import lombok.Data;

/** Heart 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Heart {
	
	private int heartno; // 찜 일련번호 
	private String reg_date; // 찜한 날짜
	private char who; // 찜한 사람 타입 구분
	private int momno; // 맘 일련번호 
	private int sitterno; // 시터 일련번호

}
