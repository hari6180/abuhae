package study.team.abuhae.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper=true)
@Data
public class Sitter_info extends Member {
	private int sitterno;
	private char sitter_type;
	private String want_act;
	private String want_age;
	private String si;
	private String gu;
	private String dong;
	private int payment;
	private String cctv;
	private String schedule;
	private String schedule_set;
	private String introduce;
	private int answer;
	private String openingdate;

}
