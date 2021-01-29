package study.team.abu.model;

import lombok.Data;

@Data
public abstract class Member {
	private int memberno;
	private String type;
	private String id;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String birthdate;
	private String startdate;
	private String enddate;
	private String profile_img;
	private String job_opening;
	

}
