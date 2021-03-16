package study.team.abuhae.dao;

import org.apache.ibatis.session.SqlSession;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.slf4j.Slf4j;
import study.team.abuhae.model.Mom_info;
import study.team.abuhae.model.Sitter_info;

/** Lombok의 Log4j 객체 */
// import lombok.extern.slf4j.Slf4j;
@Slf4j
/** JUnit에 의한 테스트 클래스로 정의 */
// import org.junit.runner.RunWith;
// import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
/** Spring의 설정 파일들을 읽어들이도록 설정 (**은 `모든` 이라는 의미) */
// import org.springframework.test.context.ContextConfiguration;
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*-context.xml" })
/** 웹 어플리케이션임을 명시 */
// import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
/** 메서드 이름순서로 실행하도록 설정 (설정하지 않을 경우 무작위 순서로 실행됨) */
// import org.junit.FixMethodOrder;
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class AbuhaeTest {

    /** MyBatis의 SQL세션 주입 설정 */
    // import org.springframework.beans.factory.annotation.Autowired;
    @Autowired
    private SqlSession sqlSession;

    /** 로그인 테스트 (맘회원) */
    @Test
    public void testA() {    
       Mom_info input = new Mom_info();
       input.setId("mom1");
       input.setPassword("mom123");
       sqlSession.selectOne("MemberMapper.selectIdItem", input);
    }
    
    /** 로그인 테스트 (시터회원) */
    @Test
    public void testB() {    
       Sitter_info input = new Sitter_info();
       input.setId("sitter1");
       input.setPassword("sitter123");
       sqlSession.selectOne("MemberMapper.selectIdItem", input);
    }

    /** 서치 테스트 (맘회원) */
    @Test
    public void testC() {    
       Mom_info input = new Mom_info();
       input.setWant_act1("guide");
       input.setWant_act2("study");
       input.setWant_act3("long_move_in");
       sqlSession.selectOne("SearchMapper.searchMom", input);
    }
    
    /** 서치 테스트 (시터회원) */
    @Test
    public void testD() {    
       Sitter_info input = new Sitter_info();
       input.setWant_act1("guide");
       input.setWant_act2("study");
       input.setWant_act3("long_move_in");
       sqlSession.selectOne("SearchMapper.searchSitter", input);
    }
    
    /** 상세페이지 테스트 (맘회원) */
    @Test
    public void testE() {    
       Mom_info input = new Mom_info();
       input.setMomno(1);
       sqlSession.selectOne("DetailMapper.selectItemMom", input);
    }
    
    /** 상세페이지 테스트 (시터회원) */
    @Test
    public void testF() {    
       Sitter_info input = new Sitter_info();
       input.setSitterno(1);
       sqlSession.selectOne("DetailMapper.selectItem", input);
    }

    /** 회원정보 수정 테스트 (맘회원) */
    @Test
    public void testG() {    
       Mom_info input = new Mom_info();
       input.setMomno(1);
       input.setSi("경기도");
       input.setGu("일산동구");
       input.setDong("링딩동");
       input.setWant_act1("study");
       input.setWant_act2("sport");
       input.setWant_act3("do_dish");
       input.setWant_age("30");
       input.setKids_num(1);
       input.setKids_age("201504");
       input.setKids_age2("201801");
       input.setPayment(99000);
       input.setPayment_ok('N');
       input.setDescription("아이가 시끄러워요");
       input.setSitter_gender('F');
       input.setInterview_type(null);
       input.setCare_type(null);
       input.setApply_title("시터구해요!!");
       input.setApply_content("시터 급하게 구합니다!");
       sqlSession.update("MomMypageMapper.editMomInfo", input);
    }
    
    /** 회원정보 수정 테스트 (시터회원) */
    @Test
    public void testH() {    
       Sitter_info input = new Sitter_info();
       input.setSitterno(1);
       input.setPayment(9999999);
       input.setOpeningdate("2020-01-01");
       sqlSession.update("SitterMypageMapper.updatePayment", input);
    }
    
    /** 비밀번호 변경 테스트 (맘회원) */
    @Test
    public void testI() {    
       Mom_info input = new Mom_info();
       input.setMemberno(2);
       input.setPassword("123qwe!@#");
       sqlSession.update("MomMypageMapper.updatePassword", input);
    }
    
    /** 비밀번호 변경 테스트 (시터회원) */
    @Test
    public void testJ() {    
       Sitter_info input = new Sitter_info();
       input.setMemberno(102);
       input.setPassword("123qwe!@#");
       sqlSession.update("SitterMypageMapper.updateSitterPw", input);
    }
   
}