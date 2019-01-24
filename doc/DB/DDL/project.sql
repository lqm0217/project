-- $Id: DBA OKUTAMA(MySQL) Ver 1.0.1.25$
-- 
--  Database Name　       ：project
--  Database Description　：MySQL Database Schema for Project
--  　　　　　　　　　　
--  　　　　　　　　　　
-- 
--  Created On：2019/01/24
--  [DBA OKUTAMA(MySQL) Ver 1.0.1.25]
-- 

--
-- Table structure for table `m_country`
--

CREATE TABLE m_country (
  country_id int(3) unsigned NOT NULL auto_increment,
  country_code varchar(20) NOT NULL,
  country_disp_name varchar(10) NOT NULL,
  country_name varchar(40) NOT NULL,
  PRIMARY KEY  (country_id),
  UNIQUE KEY idx_m_country_uk01 (country_code),
  KEY idx_m_country_mul01 (country_code,country_disp_name)
) TYPE=InnoDB;

--
-- Table structure for table `m_charge`
--

CREATE TABLE m_charge (
  charge_id int(10) unsigned NOT NULL auto_increment,
  charge_code varchar(10) NOT NULL default '',
  charge_name varchar(50) NOT NULL default '',
  project_id int(10) unsigned NOT NULL,
  sys_create_datetime datetime NOT NULL,
  sys_create_staff varchar(32) NOT NULL,
  sys_update_datetime datetime default NULL,
  sys_update_staff varchar(32) default NULL,
  PRIMARY KEY  (charge_id),
  UNIQUE KEY idx_m_charge_uk01 (charge_code)
) TYPE=InnoDB;

--
-- Table structure for table `t_client`
--

CREATE TABLE t_client (
  client_id int(5) unsigned NOT NULL auto_increment,
  client_full_name varchar(100) NOT NULL,
  client_disp_name varchar(40) NOT NULL,
  client_country varchar(20) NOT NULL,
  client_address varchar(100) NOT NULL,
  client_del varchar(12) NOT NULL,
  sys_create_datetime datetime NOT NULL,
  sys_create_staff varchar(32) NOT NULL,
  sys_update_datetime datetime default NULL,
  sys_update_staff varchar(32) default NULL,
  PRIMARY KEY  (client_id),
  UNIQUE KEY idx_t_client_uk01 (client_disp_name)
) TYPE=InnoDB;

--
-- Table structure for table `t_project`
--

CREATE TABLE t_project (
  project_id int(10) unsigned NOT NULL auto_increment,
  project_name varchar(255) NOT NULL default '',
  project_disp_name varchar(50) NOT NULL default '',
  project_owner varchar(32) NOT NULL default '',
  client_id int(5) unsigned NOT NULL,
  start_date date NOT NULL,
  end_date date default NULL,
  status tinyint(1) unsigned NOT NULL default '1',
  sys_delete_flag tinyint(1) unsigned default '0',
  sys_create_datetime datetime NOT NULL,
  sys_create_staff varchar(32) NOT NULL,
  sys_update_datetime datetime default NULL,
  sys_update_staff varchar(32) default NULL,
  PRIMARY KEY  (project_id)
) TYPE=InnoDB;

--
-- Table structure for table `t_staff`
--

CREATE TABLE t_staff (
  staff_id int(10) unsigned NOT NULL auto_increment,
  staff_name varchar(20) NOT NULL default '',
  employee_id varchar(20) NOT NULL default '',
  password varchar(20) NOT NULL,
  sex tinyint(1) unsigned NOT NULL default '0',
  level tinyint(2) unsigned NOT NULL default '13',
  status_flag tinyint(1) unsigned NOT NULL default '0',
  start_date date NOT NULL,
  end_date date default NULL,
  sys_create_datetime datetime NOT NULL,
  sys_create_staff varchar(32) NOT NULL,
  sys_update_datetime datetime default NULL,
  sys_update_staff varchar(32) default NULL,
  PRIMARY KEY  (staff_id)
) TYPE=InnoDB;

--
-- Table structure for table `t_project_staff`
--

CREATE TABLE t_project_staff (
  project_staff_id int(10) unsigned NOT NULL auto_increment,
  project_id int(10) unsigned NOT NULL,
  staff_id int(10) unsigned NOT NULL default '',
  career_level tinyint(2) unsigned NOT NULL default '13',
  assgin_start_date date NOT NULL,
  assgin_end_date date default NULL,
  assgin_team varchar(50) default NULL,
  assgin_status tinyint(1) unsigned NOT NULL default '0',
  sys_delete_flag tinyint(1) unsigned NOT NULL default '0',
  sys_create_datetime datetime NOT NULL,
  sys_create_staff varchar(32) NOT NULL,
  sys_update_datetime datetime default NULL,
  sys_update_staff varchar(32) default NULL,
  PRIMARY KEY  (project_staff_id),
  UNIQUE KEY idx_t_project_staff_uk01 (project_id,staff_id,assgin_start_date)
) TYPE=InnoDB;

--
-- Table structure for table `t_attendance`
--

CREATE TABLE t_attendance (
  attendance_id bigint(20) unsigned NOT NULL auto_increment,
  staff_id int(10) unsigned NOT NULL,
  attendance_day date NOT NULL,
  attendance_start_time datetime NOT NULL,
  attendance_end_time datetime default NULL,
  attendance_comment varchar(100),
  sys_create_datetime datetime NOT NULL,
  sys_create_staff varchar(32) NOT NULL,
  sys_update_datetime datetime default NULL,
  sys_update_staff varchar(32) default NULL,
  PRIMARY KEY  (attendance_id),
  UNIQUE KEY idx_t_attendance_uk01 (staff_id,attendance_day)
) TYPE=InnoDB;

--
-- Table structure for table `t_staff_charge`
--

CREATE TABLE t_staff_charge (
  staff_charge_id bigint(20) unsigned NOT NULL auto_increment,
  staff_id int(10) unsigned NOT NULL,
  charge_day date NOT NULL,
  charge_code varchar(10) NOT NULL default '',
  charge_hours int(2) default '9',
  charge_comment varchar(100),
  sys_create_datetime datetime NOT NULL,
  sys_create_staff varchar(32) NOT NULL,
  sys_update_datetime datetime default NULL,
  sys_update_staff varchar(32) default NULL,
  PRIMARY KEY  (staff_charge_id),
  UNIQUE KEY idx_t_staff_charge_uk01 (staff_id,charge_day,charge_code)
) TYPE=InnoDB;

