package study.team.abuhae.model;

import lombok.Data;

@Data
public class ResiCert {
	private int resino;   // 등초본 이미지 일련번호
	private String filename;   // input name
	private String originname;   // 원본 파일 이름
	private String file_dir;   // 파일 저장경로
	private String file_name;   // 저장된 파일 이름
	private String content_type;   // 확장자
	private int file_size;   // 파일크기
	private String resi_text;   // 실거주지 입력값
	private String reg_date;   // 인증 요청 날짜
	private String cert;   // 인증 승인 여부
	private int sitterno;   // 시터회원 일련번호
}
