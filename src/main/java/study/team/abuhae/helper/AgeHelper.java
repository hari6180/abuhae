package study.team.abuhae.helper;


import java.util.Calendar;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Data
@Slf4j
public class AgeHelper {
	
	//연령 구분
	String kids_age = null;
	
	//객체가 만들어짐과 동시에 연산 - kids_age
	public AgeHelper(String kids_age_str) {
		//kids_age 202003 이라고 가정하고
		
		//현재 날짜
		Calendar date = Calendar.getInstance();
		
		//현재 년도와 월 구하기
		int year = date.get(Calendar.YEAR);
		int month = date.get(Calendar.MONTH) +1;
		
		String yearStr = Integer.toString(year);
		String monthStr = Integer.toString(month);
		
		//월이 한 자리일 경우 월 앞에 '0' 붙여주기
		if(monthStr.length() <2) {
			monthStr = '0'+monthStr;
		}
		
		String nowdate = yearStr+monthStr;
		
		//System.out.println(nowdate);
		int kids_age_int = Integer.parseInt(kids_age_str);
		int now_date = Integer.parseInt(nowdate);
		
		//개월 수 측정
		int age = (now_date-kids_age_int)/10;
		
		
		//System.out.println(age);
		
		if (0<=age && age <=6) {
			this.kids_age = "신생아";
		} else if (6<age && age<=36) {
			this.kids_age = "영아";
		} else if (36<age && age<=84) {
			this.kids_age = "유아";
		} else {
			this.kids_age = "초등학생";
		}
		
		//log.debug(this.toString());
		
		
	
	}

	
}
