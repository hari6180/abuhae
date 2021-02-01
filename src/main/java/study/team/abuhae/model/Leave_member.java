package study.team.abuhae.model;

import lombok.Data;

@Data
public class Leave_member {
	private int leav_mem;
	private String id;
	private String name;
	private String email;
	private String phone;
	private String reason;
	private String leave_date;
}
