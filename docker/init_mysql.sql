-- Create a new database
CREATE DATABASE IF NOT EXISTS rarefield;

-- Use the created database
USE rarefield;

-- Create a new table

CREATE TABLE `user_member` (
	`user_ID`	varChar(50)	NOT NULL,
	`user_pswd`	varChar(255)	NULL,
	`user_email`	varChar(255)	NULL,
	`user_name`	varChar(255)	NULL,
	`user_phone`	varChar(255)	NULL,
	`user_birth`	varChar(255)	NULL,
	`user_postcode`	varChar(255)	NULL,
	`user_address`	varChar(255)	NULL,
	`user_detailed_address`	varChar(255)	NULL,
	`user_sex`	varChar(255)	NULL,
	`path_select`	varChar(255)	NULL,
	`user_who`	varChar(255)	NULL,
	`ralated_diseases`	varChar(255)	NULL,
	`hope_info`	varChar(255)	NULL,
	`user_info_aggree`	varChar(255)	NULL,
	`user_auth`	varChar(255)	NULL
);

CREATE TABLE `other_QnA` (
	`ques_ID`	varChar(50)	NOT NULL,
	`user_ID`	varChar(50)	NOT NULL,
	`ques_title`	varChar(255)	NULL,
	`ques_content`	varChar(255)	NULL,
	`ques_time`	varChar(255)	NULL,
	`ques_answer`	varChar(255)	NULL,
	`ques_answer_date`	varChar(255)	NULL,
	`ques_answer_comment`	varChar(255)	NOT NULL
);

CREATE TABLE `empo_community` (
	`community_ID`	varChar(50)	NOT NULL,
	`user_ID`	varChar(50)	NOT NULL,
	`community_choice`	varChar(255)	NULL,
	`community_subject`	varChar(255)	NULL,
	`community_title`	varChar(255)	NULL,
	`community_content`	varChar(255)	NULL,
	`community_date`	varChar(255)	NULL,
	`community_comment`	varChar(255)	NOT NULL
);

CREATE TABLE `trend_news` (
	`ObjectID`	VARCHAR(255)	NOT NULL,
	`NEWS_TITLE`	VARCHAR(255)	NULL,
	`NEWS_DATETIME`	DATETIME	NULL,
	`NEWS_CONTENTS`	VARCHAR(255)	NULL,
	`NEWS_URL`	VARCHAR(255)	NULL,
	`NEWS_IMAGE`	VARCHAR(255)	NULL,
	`NEWS_PAPER`	VARCHAR(255)	NULL,
	`NEWS_TOPIC`	VARCHAR(255)	NULL
);

CREATE TABLE `TREND_LAW` (
	`ObjectID`	VARCHAR(50)	NOT NULL,
	`LAW_NAME`	VARCHAR(255)	NULL,
	`PROMULGATION_NUMBER`	VARCHAR(255)	NULL,
	`PROMULGATION_DATE`	DATETIME	NULL,
	`START_DATE`	DATETIME	NULL,
	`URL`	VARCHAR(255)	NULL
);

CREATE TABLE `TREND_GUIDELINE` (
	`ObjectID`	VARCHAR(50)	NOT NULL,
	`IMPORTANCE`	VARCHAR(255)	NULL,
	`POST_CATE`	VARCHAR(255)	NULL,
	`POST_TITLE`	VARCHAR(255)	NULL,
	`POST_FILE_NAME`	VARCHAR(255)	NULL,
	`POST_CONTENTS`	VARCHAR(255)	NULL,
	`ORDER_NUMBER`	VARCHAR(255)	NULL,
	`DATE_LEGISLATION`	DATETIME	NULL,
	`DATE_START`	DATETIME	NULL
);

CREATE TABLE `TREND_SITE` (
	`ObjectID`	VARCHAR(50)	NOT NULL,
	`SITE_LINK`	VARCHAR(255)	NULL,
	`SITE_NAME`	VARCHAR(255)	NULL,
	`SITE_WHERE`	VARCHAR(255)	NULL
);

CREATE TABLE `info_rare_disease` (
	`dise_ID`	varChar(50)	NOT NULL,
	`dise_name_kr`	varChar(255)	NULL,
	`dise_name_en`	varChar(255)	NULL,
	`dise_KCD_code`	varChar(255)	NULL,
	`dise_spc_code`	varChar(255)	NULL,
	`dise_group`	varChar(255)	NULL,
	`dise_support`	varChar(255)	NULL,
	`dise_url`	varChar(255)	NULL
);

CREATE TABLE `institution` (
	`hospital_ykiho`	VARCHAR(100)	NOT NULL,
	`hospital_yadmNm`	VARCHAR(255)	NULL,
	`hospital_addr`	VARCHAR(400)	NULL,
	`hospital_telno`	VARCHAR(50)	NULL
);

CREATE TABLE `info_academininfo_ENG` (
	`ObjectID`	VARCHAR(50)	NOT NULL,
	`TITLE`	VARCHAR(255)	NULL,
	`ARTICLA_DATE`	VARCHER(255)	NULL,
	`ABSTRACT`	VARCHAR(255)	NULL,
	`RESEARCH_DATE`	INT()	NULL
);

CREATE TABLE `MANAG_PROGRAM_LIST` (
	`ObjectID`	VARCHAR(50)	NOT NULL,
	`program_title`	VARCHAR(255)	NULL,
	`program_startdate`	DATETIME	NULL,
	`program_enddate`	DATETIME	NULL,
	`program_thumnail`	VARCHAR(255)	NULL,
	`program_content`	VARCHAR(255)	NULL,
	`program_amount`	INT()	NULL
);

CREATE TABLE `user_pro_mapping` (
	`user_ID`	VARCHAR(255)	NOT NULL,
	`ObjectID`	VARCHAR(255)	NOT NULL,
	`user_pro_wish`	VARCHAR(255)	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `user_inst_mapping` (
	`user_ID`	VARCHAR(255)	NOT NULL,
	`ObjectID`	VARCHAR(255)	NOT NULL,
	`user_inst_wish`	VARCHAR(255)	NULL
);

CREATE TABLE `user_dise_mapping` (
	`user_ID`	varChar(50)	NOT NULL,
	`dise_ID`	varChar(50)	NOT NULL,
	`user_dise_wish`	varChar(255)	NULL
);

CREATE TABLE `AUTH_NAMES` (
	`UNIQUE_ID`	VARCHAR(200)	NOT NULL,
	`AUTH_NAME`	VARCHAR(255)	NULL
);

CREATE TABLE `AUTHS` (
	`UNIQUE_ID`	VARCHAR(200)	NOT NULL,
	`user_ID`	varChar(50)	NOT NULL
);

CREATE TABLE `CopyOfinfo_academininfo_RISS` (
	`ObjectID`	VARCHAR(50)	NOT NULL,
	`RESEARCH_TITLE`	VARCHAR(255)	NULL,
	`RESEARCH_URL`	VARCHAR(255)	NULL,
	`RESEARCH_AUTHOR`	VARCHAR(255)	NULL,
	`RESEARCH_INSTITUTION`	VARCHAR(255)	NULL,
	`RESEARCH_VOLUMN`	VARCHAR(255)	NULL,
	`RESEARCH_YEAR`	INT()	NULL,
	`RESEARCH_LANGUAGE`	VARCHAR(255)	NULL,
	`RESEARCH_SUBJECT`	VARCHAR(255)	NULL,
	`RESEARCH_TYPE`	VARCHAR(255)	NULL,
	`RESEARCH_PAGE`	VARCHAR(255)	NULL
);

CREATE TABLE `MANAG_NOTICE_LIST` (
	`ObjectID`	VARCHAR(50)	NOT NULL,
	`NOTICE_TITLE`	VARCHAR(255)	NULL,
	`NOTICE_DATE`	DATETIME	NULL,
	`NOTICE_TYPE`	VARCHAR(255)	NULL,
	`NOTICE_CONTENT`	VARCHAR(255)	NULL
);

ALTER TABLE `user_member` ADD CONSTRAINT `PK_USER_MEMBER` PRIMARY KEY (
	`user_ID`
);

ALTER TABLE `other_QnA` ADD CONSTRAINT `PK_OTHER_QNA` PRIMARY KEY (
	`ques_ID`,
	`user_ID`
);

ALTER TABLE `empo_community` ADD CONSTRAINT `PK_EMPO_COMMUNITY` PRIMARY KEY (
	`community_ID`,
	`user_ID`
);

ALTER TABLE `trend_news` ADD CONSTRAINT `PK_TREND_NEWS` PRIMARY KEY (
	`ObjectID`
);

ALTER TABLE `TREND_LAW` ADD CONSTRAINT `PK_TREND_LAW` PRIMARY KEY (
	`ObjectID`
);

ALTER TABLE `TREND_GUIDELINE` ADD CONSTRAINT `PK_TREND_GUIDELINE` PRIMARY KEY (
	`ObjectID`
);

ALTER TABLE `TREND_SITE` ADD CONSTRAINT `PK_TREND_SITE` PRIMARY KEY (
	`ObjectID`
);

ALTER TABLE `info_rare_disease` ADD CONSTRAINT `PK_INFO_RARE_DISEASE` PRIMARY KEY (
	`dise_ID`
);

ALTER TABLE `institution` ADD CONSTRAINT `PK_INSTITUTION` PRIMARY KEY (
	`hospital_ykiho`
);

ALTER TABLE `info_academininfo_ENG` ADD CONSTRAINT `PK_INFO_ACADEMININFO_ENG` PRIMARY KEY (
	`ObjectID`
);

ALTER TABLE `MANAG_PROGRAM_LIST` ADD CONSTRAINT `PK_MANAG_PROGRAM_LIST` PRIMARY KEY (
	`ObjectID`
);

ALTER TABLE `user_pro_mapping` ADD CONSTRAINT `PK_USER_PRO_MAPPING` PRIMARY KEY (
	`user_ID`,
	`ObjectID`
);

ALTER TABLE `user_inst_mapping` ADD CONSTRAINT `PK_USER_INST_MAPPING` PRIMARY KEY (
	`user_ID`,
	`ObjectID`
);

ALTER TABLE `user_dise_mapping` ADD CONSTRAINT `PK_USER_DISE_MAPPING` PRIMARY KEY (
	`user_ID`,
	`dise_ID`
);

ALTER TABLE `AUTH_NAMES` ADD CONSTRAINT `PK_AUTH_NAMES` PRIMARY KEY (
	`UNIQUE_ID`
);

ALTER TABLE `AUTHS` ADD CONSTRAINT `PK_AUTHS` PRIMARY KEY (
	`UNIQUE_ID`,
	`user_ID`
);

ALTER TABLE `CopyOfinfo_academininfo_RISS` ADD CONSTRAINT `PK_COPYOFINFO_ACADEMININFO_RISS` PRIMARY KEY (
	`ObjectID`
);

ALTER TABLE `MANAG_NOTICE_LIST` ADD CONSTRAINT `PK_MANAG_NOTICE_LIST` PRIMARY KEY (
	`ObjectID`
);

ALTER TABLE `other_QnA` ADD CONSTRAINT `FK_user_member_TO_other_QnA_1` FOREIGN KEY (
	`user_ID`
)
REFERENCES `user_member` (
	`user_ID`
);

ALTER TABLE `empo_community` ADD CONSTRAINT `FK_user_member_TO_empo_community_1` FOREIGN KEY (
	`user_ID`
)
REFERENCES `user_member` (
	`user_ID`
);

ALTER TABLE `user_pro_mapping` ADD CONSTRAINT `FK_user_member_TO_user_pro_mapping_1` FOREIGN KEY (
	`user_ID`
)
REFERENCES `user_member` (
	`user_ID`
);

ALTER TABLE `user_pro_mapping` ADD CONSTRAINT `FK_MANAG_PROGRAM_LIST_TO_user_pro_mapping_1` FOREIGN KEY (
	`ObjectID`
)
REFERENCES `MANAG_PROGRAM_LIST` (
	`ObjectID`
);

ALTER TABLE `user_inst_mapping` ADD CONSTRAINT `FK_user_member_TO_user_inst_mapping_1` FOREIGN KEY (
	`user_ID`
)
REFERENCES `user_member` (
	`user_ID`
);

ALTER TABLE `user_inst_mapping` ADD CONSTRAINT `FK_institution_TO_user_inst_mapping_1` FOREIGN KEY (
	`ObjectID`
)
REFERENCES `institution` (
	`hospital_ykiho`
);

ALTER TABLE `user_dise_mapping` ADD CONSTRAINT `FK_user_member_TO_user_dise_mapping_1` FOREIGN KEY (
	`user_ID`
)
REFERENCES `user_member` (
	`user_ID`
);

ALTER TABLE `user_dise_mapping` ADD CONSTRAINT `FK_info_rare_disease_TO_user_dise_mapping_1` FOREIGN KEY (
	`dise_ID`
)
REFERENCES `info_rare_disease` (
	`dise_ID`
);

ALTER TABLE `AUTHS` ADD CONSTRAINT `FK_AUTH_NAMES_TO_AUTHS_1` FOREIGN KEY (
	`UNIQUE_ID`
)
REFERENCES `AUTH_NAMES` (
	`UNIQUE_ID`
);

ALTER TABLE `AUTHS` ADD CONSTRAINT `FK_user_member_TO_AUTHS_1` FOREIGN KEY (
	`user_ID`
)
REFERENCES `user_member` (
	`user_ID`
);

