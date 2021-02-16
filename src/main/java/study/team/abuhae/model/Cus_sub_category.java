package study.team.abuhae.model;

import lombok.Data;

@Data
public class Cus_sub_category {
	private int subcateno;
	private int cateno;
	private String sub_category;
	
	/** cus_bbs table과의 join에 따른 추가 컬럼 */
	private int boardnum;   // 게시글 일련번호
	private String title;   // 작성 일자
	private String text;   // 게시글 내용
	private String writer;   // 게시글 제목
	private String reg_date;   // 작성자
	private String edit_date;   // 작성자
}
