package study.team.abu.model;

import lombok.Data;

@Data
public class Cus_bbs {
	private int boardnum;   // 게시글 일련번호
	private String edit_date;   // 수정 일자
	private String reg_date;   // 작성 일자
	private int sub_catogory;
	private String text;   // 게시글 내용
	private String title;   // 게시글 제목
	private String writer;   // 작성자
}
