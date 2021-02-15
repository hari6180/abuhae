package study.team.abuhae.model;

import lombok.Data;

@Data
public class Review {
	private int revno;   // 리뷰 일련번호
	private String category;   // 채용/인터뷰/실패/맘시터 후기 분류
	private String who;   // 리뷰 작성자 타입(맘/시터)
	private String writer;   // 작성자 이름
	private String kids_num;   // 아이 수
	private String rev_rate;   // 별점(1,2,3,4,5)
	private String reg_date;   // 후기 작성일자
	private String contents;   // 후기 내용
	private int momno;   // 맘회원 일련번호
	private int sitterno;   // 시터회원 일련번호
	
	/** join을 위한 멤버변수 추가 (다예) */
	private String name;		// 이름
	private String birthdate;
	
	private String si;					// 시
	private String gu;					// 구
	private String dong;				// 동
	
	private int cntno;
	private String applydate;
	private String accept;
}
