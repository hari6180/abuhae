package study.team.abuhae.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

// 부모 멤버변수까지 동일한지 비교하기 위해 넣어준 어노테이션.
// Data 어노테이션을 쓰고 상속처리 할 경우 해당 속성을 지정해주어야한다. - 0206 Hari

@EqualsAndHashCode(callSuper=true)
@Data

/**
 * @author Hari
 * 맘 회원가입시 받는 데이터를 정의한 Beans.
 * momno를 PK값으로 사용, 다른 테이블과 JOIN한다.
 */

public class Mom_info extends Member {
	/** 1) 기본 컬럼 */
	private int momno;				// 맘회원 일련번호 PRI
	private String want_act;		// 원하는 활동
	private String want_age;		// 원하는 시터 나이대
	private int kids_num;			// 아이 수
	private String kids_age;		// 아이 나이
	private int payment;			// 시터에게 지불하기 원하는 시급
	private String si;				// 시
	private String gu;				// 구
	private String dong;			// 동
	private String schedule;		// 가능한 시간대 입력(JSON)
	private char   schedule_ok;		// 일정 조정 가능 여부 ('Y' or 'N')
	private String descrip;			// 시터가 알아야할 사항
	private char   sitter_gender;	// 원하는 시터 성별 ('M' or 'F')
	private char   interview_type;	// 원하는 인터뷰 방식
	private String care_type;		// 원하는 돌봄 타입
	private String openingdate;		// 신청서 등록 시간
	private String apply_title;		// 신청서 제목
	private String apply_content;	// 신청서 내용
	private String kids_age2;		// 아이가 2명일시 넣는 생년월일
	

	

}
