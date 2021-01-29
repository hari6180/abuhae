package study.team.abu.model;

import lombok.Data;

/** profile_file 테이블 구조에 맞춘 Java Beans 생성 */
@Data
public class Profile_file {
	
	private int profno;
	private String filename;
	private String originname;
	private String file_dir;
	private String file_name;
	private String content_type;
	private int file_size;
	private int memberno;

}
