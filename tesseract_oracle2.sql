/*
 Navicat Premium Data Transfer

 Source Server         : oracle
 Source Server Type    : Oracle
 Source Server Version : 210000 (Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production)
 Source Host           : localhost:1521
 Source Schema         : TEST

 Target Server Type    : Oracle
 Target Server Version : 210000 (Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production)
 File Encoding         : 65001

 Date: 01/01/2023 13:20:15
*/


-- ----------------------------
-- Table structure for DOCUMENTS
-- ----------------------------
DROP TABLE "TEST"."DOCUMENTS";
CREATE TABLE "TEST"."DOCUMENTS" (
  "ID" NUMBER VISIBLE DEFAULT "TEST"."ISEQ$$_75968".nextval NOT NULL,
  "PROGRAM_STUDI_ID" NUMBER VISIBLE DEFAULT NULL,
  "FILE_NAME" VARCHAR2(255 BYTE) VISIBLE DEFAULT NULL,
  "FILE_PATH" VARCHAR2(255 BYTE) VISIBLE DEFAULT NULL,
  "STATUS" VARCHAR2(50 BYTE) VISIBLE DEFAULT NULL,
  "TITLE" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of DOCUMENTS
-- ----------------------------

-- ----------------------------
-- Table structure for FILES
-- ----------------------------
DROP TABLE "TEST"."FILES";
CREATE TABLE "TEST"."FILES" (
  "ID" NUMBER VISIBLE DEFAULT "TEST"."ISEQ$$_75976".nextval NOT NULL,
  "DOCUMENT_ID" NUMBER VISIBLE DEFAULT NULL,
  "FILE_NAME" VARCHAR2(255 BYTE) VISIBLE DEFAULT NULL,
  "FILE_PATH" VARCHAR2(255 BYTE) VISIBLE DEFAULT NULL,
  "TEXT" LONG VISIBLE DEFAULT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FILES
-- ----------------------------

-- ----------------------------
-- Table structure for FILE_PEGAWAI
-- ----------------------------
DROP TABLE "TEST"."FILE_PEGAWAI";
CREATE TABLE "TEST"."FILE_PEGAWAI" (
  "ID" NUMBER VISIBLE DEFAULT "TEST"."ISEQ$$_75979".nextval NOT NULL,
  "DOCUMENT_ID" NUMBER VISIBLE DEFAULT NULL,
  "FILE_ID" NUMBER VISIBLE DEFAULT NULL,
  "PEGAWAI_ID" NUMBER VISIBLE DEFAULT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of FILE_PEGAWAI
-- ----------------------------
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('1', NULL, '23', '1');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('2', NULL, '23', '2');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('3', NULL, '23', '4');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('4', NULL, '23', '5');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('5', NULL, '23', '6');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('6', NULL, '23', '7');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('7', NULL, '23', '8');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('8', NULL, '23', '9');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('9', NULL, '23', '10');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('10', NULL, '24', '12');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('11', NULL, '24', '15');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('12', NULL, '24', '16');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('13', NULL, '24', '17');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('14', NULL, '24', '18');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('15', NULL, '24', '19');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('16', NULL, '27', '33');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('17', NULL, '27', '35');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('18', NULL, '24', '39');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('19', NULL, '27', '44');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('20', NULL, '27', '51');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('21', NULL, '27', '57');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('22', NULL, '27', '59');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('23', NULL, '27', '60');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('24', NULL, '27', '61');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('25', NULL, '29', '62');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('26', NULL, '29', '63');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('27', NULL, '29', '64');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('28', NULL, '31', '65');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('29', NULL, '29', '67');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('30', NULL, '29', '69');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('31', NULL, '29', '70');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('32', NULL, '31', '71');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('33', NULL, '29', '72');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('34', NULL, '29', '75');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('35', NULL, '32', '76');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('36', NULL, '30', '77');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('37', NULL, '32', '83');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('38', NULL, '30', '84');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('39', NULL, '30', '85');
INSERT INTO "TEST"."FILE_PEGAWAI" VALUES ('40', NULL, '24', '166');

-- ----------------------------
-- Table structure for PEGAWAI
-- ----------------------------
DROP TABLE "TEST"."PEGAWAI";
CREATE TABLE "TEST"."PEGAWAI" (
  "ID" NUMBER VISIBLE DEFAULT "TEST"."ISEQ$$_75983".nextval NOT NULL,
  "PROGRAM_STUDI_ID" NUMBER VISIBLE DEFAULT NULL,
  "NAMA" VARCHAR2(255 BYTE) VISIBLE DEFAULT NULL,
  "STATUS" VARCHAR2(255 BYTE) VISIBLE DEFAULT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PEGAWAI
-- ----------------------------
INSERT INTO "TEST"."PEGAWAI" VALUES ('3', '6', 'Ali Husein A', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('1', '6', 'Agus Indra Gunawan', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('2', '6', 'Akhmad Hendriawan', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('4', '6', 'Alrijadjis', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('5', '6', 'Ardik Wijayanto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('6', '6', 'Arif Irwansyah', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('7', '6', 'Bambang Sumantri', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('8', '6', 'Budi Nur Iman', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('9', '6', 'Dedid Cahya Happyanto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('10', '6', 'Edi Satriyanto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('11', '6', 'Elizabeth Anggraeni Amalo', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('12', '6', 'Elly Purwantini', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('13', '6', 'Eru Puspita', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('14', '6', 'Firman Arifin', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('15', '6', 'Hary Oktavianto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('16', '6', 'Hendhi Hermawan', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('17', '6', 'Kemalasari', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('18', '6', 'Legowo Sulistijono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('19', '6', 'Madyono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('20', '6', 'Moch. Rochmad', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('21', '6', 'Mohd. Syafrudin', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('22', '6', 'Ni''am Tamami', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('23', '6', 'Paulus Susetyo Wardana', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('24', '6', 'Reesa Akbar', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('25', '6', 'Retno Sukmaningrum', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('26', '6', 'Rika Rokhana', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('27', '6', 'Ronny Susetyoko', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('28', '6', 'Rusminto Tjatur Widodo', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('29', '6', 'Santi Anggraini', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('30', '6', 'Taufiqurrahman', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('31', '6', 'Wahjoe Tjatur Sesulihatien', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('32', '6', 'Zainal Arief', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('33', '11', 'Ahmad Zainudin', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('34', '11', 'Akuwan Saleh', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('35', '11', 'Amang Sudarsono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('36', '11', 'Anang Budikarso', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('37', '11', 'Ari Wijayanti', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('38', '11', 'Aries Pratiarso', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('39', '11', 'Arifin', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('40', '11', 'Budi Aswoyo', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('41', '11', 'Djoko Santoso', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('42', '11', 'Hani''ah Mahmudah', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('43', '11', 'Hari Wahjuningrat Suparno', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('44', '11', 'Haryadi Amran Darwito', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('45', '11', 'I Gede Puja Astawa', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('46', '11', 'Ida Anisah', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('47', '11', 'Miftahul Huda', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('48', '11', 'Mike Yuliana', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('49', '11', 'Moch. Zen Samsono Hadi', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('50', '11', 'Muhamad Milchan', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('51', '11', 'Nanang Syahroni', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('52', '11', 'Nur Adi Siswandari', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('53', '11', 'Okkie Puspitorini', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('54', '11', 'Prima Kristalina', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('55', '11', 'Rahardhita Widyatra Sudibyo', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('56', '11', 'Reni Soelistijorini', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('57', '11', 'Rini Satiti', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('58', '11', 'Susi Harliani', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('59', '11', 'Titon Dutono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('60', '11', 'Tri Budi Santoso', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('61', '11', 'Yoedy Moegiharto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('62', '5', 'Ainur Rofiq Nansur', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('63', '5', 'Anang Tjahjono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('64', '5', 'Arman Jaya', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('65', '5', 'Diah Septi Yanaratri', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('66', '5', 'Dimas Okky Anggriawan', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('67', '5', 'Eka Prasetyono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('68', '5', 'Endro Wahjono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('69', '5', 'Epyk Sunarno', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('70', '5', 'Era Purwanto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('71', '5', 'Farid Dwi Murdianto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('72', '5', 'Gigih Prabowo', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('73', '5', 'Hendik Eko Hadi Suharyanto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('74', '5', 'Imam Dui Agusalim', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('75', '5', 'Indhana Sudiharto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('76', '5', 'Indra Ferdiansyah', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('77', '5', 'Irianto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('78', '5', 'Lucky Pradigta Setiya Raharja', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('79', '5', 'Mochammad Machmud Rifadil', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('80', '5', 'Moh. Zaenal Efendi', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('81', '5', 'Novie Ayub Windarko', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('82', '5', 'Ony Asrarul Qudsi', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('83', '5', 'Rachma Prilian Eviningsih', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('84', '5', 'Renny Rakhmawati', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('85', '5', 'Suhariningsih', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('86', '5', 'Suryono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('87', '5', 'Sutedjo', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('88', '5', 'Syechu Dwitya Nugraha', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('89', '5', 'Yahya Chusna Arif', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('90', '8', 'Ahmad Syauqi Ahsan', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('91', '8', 'Aliridho Barakbah', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('92', '8', 'Arif Basofi', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('93', '8', 'Arna Fariza', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('94', '8', 'Desy Intan Permatasari', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('95', '8', 'Entin Martiana Kusumaningtyas', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('96', '8', 'Fadilah Fahrul Hardiansyah', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('97', '8', 'Ferry Astika Saputra', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('98', '8', 'Fitri Setyorini', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('99', '8', 'Hero Yudo Martono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('100', '8', 'Idris Winarno', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('101', '8', 'Ira Prasetyaningrum', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('102', '8', 'Irma Wulandari', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('103', '8', 'Irwan Sumarsono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('104', '8', 'Isbat Uzzin Nadhori', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('105', '8', 'Iwan Syarif', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('106', '8', 'Jauari Akhmad Nur Hasim', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('107', '8', 'M. Udin Harun Al Rasyid', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('108', '8', 'Muarifin', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('109', '8', 'Nana Ramadijanti', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('110', '8', 'Nur Rosyid Mubtadai', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('111', '8', 'Rengga Asmara', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('112', '8', 'Tessy Badriyah', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('113', '8', 'Tita Karlita', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('114', '8', 'Tri Hadiah Muliawati', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('115', '8', 'Umi Sa''adah', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('116', '8', 'Wiratmoko Yuwono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('117', '8', 'Yuliana Setiowati', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('118', '10', 'Adytia Darmawan', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('119', '10', 'Anhar Risnumawan', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('120', '10', 'Didik Setyo Purnomo', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('121', '10', 'Eko Budi Utomo', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('122', '10', 'Eko Henfri Binugroho', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('123', '10', 'Endah Suryawati Ningrum', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('124', '10', 'Endra Pitowarno', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('125', '10', 'Eny Kusumawati', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('126', '10', 'Farida Gamar', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('127', '10', 'Indra Adji Sulistijono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('128', '10', 'Mohamad Nasyir Tamara', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('129', '10', 'Nofria Hanafi', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('130', '10', 'Novian Fajar Satria', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('131', '10', 'Raden Sanggar Dewanto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('132', '10', 'Zaqiatud Darojah', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('133', '9', 'Adnan Rachmat Anom Besari', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('134', '9', 'Bayu Sandi Marta', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('135', '9', 'Bima Sena Bayu Dewantara', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('136', '9', 'Dadet Pramadihanto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('137', '9', 'Dewi Mutiara Sari', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('138', '9', 'Dias Agata', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('139', '9', 'Dwi Kurnia Basuki', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('140', '9', 'Fernando Ardila', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('141', '9', 'Heny Yuniarti', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('142', '9', 'Iwan Kurnianto Wibowo', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('143', '9', 'Mochamad Mobed Bachtiar', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('144', '9', 'Riyanto Sigit', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('145', '9', 'Setiawardhana', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('146', '9', 'Sigit Wasista', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('147', '9', 'Tri Harsono', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('148', '2', 'Achmad Basuki', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('149', '2', 'Akhmad Alimudin', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('150', '2', 'Aliv Faizal Muhammad', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('151', '2', 'Citra Devi Murdaningtyas', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('152', '2', 'Dwi Susanto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('153', '2', 'Fardani Annisa Damastuti', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('154', '2', 'Hestiasari Rante', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('155', '2', 'Martianda Erste Anggraeni', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('156', '2', 'Muh. Hasbi Assidiqi', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('157', '2', 'Muhammad Agus Zainuddin', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('158', '2', 'Novita Astin', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('159', '2', 'Rosiyah Faradisa', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('160', '2', 'Sritrusta Sukaridhoto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('161', '2', 'Widi Sarinastiti', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('162', '4', 'Arrad Ghani Safitra', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('163', '4', 'Erik Tridianto', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('164', '4', 'Fifi Hesty Sholihah', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('165', '4', 'Hendrik Elvian Gayuh Prasetya', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('166', '4', 'Imamul Arifin', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('167', '4', 'Joke Pratilastiarso', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('168', '4', 'Lohdy Diana', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('169', '4', 'Nu Rhahida Arini', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('170', '4', 'Prima Dewi Permatasari', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('171', '4', 'Radina Anggun Nurisma', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('172', '4', 'Rif''ah Amalia', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('173', '4', 'Setyo Nugroho', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('174', '4', 'Teguh Hady Ariwibowo', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('175', '7', 'Artiarini Kusuma N.', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('176', '7', 'Fahim Nur Cahya Bagar', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('177', '7', 'Halimatus Sa''dyah', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('178', '7', 'Kholid Fathoni', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('179', '7', 'Mohamad Safrodin', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('180', '7', 'Mohammad Zikky', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('181', '7', 'Rizky Yuniar Hakkun', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('182', '7', 'Zulhaydar Fairozal Akbar', 'DOSEN');
INSERT INTO "TEST"."PEGAWAI" VALUES ('183', '3', 'Achmad Djalaludin', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('184', '3', 'Achmad Huzaini', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('185', '3', 'Aestatica Ratri', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('186', '3', 'Agus Fitriyanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('187', '3', 'Ali Shodikin', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('188', '3', 'Anang Siswanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('189', '3', 'Aris Eko Saputro', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('190', '3', 'Ashadi Kurniawan', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('191', '3', 'Bahtiar Arif', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('192', '3', 'Bahtiar Setiono', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('193', '3', 'Bambang Purwanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('194', '3', 'Djohan Kuntjoro', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('195', '3', 'Dwi Gatot Saputro', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('196', '3', 'Eko Supriyanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('197', '3', 'Eko Susanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('198', '3', 'Erwin Ardiansyah', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('199', '3', 'Firmansyah Adi Nugroho', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('200', '3', 'Hariono', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('201', '3', 'Ilham Iskandariansyah', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('202', '3', 'Imam Ghozali', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('203', '3', 'Ismail', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('204', '3', 'Luluk Badriyah', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('205', '3', 'Mochamad Bagus Kurniawan', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('206', '3', 'Mochammad Darwis', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('207', '3', 'Moga Kurniajaya', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('208', '3', 'Muchamad Chaninul Fuad', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('209', '3', 'Muh. Gatut Hermandana', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('210', '3', 'Muhammad Nugraha Akbar', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('211', '3', 'Muhammad Rizqi Erliyanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('212', '3', 'Ridwan Achsan Ramadhan', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('213', '3', 'Rofiulloh Mu''azin Al-Insof', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('214', '3', 'Sayudi', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('215', '3', 'Sidiq Prasetyo', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('216', '3', 'Subari', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('217', '3', 'Sulton', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('218', '3', 'Suprijanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('219', '3', 'Suwito', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('220', '3', 'Wiwit Priantono', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('221', '3', 'Yasin Setio Budi', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('222', '1', 'Abd. Wahid', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('223', '1', 'Abdul Wachid', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('224', '1', 'Abdul Wahib', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('225', '1', 'Achmad Bashori', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('226', '1', 'Achmad Bilal Hamdani', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('227', '1', 'Adi Pranoto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('228', '1', 'Aditya Muntoro', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('229', '1', 'Agus Ari Wahjudi', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('230', '1', 'Agus Setiyawan', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('231', '1', 'Ahmad Taufiq Hidayat', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('232', '1', 'Amira Oribia Wanda Sasmita', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('233', '1', 'Amirul Nur Santi Basori Putri', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('234', '1', 'Andri Ristanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('235', '1', 'Andri Suryandari', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('236', '1', 'Anggar Sari', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('237', '1', 'Anggi Puspita Sari', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('238', '1', 'Anita Oktavia', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('239', '1', 'Anjang Susono', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('240', '1', 'Aripin', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('241', '1', 'Arista Rahmawati Jamilah', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('242', '1', 'Bada'' Amru Al Muhtadin', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('243', '1', 'Bowo Raharjo', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('244', '1', 'Cholida Ariani', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('245', '1', 'Dariyo', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('246', '1', 'Darto Suswili Wahyudi', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('247', '1', 'Didik Santoso', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('248', '1', 'Dimas Angga Wahyu Putra', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('249', '1', 'Dyah Ayu Retnoning Wulan', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('250', '1', 'Eka Wulandari', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('251', '1', 'Eko Mardiyanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('252', '1', 'Elsha Qhusnul Romadhona', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('253', '1', 'Elya Intan Pratiwi', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('254', '1', 'Endang Purnomowati', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('255', '1', 'Endro Leksono', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('256', '1', 'Esti Kusumawardani', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('257', '1', 'Faisol Abied', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('258', '1', 'Gentur Pamungkas Putra Widyastoro', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('259', '1', 'Hardi Agung Wibowo', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('260', '1', 'Hariyono', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('261', '1', 'Harun Effendy', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('262', '1', 'Hary Pujo Widayanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('263', '1', 'Hendi Yanuar Setianto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('264', '1', 'Heri Susanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('265', '1', 'Imam Nurul Hidayat', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('266', '1', 'Irin Tri Anggraini', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('267', '1', 'Ismail INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (kerjasama)', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('268', '1', 'Isnadi', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('269', '1', 'Isnaeny Maria Ulfa', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('270', '1', 'Juhri Ismiyanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('271', '1', 'Juniar Murdiana', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('272', '1', 'Kartika Sari Dewi Ashari', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('273', '1', 'Katijo', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('274', '1', 'Khafiduddin', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('275', '1', 'Kundoyo', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('276', '1', 'Lini Herma Andriyana', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('277', '1', 'Lutfifanti Purwaningtyas Wulan Sufandy', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('278', '1', 'M. Dini', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('279', '1', 'Mardiyono', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('280', '1', 'Mariyati', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('281', '1', 'Marno', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('282', '1', 'Martha Citra Dewi', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('283', '1', 'Mat Urip', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('284', '1', 'Mega Ofita Abrilia', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('285', '1', 'Moch. Bagus Surahman', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('286', '1', 'Moch. Chusnan', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('287', '1', 'Moh. Khoirul Mutakin', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('288', '1', 'Muh. Makhfut', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('289', '1', 'Muhammad Bachtiar Dzulfikar', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('290', '1', 'Muhammad Fahrizal Eka Ariansah', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('291', '1', 'Musthofa Syahid', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('292', '1', 'Musthofah', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('293', '1', 'Nabilatul Fikriyah', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('294', '1', 'Nur Azizah', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('295', '1', 'Pindharwati Bandiannaningsih', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('296', '1', 'Pipid Muntoro', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('297', '1', 'Poerwanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('298', '1', 'Puspasari Susanti', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('299', '1', 'Putri Puji Rahayu', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('300', '1', 'Rahmad Faisol', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('301', '1', 'Reny Ayu Aprilliyanti Putri', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('302', '1', 'Ria Sukmawati', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('303', '1', 'Rizal Mulia', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('304', '1', 'Ruhul Akbar', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('305', '1', 'Siti Ayu Mulyantika', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('306', '1', 'Siti Maisyaroh', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('307', '1', 'Soemantri', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('308', '1', 'Suci Rahayu', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('309', '1', 'Sudarto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('310', '1', 'Sukarman', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('311', '1', 'Sulistiyani', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('312', '1', 'Sumiarsih', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('313', '1', 'Suratman Hadi Nopianto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('314', '1', 'Suratno', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('315', '1', 'Suria Hardita Duanti Putri', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('316', '1', 'Suroto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('317', '1', 'Sutikno', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('318', '1', 'Suwaji', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('319', '1', 'Syahirrudin', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('320', '1', 'Syaifullah', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('321', '1', 'Syamsul Bahri', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('322', '1', 'Teguh Setyo Utomo', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('323', '1', 'Tonny Adi Hartanto', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('324', '1', 'Tri Setyaningsih', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('325', '1', 'Umang Prasetyo', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('326', '1', 'Warjilan', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('327', '1', 'Wibisono', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('328', '1', 'Yeni Suryani', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('329', '1', 'Yetty Handayani', 'PEGAWAI');
INSERT INTO "TEST"."PEGAWAI" VALUES ('330', '1', 'Zakaria Akhmad Ubaidillah', 'PEGAWAI');

-- ----------------------------
-- Table structure for PROGRAM_STUDI
-- ----------------------------
DROP TABLE "TEST"."PROGRAM_STUDI";
CREATE TABLE "TEST"."PROGRAM_STUDI" (
  "ID" NUMBER VISIBLE DEFAULT "TEST"."ISEQ$$_75986".nextval NOT NULL,
  "NAME" VARCHAR2(255 BYTE) VISIBLE DEFAULT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PROGRAM_STUDI
-- ----------------------------
INSERT INTO "TEST"."PROGRAM_STUDI" VALUES ('1', 'ADMINISTRASI');
INSERT INTO "TEST"."PROGRAM_STUDI" VALUES ('2', 'MMB');
INSERT INTO "TEST"."PROGRAM_STUDI" VALUES ('3', 'PLP');
INSERT INTO "TEST"."PROGRAM_STUDI" VALUES ('4', 'SPE');
INSERT INTO "TEST"."PROGRAM_STUDI" VALUES ('5', 'T ELEKTRO INDUSTRI');
INSERT INTO "TEST"."PROGRAM_STUDI" VALUES ('6', 'T ELEKTRONIKA');
INSERT INTO "TEST"."PROGRAM_STUDI" VALUES ('7', 'T GAME');
INSERT INTO "TEST"."PROGRAM_STUDI" VALUES ('8', 'T INFORMATIKA');
INSERT INTO "TEST"."PROGRAM_STUDI" VALUES ('9', 'T KOMPUTER');
INSERT INTO "TEST"."PROGRAM_STUDI" VALUES ('10', 'T MEKATRONIKA');
INSERT INTO "TEST"."PROGRAM_STUDI" VALUES ('11', 'T TELEKOMUNIKASI');

-- ----------------------------
-- Sequence structure for ISEQ$$_75965
-- ----------------------------
DROP SEQUENCE "TEST"."ISEQ$$_75965";
CREATE SEQUENCE "TEST"."ISEQ$$_75965" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_75968
-- ----------------------------
DROP SEQUENCE "TEST"."ISEQ$$_75968";
CREATE SEQUENCE "TEST"."ISEQ$$_75968" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_75976
-- ----------------------------
DROP SEQUENCE "TEST"."ISEQ$$_75976";
CREATE SEQUENCE "TEST"."ISEQ$$_75976" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_75979
-- ----------------------------
DROP SEQUENCE "TEST"."ISEQ$$_75979";
CREATE SEQUENCE "TEST"."ISEQ$$_75979" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_75983
-- ----------------------------
DROP SEQUENCE "TEST"."ISEQ$$_75983";
CREATE SEQUENCE "TEST"."ISEQ$$_75983" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for ISEQ$$_75986
-- ----------------------------
DROP SEQUENCE "TEST"."ISEQ$$_75986";
CREATE SEQUENCE "TEST"."ISEQ$$_75986" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Primary Key structure for table DOCUMENTS
-- ----------------------------
ALTER TABLE "TEST"."DOCUMENTS" ADD CONSTRAINT "SYS_C008306" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table DOCUMENTS
-- ----------------------------
ALTER TABLE "TEST"."DOCUMENTS" ADD CONSTRAINT "SYS_C008305" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table FILES
-- ----------------------------
ALTER TABLE "TEST"."FILES" ADD CONSTRAINT "SYS_C008308" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table FILES
-- ----------------------------
ALTER TABLE "TEST"."FILES" ADD CONSTRAINT "SYS_C008307" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table FILE_PEGAWAI
-- ----------------------------
ALTER TABLE "TEST"."FILE_PEGAWAI" ADD CONSTRAINT "SYS_C008310" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table FILE_PEGAWAI
-- ----------------------------
ALTER TABLE "TEST"."FILE_PEGAWAI" ADD CONSTRAINT "SYS_C008309" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PEGAWAI
-- ----------------------------
ALTER TABLE "TEST"."PEGAWAI" ADD CONSTRAINT "SYS_C008312" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table PEGAWAI
-- ----------------------------
ALTER TABLE "TEST"."PEGAWAI" ADD CONSTRAINT "SYS_C008311" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PROGRAM_STUDI
-- ----------------------------
ALTER TABLE "TEST"."PROGRAM_STUDI" ADD CONSTRAINT "SYS_C008314" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table PROGRAM_STUDI
-- ----------------------------
ALTER TABLE "TEST"."PROGRAM_STUDI" ADD CONSTRAINT "SYS_C008313" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;