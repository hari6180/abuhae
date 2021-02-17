package study.team.abuhae.model;

import lombok.Data;

/** profile_file 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Profile_file {
	
	private int profno; // 프로필 이미지 일련번호
	private String filename; // input name
	private String originname; // 원본 파일 이름
	private String file_dir; // 파일 저장 경로
	private String file_name; // 저장된 파일 이름
	private String content_type; // 확장자명
	private int file_size; // 파일크기 
	private int memberno; // 회원 일련번호

}
