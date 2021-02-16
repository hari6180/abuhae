package study.team.abuhae.model;

import lombok.Data;

@Data
public class Cus_category {
	private int cateno;
	private String category;
	
	/** cus_sub_category 테이블과 조인 */
	private int subcateno;
	private String sub_category;
}
