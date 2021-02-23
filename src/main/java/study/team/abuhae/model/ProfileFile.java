package study.team.abuhae.model;

import lombok.Data;

@Data
public class ProfileFile {
	private int profno;
	private String fileName;
	private String originName;
	private String contentType;
	private long fileSize;
	private String filePath;
	private String fileUrl;
	private String thumbnailpath;
	private String thumnailurl;
	private int memberno;
	private String isProfile;
}
