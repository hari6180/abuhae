/*
 * package study.team.abuhae.controllers;
 * 
 * import java.util.HashMap; import java.util.List; import java.util.Map;
 * 
 * import javax.servlet.http.HttpServletResponse;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.bind.annotation.RequestParam; import
 * org.springframework.web.bind.annotation.RestController;
 * 
 * import study.team.abuhae.helper.WebHelper; import
 * study.team.abuhae.model.Coupon; import study.team.abuhae.model.Mom_info;
 * import study.team.abuhae.service.BuyService;
 * 
 * @RestController public class BuyRestController {
 * 
 *//** WebHelper 주입 */
/*
 * // --> import org.springframework.beans.factory.annotation.Autowired; // -->
 * import study.spring.springhelper.helper.WebHelper;
 * 
 * @Autowired WebHelper webHelper;
 * 
 * @Autowired BuyService buyService;
 * 
 * // 이용권 구매 페이지
 * 
 * @RequestMapping(value = "/buy/receipt", method = RequestMethod.GET) public
 * Map<String, Object> receipt(Model model, HttpServletResponse response,
 * 
 * @RequestParam(value = "tktype", required = false) String tktype,
 * 
 * @RequestParam(value = "memberno", required = false, defaultValue = "0") int
 * memberno,
 * 
 * @RequestParam(value = "receipt", required = false) String receipt) {
 * 
 * // 로그인 세션 객체를 받아와서 Mom_info의 memberno 조회 Mom_info input = new Mom_info();
 * input.setMemberno(memberno);
 * 
 *//** 쿠폰 목록 조회하기 */
/*
 * // 조회 결과를 저장할 객체 선언 List<Coupon> cpout = null; // 조회할 값을 Beans에 담는다. Coupon
 * cp = new Coupon(); cp.setMemberno(input.getMemberno());
 * 
 * try { // 데이터 조회 --> 해당 멤버에게 부여된 쿠폰 리스트 조회 cpout = buyService.findCoupon(cp);
 * } catch (Exception e) { e.printStackTrace(); }
 * 
 * // 이용권 가격 String tkprice = "0";
 * 
 * switch (tktype) { case "1": { tkprice = "29900"; break; } case "3": { tkprice
 * = "49900"; break; } case "6": { tkprice = "79900"; break; } }
 * 
 * char ttResult = tktype.charAt(0);
 * 
 * // 저장할 값들을 Beans에 담는다. Mom_info output = new Mom_info();
 * 
 * // 쿠폰 적용 가격 계산 if (!cpout.isEmpty()) { double temp1 =
 * Double.parseDouble(tkprice) * 0.7; int temp2 = (int) temp1; tkprice =
 * Integer.toString(temp2); // 신규 구매 output.setMemberno(memberno);
 * output.setTicket_type(ttResult); output.setTicket_price(tkprice); } else { //
 * 신규 구매 output.setMemberno(memberno); output.setTicket_type(ttResult);
 * output.setTicket_price(tkprice); }
 * 
 * // 구매 처리 if (receipt == "Y") { if (!cpout.isEmpty()) { // 쿠폰 적용시 재구매 고객 try {
 * buyService.reBuy(output); } catch (Exception e) { e.printStackTrace(); } }
 * else { // 쿠폰 미적용시 신규구매 고객 try { buyService.newBuy(output); } catch (Exception
 * e) { e.printStackTrace(); } } }
 *//** 3) JSON 출력하기 *//*
						 * Map<String, Object> data = new HashMap<String, Object>(); data.put("cpout",
						 * cpout); data.put("output", output);
						 * 
						 * return webHelper.getJsonData(data); }
						 * 
						 * }
						 */