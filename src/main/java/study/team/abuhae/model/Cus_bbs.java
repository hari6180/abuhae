package study.team.abuhae.model;

import lombok.Data;

@Data
public class Cus_bbs {
	private int boardnum;   // 게시글 일련번호
	private int cateno;
	private int subcateno;   // 수정 일자
	private String title;   // 작성 일자
	private String text;   // 게시글 내용
	private String writer;   // 게시글 제목
	private String reg_date;   // 작성자
	private String edit_date;   // 작성자
}
