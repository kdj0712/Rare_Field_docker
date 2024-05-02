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
	`user_resident_registration_num1`	varChar(255)	NULL,
	`user_resident_registration_num2`	varChar(255)	NULL,
	`user_postcode`	varChar(255)	NULL,
	`user_address`	varChar(255)	NULL,
	`user_detailed_address`	varChar(255)	NULL,
	`user_sex`	varChar(255)	NULL,
	`path_select`	varChar(255)	NULL,
	`user_who`	varChar(255)	NULL,
	`ralated_diseases`	varChar(255)	NULL,
	`hope_info`	varChar(255)	NULL,
	`join_date`	varChar(255)	NULL,
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
	`community_title`	varChar(255)	NULL,
	`community_content`	varChar(255)	NULL,
	`community_date`	varChar(255)	NULL,
	`community_comment`	varChar(255)	NOT NULL
);

CREATE TABLE `NEWS` (
	`ObjectID`	VARCHAR(255)	NOT NULL,
	`NEWS_TITLE`	VARCHAR(255)	NULL,
	`NEWS_LINK`	VARCHAR(255)	NULL
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
	`ObjectID`	VARCHAR(255)	NOT NULL,
	`Field`	VARCHAR(255)	NULL,
	`Field2`	VARCHAR(255)	NULL
);


CREATE TABLE `program` (
	`ObjectID`	VARCHAR(255)	NOT NULL,
	`Field`	VARCHAR(255)	NULL,
	`Field4`	VARCHAR(255)	NULL,
	`Field2`	VARCHAR(255)	NULL,
	`Field3`	VARCHAR(255)	NULL
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

ALTER TABLE `NEWS` ADD CONSTRAINT `PK_NEWS` PRIMARY KEY (
	`ObjectID`
);

ALTER TABLE `info_rare_disease` ADD CONSTRAINT `PK_INFO_RARE_DISEASE` PRIMARY KEY (
	`dise_ID`
);

ALTER TABLE `institution` ADD CONSTRAINT `PK_INSTITUTION` PRIMARY KEY (
	`ObjectID`
);

ALTER TABLE `program` ADD CONSTRAINT `PK_PROGRAM` PRIMARY KEY (
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

ALTER TABLE `user_pro_mapping` ADD CONSTRAINT `FK_program_TO_user_pro_mapping_1` FOREIGN KEY (
	`ObjectID`
)
REFERENCES `program` (
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
	`ObjectID`
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

