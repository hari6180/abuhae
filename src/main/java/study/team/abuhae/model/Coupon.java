package study.team.abuhae.model;

import lombok.Data;

@Data
public class Coupon {
	private int coupno;
	private String coup_name;
	private String coup_condition;
	private int coup_price;
	private String reg_date;
	private String exp_date;
	private int memberno;
}
