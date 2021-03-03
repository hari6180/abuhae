package study.team.abuhae.controllers;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import study.team.abuhae.model.Connect;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.ResiCert;
import study.team.abuhae.model.Review;
import study.team.abuhae.model.Sitter_info;
import study.team.abuhae.service.MemberInsertService;

@Controller
public class MemberInsertController {
	/** Service 패턴 구현체 주입 */
	@Autowired
	MemberInsertService memberInsertService;
	
	public int random(int n1, int n2) {
		int a = (int)((Math.random() * (n2 - n1 + 1)) + n1);
		return a; 
      }

	/** 멤버를 DB에 추가하는 컨트롤러 2021-02-04 하리
	 *  따로 view가 없습니다. 
	 *  프로젝트 실행하고 value 안 url 주소창에 입력하여 추가하세요. **/
	@RequestMapping(value = "/member_insert.do", method = RequestMethod.GET)
	public void member_insert(Model model) {
		// 다양한 검색 결과를 보여주기 위해 만든 배열
		
		/** 공통 */
		// 프로필 업데이트 날짜 및 시간 출력을 위한 값

		
		// 다양한 주소 출력을 위한 값
		String loc[] = {"역삼동", "개포동", "청담동", "삼성동", "대치동", "신사동", "논현동", "압구정동", "세곡동", "자곡동", "율현동", "일원동", "수서동", "도곡동"};
		
		// 스케줄 
		String[] days = {"mon", "tue", "wed", "thu", "fri", "sat", "sun"};
		String[] frequency = {"regular", "shortTerm", "noplan"};
		
		// 원하는 활동
		String[] acts = {"innerplay", "guide", "read", "outside", "korean", "english", "study", "sport", "simple_cleaning", "eat", "do_dish", "long_move_in", "short_move_in"};
		
		String[] age = {"got_baby", "baby", "children", "element"};
		
		// 저장할 값들을 Beans에 담는다.
		Mom_info input = new Mom_info();
		Connect applySt = new Connect();
		
		for (int i = 1; i <= 100; i++) {
			input.setType('M');
			input.setId("mom" + i);
			input.setPassword("mom123");
			input.setName("전하리" + i);
			input.setEmail("aaa@aaa.aa");
			input.setPhone("01088888888");
			input.setBirthdate("1997-06-18");
			input.setGender('F');
			input.setJob_opening('Y');
			
			// 원하는 활동
			input.setWant_act1(acts[random(0,3)]);
			input.setWant_act2(acts[random(4,9)]);
			input.setWant_act3(acts[random(10,12)]);

			
			input.setWant_age("20대");
			input.setKids_num(random(1,2));
			
			// 아이 나이 랜덤입력
			int birthYear = random(1,9);
			int birthMonth = random(1,12);
			input.setKids_age("201" + birthYear + String.format("%02d",birthMonth));
			
			if (input.getKids_num() == 2) {
				birthYear = random(1,9);
				birthMonth = random(1,12);
				input.setKids_age2("201" + birthYear + String.format("%02d",birthMonth));
			}
			
			// 시급 랜덤입력
			int payment = random(9000,20000);
			input.setPayment(payment);
			
			input.setPayment_ok('Y');
			input.setSi("서울특별시");
			input.setGu("강남구");
			// 동 랜덤입력
			input.setDong(loc[random(0,loc.length-1)]);
			
			// 스케줄 랜덤입력 
			// 가능한 요일
			String dayOk[] = new String[3];
			for (int j=0; j<dayOk.length; j++) {
				dayOk[j] = days[random(0,days.length-1)];
			}
			
			// 프로필 업데이트 및 스케줄 날짜 랜덤입력
			int day = random(1,31);
			int hour = random(1,12);
			int minsec = random(1,59);
		
			
			input.setSchedule("{\"day\":" + Arrays.toString(dayOk) +", \"frequency\": \"" + frequency[random(0,frequency.length-1)] 
					+ "\", \"startdate\": \"" + String.format("%02d/%02d/%02d", 2021, 03, random(1,31)) + "\"}");
			input.setSchedule_ok('Y');
			input.setSitter_gender('F');
			input.setCare_type("주1회");
			
			// 프로필 업데이트 날짜 랜덤입력
			String date = String.format("%02d-%02d %02d:%02d:%02d", 3, day, hour, minsec, minsec);
			String openingdate = "2021-" + date;
			input.setOpeningdate(openingdate);
			input.setSignup_date(openingdate);
			input.setSubscribe('N');
			
			int memberno = input.getMemberno();
			input.setMemberno(memberno);

			try {
				// 데이터 저장 --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
				memberInsertService.addMom(input);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		// 저장할 값들을 Beans에 담는다.
		Sitter_info input2 = new Sitter_info();
		Review review = new Review();
		Connect accept = new Connect();
		
		for (int i = 1; i <= 100; i++) {
			input2.setType('S');
			input2.setId("sitter" + i);
			input2.setPassword("sitter123");
			input2.setName("김선아" + i);
			input2.setEmail("bbb@aaa.aa");
			input2.setPhone("01088888888");
			input2.setBirthdate("19"+ String.format("%2d-%02d-%02d", random(70,95), random(1,12), random(1,28)));
			input2.setGender('F');
			input2.setJob_opening('Y');
			
			// 시터 유형 랜덤입력
			String[] stType = {"student", "mom", "teacher", "normal"};
			input2.setSitter_type(stType[random(0, stType.length-1)]);
			
			// 가능한 돌봄유형
			// 원하는 활동
			input2.setWant_act1(acts[random(0,3)]);
			input2.setWant_act2(acts[random(4,9)]);
			input2.setWant_act3(acts[random(10,12)]);
			
			input2.setWant_age(age[random(0,age.length-1)]);
			
			// 시급 랜덤입력
			int payment = random(9000,20000);
			
			input2.setPayment(payment);
			input2.setSi("서울특별시");
			input2.setGu("강남구");
			// 동 랜덤입력
			input2.setDong(loc[random(0,loc.length-1)]);
			
			// 스케줄 랜덤입력 
			// 가능한 요일
			String dayOk[] = new String[3];
			for (int j=0; j<dayOk.length-1; j++) {
				dayOk[j] = days[random(0,days.length-1)];
			}
			// 프로필 업데이트 및 스케줄 날짜 랜덤입력
			int day = random(1,31);
			int hour = random(1,12);
			int minsec = random(1,59);
			
			input2.setSchedule("{\"day\":" + Arrays.toString(dayOk) +", \"frequency\": \"" + frequency[random(0,frequency.length-1)] 
					+ "\", \"startdate\": \"" + String.format("%02d/%02d/%02d", 2021, 03, random(1,31)) + "\"}");
			input2.setIntroduce("안녕하세요 짱짱 시터입니다.");
			input2.setCctv('Y');

			// 프로필 업데이트 날짜 랜덤입력
			String date = String.format("%02d-%02d %02d:%02d:%02d", 3, day, hour, minsec, minsec);
			String openingdate = "2021-" + date;
			input2.setOpeningdate(openingdate);
			
			int memberno2 = input2.getMemberno();
			input2.setMemberno(memberno2);
			input2.setSignup_date(openingdate);
			input2.setSubscribe('N');

			try {
				// 데이터 저장 --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
				memberInsertService.addSitter(input2);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			String[] accepts = {"Y", "N"};
			
			// 응답률 랜덤입력
			for (int j=0; j<random(3,10); j++) {
				accept.setWho("m");
				accept.setSitterno(input2.getSitterno());
				accept.setAccept(accepts[random(0,1)]);
				accept.setMomno(input.getMomno());
				
				try {
					memberInsertService.AcceptInsert(accept);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			char[] rev = {'0','1','2','3','4','5'};
		
			// 맘에게 지원한 시터 수 랜덤 입력
			for (int j=0; j<random(3,10); j++) {
				applySt.setWho("s");
				applySt.setMomno(input.getMomno());
				applySt.setSitterno(input2.getSitterno());	

				
				try {
					memberInsertService.applyStInsert(applySt);
					memberInsertService.reviewInsert(review);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			
			// 리뷰 및 별점 랜덤 입력
			for (int j=0; j<random(3,10); j++) {
				review.setRev_rate(rev[random(0,rev.length-1)]);
				review.setContents("리뷰더미");
				review.setSitterno(input2.getSitterno());
				review.setMomno(input2.getSitterno());
				review.setCntno(applySt.getCntno());
				try {
					memberInsertService.applyStInsert(applySt);
					memberInsertService.reviewInsert(review);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
		}
		
	}
}
