-- MySQL Workbench Synchronization
-- Generated: 2021-02-06 18:43
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Jiwoo Jung

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `ABU` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `ABU`.`admin_info` (
  `adminid` VARCHAR(50) NOT NULL COMMENT '관리자 아이디',
  `adminpw` VARCHAR(45) NOT NULL COMMENT '관리자 비밀번호',
  PRIMARY KEY (`adminid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '관리자 계정 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`comment` (
  `cmtno` INT(11) NOT NULL COMMENT '댓글 일련번호',
  `reg_date` VARCHAR(45) NOT NULL COMMENT '작성일자',
  `contents` TEXT NOT NULL COMMENT '덧글 내용',
  `revno` INT(11) NOT NULL COMMENT '리뷰 일련번호',
  PRIMARY KEY (`cmtno`),
  INDEX `fk_comment_review1_idx` (`revno` ASC) VISIBLE,
  CONSTRAINT `fk_comment_review1`
    FOREIGN KEY (`revno`)
    REFERENCES `ABU`.`review` (`revno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '리뷰 코멘트 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`connect` (
  `cntno` INT(11) NOT NULL COMMENT '구인 성사 현황',
  `applydate` DATETIME NOT NULL COMMENT '지원 날짜',
  `who` ENUM('m', 's') NOT NULL COMMENT '지원한 사람',
  `momno` INT(11) NOT NULL COMMENT '맘회원 일련번호',
  `sitterno` INT(11) NOT NULL COMMENT '시터회원 일련번호',
  `accept` ENUM('Y', 'N') NULL DEFAULT NULL COMMENT '지원 승인 여부',
  `deny_type` VARCHAR(10) NULL DEFAULT NULL COMMENT '거절 타입',
  `deny_text` TEXT NULL DEFAULT NULL COMMENT '거절 사유',
  PRIMARY KEY (`cntno`),
  INDEX `fk_match_mom_info1_idx` (`momno` ASC) VISIBLE,
  INDEX `fk_match_sitter_info1_idx` (`sitterno` ASC) VISIBLE,
  CONSTRAINT `fk_match_mom_info1`
    FOREIGN KEY (`momno`)
    REFERENCES `ABU`.`mom_info` (`momno`),
  CONSTRAINT `fk_match_sitter_info1`
    FOREIGN KEY (`sitterno`)
    REFERENCES `ABU`.`sitter_info` (`sitterno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '인터뷰 매칭 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`coupon` (
  `coupno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '쿠폰 일련번호',
  `coup_name` VARCHAR(100) NOT NULL COMMENT '쿠폰 이름',
  `coup_condition` VARCHAR(100) NOT NULL COMMENT '쿠폰 배포 조건',
  `coup_price` INT(11) NOT NULL COMMENT '쿠폰 할인율',
  `reg_date` DATETIME NULL DEFAULT NULL COMMENT '쿠폰 지급일자',
  `exp_date` DATETIME NULL DEFAULT NULL COMMENT '쿠폰 만료일자',
  `memberno` INT(11) NOT NULL COMMENT '회원 일련번호',
  PRIMARY KEY (`coupno`),
  INDEX `fk_coupon_member1_idx` (`memberno` ASC) VISIBLE,
  CONSTRAINT `fk_coupon_member1`
    FOREIGN KEY (`memberno`)
    REFERENCES `ABU`.`member` (`memberno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '쿠폰 정보 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`cus_bbs` (
  `boardnum` INT(11) NOT NULL AUTO_INCREMENT COMMENT '게시글 일련번호',
  `sub_catogory` INT(11) NOT NULL COMMENT '서브 카테고리 일련번호',
  `title` VARCHAR(255) NOT NULL COMMENT '게시글 제목',
  `text` TEXT NOT NULL COMMENT '게시글 내용',
  `writer` VARCHAR(45) NOT NULL COMMENT '작성자',
  `reg_date` DATE NOT NULL COMMENT '작성 일자',
  `edit_date` DATE NOT NULL COMMENT '수정 일자',
  PRIMARY KEY (`boardnum`),
  INDEX `fk_cus_center_cus_sub_catogory1_idx` (`sub_catogory` ASC) VISIBLE,
  CONSTRAINT `fk_cus_center_cus_sub_catogory1`
    FOREIGN KEY (`sub_catogory`)
    REFERENCES `ABU`.`cus_sub_category` (`subcateno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '고객센터 게시글 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`cus_category` (
  `cateno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '카테고리 일련번호',
  `category` VARCHAR(100) NOT NULL COMMENT '카테고리 제목',
  PRIMARY KEY (`cateno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `ABU`.`cus_sub_category` (
  `subcateno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '서브 카테고리 일련번호',
  `category` INT(11) NOT NULL COMMENT '카테고리 일련번호',
  `sub_category` VARCHAR(100) NOT NULL COMMENT '서브 카테고리 제목',
  PRIMARY KEY (`subcateno`),
  INDEX `fk_cus_sub_catogory_cus_category1_idx` (`category` ASC) VISIBLE,
  CONSTRAINT `fk_cus_sub_catogory_cus_category1`
    FOREIGN KEY (`category`)
    REFERENCES `ABU`.`cus_category` (`cateno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `ABU`.`heart` (
  `heartno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '찜하기 일련번호',
  `reg_date` DATETIME NOT NULL COMMENT '찜한 날짜',
  `who` ENUM('M', 'S') NOT NULL COMMENT '찜한 사람 타입 구분',
  `momno` INT(11) NOT NULL COMMENT '맘회원 일련번호',
  `sitterno` INT(11) NOT NULL,
  PRIMARY KEY (`heartno`),
  INDEX `fk_heart_sitter_mom_info1_idx` (`momno` ASC) VISIBLE,
  INDEX `fk_heart_sitter_info1_idx` (`sitterno` ASC) VISIBLE,
  CONSTRAINT `fk_heart_sitter_info1`
    FOREIGN KEY (`sitterno`)
    REFERENCES `ABU`.`sitter_info` (`sitterno`),
  CONSTRAINT `fk_heart_sitter_mom_info1`
    FOREIGN KEY (`momno`)
    REFERENCES `ABU`.`mom_info` (`momno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '찜하기 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`leave_member` (
  `leav_mem` INT(11) NOT NULL AUTO_INCREMENT COMMENT '탈퇴회원 일련번호',
  `id` VARCHAR(255) NOT NULL COMMENT '탈퇴회원 아이디',
  `name` VARCHAR(50) NOT NULL COMMENT '탈퇴회원 이름',
  `email` VARCHAR(255) NOT NULL COMMENT '탈퇴회원 이메일',
  `phone` VARCHAR(100) NOT NULL COMMENT '탈퇴회원 연락처',
  `reason` TEXT NOT NULL COMMENT '탈퇴 사유',
  `leave_date` DATE NOT NULL COMMENT '탈퇴 일자',
  PRIMARY KEY (`leav_mem`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `ABU`.`member` (
  `memberno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '회원 일련번호',
  `type` ENUM("M", "S") NOT NULL COMMENT '맘 or 시터 구분',
  `id` VARCHAR(255) NOT NULL COMMENT '아이디',
  `password` VARCHAR(255) NOT NULL COMMENT '비밀번호',
  `name` VARCHAR(50) NOT NULL COMMENT '이름',
  `email` VARCHAR(100) NOT NULL COMMENT '이메일',
  `phone` VARCHAR(100) NOT NULL COMMENT '연락처',
  `birthdate` DATE NOT NULL COMMENT '생년월일',
  `startdate` DATE NULL DEFAULT NULL COMMENT '이용권 시작 날짜',
  `endtate` DATE NULL DEFAULT NULL COMMENT '이용권 종료 날짜',
  `profile_img` ENUM('Y', 'N') NULL DEFAULT 'N' COMMENT '프로필 이미지',
  `job_opening` ENUM('Y', 'N') NOT NULL DEFAULT 'N' COMMENT '구인구인 여부',
  PRIMARY KEY (`memberno`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8
COMMENT = '회원 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`mom_info` (
  `momno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '맘회원 일련번호',
  `memberno` INT(11) NOT NULL COMMENT '회원 일련번호',
  `want_act` VARCHAR(45) NOT NULL COMMENT '원하는 활동',
  `want_age` VARCHAR(255) NOT NULL COMMENT '원하는 시터 나이대\\n',
  `kids_num` ENUM('1', '2') NOT NULL COMMENT '아이 수',
  `kids_age` CHAR(6) NOT NULL COMMENT '아이 나이',
  `payment` INT(11) NOT NULL COMMENT '시터에게 지불하기 원하는 시급',
  `si` VARCHAR(10) NOT NULL COMMENT '시(행정구역)',
  `gu` VARCHAR(45) NOT NULL COMMENT '구(행정구역)\\n',
  `dong` VARCHAR(45) NOT NULL COMMENT '동(행정구역)',
  `schedule` JSON NOT NULL COMMENT '가능한 시간대 입력\\n{ 정기적으로 : [ { 수 : [오전 11:00, 오후 21:00] }, { 목 : [오전 10:00, 오후 22:00] } ... ] }',
  `schedule_ok` ENUM('Y', 'N') NOT NULL COMMENT '일정 조정 가능 여부 (본 일정은 맘시터에 맞춰서 얼마든지 조정할 수 있어요.)',
  `descrip` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL COMMENT '시터가 알아야 할 사항',
  `sitter_gender` CHAR(1) NULL DEFAULT NULL COMMENT '원하는 시터 성별',
  `interview_type` CHAR(1) NULL DEFAULT NULL COMMENT '원하는 인터뷰 방식',
  `care_type` VARCHAR(255) NULL DEFAULT NULL COMMENT '원하는 돌봄 타입',
  `openingdate` DATETIME NULL DEFAULT NULL COMMENT '신청서 등록 시간',
  `apply_title` VARCHAR(255) NULL DEFAULT NULL COMMENT '신청서 제목',
  `apply_content` TEXT NULL DEFAULT NULL COMMENT '신청서 내용',
  `kids_age2` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`momno`),
  INDEX `fk_mom_info_member1_idx` (`memberno` ASC) VISIBLE,
  CONSTRAINT `fk_mom_info_member1`
    FOREIGN KEY (`memberno`)
    REFERENCES `ABU`.`member` (`memberno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '맘회원정보 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`profile_file` (
  `profno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '프로필 이미지 일련번호',
  `filename` VARCHAR(45) NOT NULL COMMENT 'input name',
  `originname` VARCHAR(255) NOT NULL COMMENT '원본 파일 이름',
  `file_dir` VARCHAR(255) NOT NULL COMMENT '파일 저장 경로',
  `file_name` VARCHAR(255) NOT NULL COMMENT '저장된 파일 이름',
  `content_type` VARCHAR(50) NOT NULL COMMENT '확장자명',
  `file_size` INT(11) NOT NULL COMMENT '파일 크기',
  `memberno` INT(11) NOT NULL COMMENT '회원 일련번호',
  PRIMARY KEY (`profno`),
  INDEX `fk_profile_file_member1_idx` (`memberno` ASC) VISIBLE,
  CONSTRAINT `fk_profile_file_member1`
    FOREIGN KEY (`memberno`)
    REFERENCES `ABU`.`member` (`memberno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '프로필 이미지 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`report` (
  `reportno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '신고 일련번호 ',
  `who` ENUM('M', 'S') NOT NULL COMMENT '신고자의 타입',
  `type` VARCHAR(100) NOT NULL COMMENT '신고 타입 (라디오 버튼)',
  `contents` TEXT NULL DEFAULT NULL COMMENT '신고 내용',
  `momno` INT(11) NOT NULL COMMENT '맘회원 일련번호',
  `sitterno` INT(11) NOT NULL COMMENT '시터회원 일련번호',
  PRIMARY KEY (`reportno`),
  INDEX `fk_report_mom_info1_idx` (`momno` ASC) VISIBLE,
  INDEX `fk_report_sitter_info1_idx` (`sitterno` ASC) VISIBLE,
  CONSTRAINT `fk_report_mom_info1`
    FOREIGN KEY (`momno`)
    REFERENCES `ABU`.`mom_info` (`momno`),
  CONSTRAINT `fk_report_sitter_info1`
    FOREIGN KEY (`sitterno`)
    REFERENCES `ABU`.`sitter_info` (`sitterno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '신고 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`resi_cert` (
  `resino` INT(11) NOT NULL AUTO_INCREMENT COMMENT '등초본 이미지 일련번호',
  `filename` VARCHAR(45) NOT NULL COMMENT 'input name',
  `originname` VARCHAR(255) NOT NULL COMMENT '원본 파일 이름',
  `file_dir` VARCHAR(255) NOT NULL COMMENT '파일 저장경로',
  `file_name` VARCHAR(255) NOT NULL COMMENT '저장된 파일 이름',
  `content_type` VARCHAR(50) NOT NULL COMMENT '확장자',
  `file_size` INT(11) NOT NULL COMMENT '파일크기',
  `resi_text` TEXT NOT NULL COMMENT '실거주지 입력값',
  `reg_date` DATETIME NOT NULL COMMENT '인증 요청 날짜',
  `cert` ENUM('Y', 'N') NOT NULL DEFAULT 'N' COMMENT '인증 승인 여부',
  `sitterno` INT(11) NOT NULL COMMENT '시터회원 일련번호',
  PRIMARY KEY (`resino`),
  INDEX `fk_resi_cert_sitter_info1_idx` (`sitterno` ASC) VISIBLE,
  CONSTRAINT `fk_resi_cert_sitter_info1`
    FOREIGN KEY (`sitterno`)
    REFERENCES `ABU`.`sitter_info` (`sitterno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '시터 등초본 인증';

CREATE TABLE IF NOT EXISTS `ABU`.`review` (
  `revno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '리뷰 일련번호',
  `category` VARCHAR(45) NOT NULL COMMENT '채용/인터뷰/실패/맘시터 후기 분류',
  `who` ENUM('M', 'S') NOT NULL COMMENT '리뷰 작성자 타입(맘/시터)',
  `writer` VARCHAR(45) NOT NULL COMMENT '작성자 이름',
  `kids_num` VARCHAR(45) NULL DEFAULT NULL COMMENT '아이 수',
  `rev_rate` CHAR(1) NOT NULL COMMENT '별점(1,2,3,4,5)',
  `reg_date` DATE NOT NULL COMMENT '후기 작성일자',
  `contents` TEXT NOT NULL COMMENT '후기 내용',
  `momno` INT(11) NULL DEFAULT NULL COMMENT '맘회원 일련번호',
  `sitterno` INT(11) NULL DEFAULT NULL COMMENT '시터회원 일련번호',
  PRIMARY KEY (`revno`),
  INDEX `fk_review_mom_info1_idx` (`momno` ASC) VISIBLE,
  INDEX `fk_review_sitter_info1_idx` (`sitterno` ASC) VISIBLE,
  CONSTRAINT `fk_review_mom_info1`
    FOREIGN KEY (`momno`)
    REFERENCES `ABU`.`mom_info` (`momno`),
  CONSTRAINT `fk_review_sitter_info1`
    FOREIGN KEY (`sitterno`)
    REFERENCES `ABU`.`sitter_info` (`sitterno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '리뷰 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`sitter_experience` (
  `expeno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '경력 일련번호',
  `expe_contents` VARCHAR(255) NOT NULL COMMENT '경험 내용',
  `expe_start_date` DATE NOT NULL COMMENT '경험 시작 일자',
  `expe_end_date` DATE NOT NULL COMMENT '경험 종료 일자',
  `sitterno` INT(11) NOT NULL COMMENT '시터회원 일련번호',
  PRIMARY KEY (`expeno`),
  INDEX `fk_sitter_experience_sitter_info1_idx` (`sitterno` ASC) VISIBLE,
  CONSTRAINT `fk_sitter_experience_sitter_info1`
    FOREIGN KEY (`sitterno`)
    REFERENCES `ABU`.`sitter_info` (`sitterno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '시터 경력 테이블';

CREATE TABLE IF NOT EXISTS `ABU`.`sitter_info` (
  `sitterno` INT(11) NOT NULL AUTO_INCREMENT COMMENT '시터회원 일련번호',
  `memberno` INT(11) NOT NULL COMMENT '회원 일련번호',
  `sitter_type` VARCHAR(45) NOT NULL COMMENT '시터 타입(대학생, 부모님 등)',
  `want_act` VARCHAR(45) NOT NULL COMMENT '가능한 돌봄 유형',
  `want_age` VARCHAR(45) NOT NULL COMMENT '돌보기 원하는 아이 나이 (신생아, 영아, 유아, 초등학생)',
  `si` VARCHAR(45) NOT NULL COMMENT '시(행정구역)',
  `gu` VARCHAR(45) NOT NULL COMMENT '구(행정구역)',
  `dong` VARCHAR(45) NOT NULL COMMENT '동(행정구역)',
  `payment` INT(11) NOT NULL COMMENT '원하는 시급\\n',
  `cctv` ENUM('Y', 'N') NOT NULL COMMENT 'cctv 동의여부',
  `schedule` ENUM('1', '2', '3', '4', '5') NOT NULL COMMENT '활동 가능 시간 \\n1 : 월~금 종일 \\n2 : 월~금 오전\\n3 : 월~금 오후\\n4 : 주말 종일',
  `schedule_set` JSON NOT NULL COMMENT '원하는 시간 직접 입력 \\n{ startdate : \"2021-01-21\";\\nday : [\"tue\", \"wed\"];\\ntime : [11:00, 21:00];\\nwhile : \"3mon\";\\n}',
  `introduce` TEXT NULL DEFAULT NULL COMMENT '자기소개',
  `answer` INT(11) NULL DEFAULT NULL COMMENT '응답률',
  `openingdate` DATETIME NULL DEFAULT NULL COMMENT '신청서 등록 시간',
  PRIMARY KEY (`sitterno`),
  INDEX `fk_sitter_info_member1_idx` (`memberno` ASC) VISIBLE,
  CONSTRAINT `fk_sitter_info_member1`
    FOREIGN KEY (`memberno`)
    REFERENCES `ABU`.`member` (`memberno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = '시터 회원정보 테이블';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
