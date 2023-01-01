BEGIN
EXECUTE IMMEDIATE 'DROP TABLE documents';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
END IF;
END;


CREATE TABLE test.documents(
                               id NUMBER GENERATED BY DEFAULT AS IDENTITY,
                               program_studi_id NUMBER DEFAULT NULL,
                               file_name VARCHAR2(255) DEFAULT NULL,
                               file_path VARCHAR2(255) DEFAULT NULL,
                               title VARCHAR2(255) DEFAULT NULL,
                               status VARCHAR2(50) DEFAULT NULL,
                               PRIMARY KEY(id)
);

CREATE TABLE test.files(
                           id NUMBER GENERATED BY DEFAULT AS IDENTITY,
                           document_id NUMBER DEFAULT NULL,
                           file_name VARCHAR2(255) DEFAULT NULL,
                           file_path VARCHAR2(255) DEFAULT NULL,
                           text LONG DEFAULT NULL,
                           PRIMARY KEY(id)
);

CREATE TABLE test.file_pegawai(
                                  id NUMBER GENERATED BY DEFAULT AS IDENTITY,
                                  document_id NUMBER DEFAULT NULL,
                                  file_id NUMBER DEFAULT NULL,
                                  pegawai_id NUMBER DEFAULT NULL,
                                  PRIMARY KEY(id)
);


CREATE TABLE test.program_studi(
                                   id NUMBER GENERATED BY DEFAULT AS IDENTITY,
                                   name VARCHAR2(255) DEFAULT NULL,
                                   PRIMARY KEY(id)
);

INSERT INTO TEST.PROGRAM_STUDI (id, name) VALUES (1, 'ADMINISTRASI');
INSERT INTO TEST.PROGRAM_STUDI (id, name) VALUES (2, 'MMB');
INSERT INTO TEST.PROGRAM_STUDI (id, name) VALUES (3, 'PLP');
INSERT INTO TEST.PROGRAM_STUDI (id, name) VALUES (4, 'SPE');
INSERT INTO TEST.PROGRAM_STUDI (id, name) VALUES (5, 'T ELEKTRO INDUSTRI');
INSERT INTO TEST.PROGRAM_STUDI (id, name) VALUES (6, 'T ELEKTRONIKA');
INSERT INTO TEST.PROGRAM_STUDI (id, name) VALUES (7, 'T GAME');
INSERT INTO TEST.PROGRAM_STUDI (id, name) VALUES (8, 'T INFORMATIKA');
INSERT INTO TEST.PROGRAM_STUDI (id, name) VALUES (9, 'T KOMPUTER');
INSERT INTO TEST.PROGRAM_STUDI (id, name) VALUES (10, 'T MEKATRONIKA');
INSERT INTO TEST.PROGRAM_STUDI (id, name) VALUES (11, 'T TELEKOMUNIKASI');

CREATE TABLE test.pegawai(
                             id NUMBER GENERATED BY DEFAULT AS IDENTITY,
                             program_studi_id NUMBER DEFAULT NULL,
                             nama VARCHAR2(255) DEFAULT NULL,
                             status VARCHAR2(255) DEFAULT NULL,
                             PRIMARY KEY(id)
);

INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (1, 'Agus Indra Gunawan', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (2, 'Akhmad Hendriawan', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (3, 'Ali Husein A', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (4, 'Alrijadjis', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (5, 'Ardik Wijayanto', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (6, 'Arif Irwansyah', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (7, 'Bambang Sumantri', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (8, 'Budi Nur Iman', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (9, 'Dedid Cahya Happyanto', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (10, 'Edi Satriyanto', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (11, 'Elizabeth Anggraeni Amalo', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (12, 'Elly Purwantini', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (13, 'Eru Puspita', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (14, 'Firman Arifin', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (15, 'Hary Oktavianto', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (16, 'Hendhi Hermawan', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (17, 'Kemalasari', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (18, 'Legowo Sulistijono', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (19, 'Madyono', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (20, 'Moch. Rochmad', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (21, 'Mohd. Syafrudin', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (22, 'Ni''am Tamami', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (23, 'Paulus Susetyo Wardana', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (24, 'Reesa Akbar', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (25, 'Retno Sukmaningrum', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (26, 'Rika Rokhana', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (27, 'Ronny Susetyoko', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (28, 'Rusminto Tjatur Widodo', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (29, 'Santi Anggraini', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (30, 'Taufiqurrahman', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (31, 'Wahjoe Tjatur Sesulihatien', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (32, 'Zainal Arief', 'DOSEN', 6);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (33, 'Ahmad Zainudin', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (34, 'Akuwan Saleh', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (35, 'Amang Sudarsono', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (36, 'Anang Budikarso', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (37, 'Ari Wijayanti', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (38, 'Aries Pratiarso', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (39, 'Arifin', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (40, 'Budi Aswoyo', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (41, 'Djoko Santoso', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (42, 'Hani''ah Mahmudah', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (43, 'Hari Wahjuningrat Suparno', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (44, 'Haryadi Amran Darwito', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (45, 'I Gede Puja Astawa', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (46, 'Ida Anisah', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (47, 'Miftahul Huda', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (48, 'Mike Yuliana', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (49, 'Moch. Zen Samsono Hadi', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (50, 'Muhamad Milchan', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (51, 'Nanang Syahroni', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (52, 'Nur Adi Siswandari', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (53, 'Okkie Puspitorini', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (54, 'Prima Kristalina', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (55, 'Rahardhita Widyatra Sudibyo', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (56, 'Reni Soelistijorini', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (57, 'Rini Satiti', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (58, 'Susi Harliani', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (59, 'Titon Dutono', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (60, 'Tri Budi Santoso', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (61, 'Yoedy Moegiharto', 'DOSEN', 11);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (62, 'Ainur Rofiq Nansur', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (63, 'Anang Tjahjono', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (64, 'Arman Jaya', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (65, 'Diah Septi Yanaratri', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (66, 'Dimas Okky Anggriawan', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (67, 'Eka Prasetyono', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (68, 'Endro Wahjono', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (69, 'Epyk Sunarno', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (70, 'Era Purwanto', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (71, 'Farid Dwi Murdianto', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (72, 'Gigih Prabowo', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (73, 'Hendik Eko Hadi Suharyanto', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (74, 'Imam Dui Agusalim', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (75, 'Indhana Sudiharto', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (76, 'Indra Ferdiansyah', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (77, 'Irianto', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (78, 'Lucky Pradigta Setiya Raharja', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (79, 'Mochammad Machmud Rifadil', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (80, 'Moh. Zaenal Efendi', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (81, 'Novie Ayub Windarko', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (82, 'Ony Asrarul Qudsi', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (83, 'Rachma Prilian Eviningsih', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (84, 'Renny Rakhmawati', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (85, 'Suhariningsih', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (86, 'Suryono', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (87, 'Sutedjo', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (88, 'Syechu Dwitya Nugraha', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (89, 'Yahya Chusna Arif', 'DOSEN', 5);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (90, 'Ahmad Syauqi Ahsan', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (91, 'Aliridho Barakbah', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (92, 'Arif Basofi', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (93, 'Arna Fariza', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (94, 'Desy Intan Permatasari', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (95, 'Entin Martiana Kusumaningtyas', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (96, 'Fadilah Fahrul Hardiansyah', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (97, 'Ferry Astika Saputra', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (98, 'Fitri Setyorini', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (99, 'Hero Yudo Martono', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (100, 'Idris Winarno', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (101, 'Ira Prasetyaningrum', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (102, 'Irma Wulandari', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (103, 'Irwan Sumarsono', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (104, 'Isbat Uzzin Nadhori', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (105, 'Iwan Syarif', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (106, 'Jauari Akhmad Nur Hasim', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (107, 'M. Udin Harun Al Rasyid', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (108, 'Muarifin', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (109, 'Nana Ramadijanti', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (110, 'Nur Rosyid Mubtadai', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (111, 'Rengga Asmara', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (112, 'Tessy Badriyah', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (113, 'Tita Karlita', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (114, 'Tri Hadiah Muliawati', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (115, 'Umi Sa''adah', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (116, 'Wiratmoko Yuwono', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (117, 'Yuliana Setiowati', 'DOSEN', 8);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (118, 'Adytia Darmawan', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (119, 'Anhar Risnumawan', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (120, 'Didik Setyo Purnomo', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (121, 'Eko Budi Utomo', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (122, 'Eko Henfri Binugroho', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (123, 'Endah Suryawati Ningrum', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (124, 'Endra Pitowarno', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (125, 'Eny Kusumawati', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (126, 'Farida Gamar', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (127, 'Indra Adji Sulistijono', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (128, 'Mohamad Nasyir Tamara', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (129, 'Nofria Hanafi', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (130, 'Novian Fajar Satria', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (131, 'Raden Sanggar Dewanto', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (132, 'Zaqiatud Darojah', 'DOSEN', 10);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (133, 'Adnan Rachmat Anom Besari', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (134, 'Bayu Sandi Marta', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (135, 'Bima Sena Bayu Dewantara', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (136, 'Dadet Pramadihanto', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (137, 'Dewi Mutiara Sari', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (138, 'Dias Agata', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (139, 'Dwi Kurnia Basuki', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (140, 'Fernando Ardila', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (141, 'Heny Yuniarti', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (142, 'Iwan Kurnianto Wibowo', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (143, 'Mochamad Mobed Bachtiar', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (144, 'Riyanto Sigit', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (145, 'Setiawardhana', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (146, 'Sigit Wasista', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (147, 'Tri Harsono', 'DOSEN', 9);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (148, 'Achmad Basuki', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (149, 'Akhmad Alimudin', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (150, 'Aliv Faizal Muhammad', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (151, 'Citra Devi Murdaningtyas', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (152, 'Dwi Susanto', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (153, 'Fardani Annisa Damastuti', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (154, 'Hestiasari Rante', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (155, 'Martianda Erste Anggraeni', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (156, 'Muh. Hasbi Assidiqi', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (157, 'Muhammad Agus Zainuddin', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (158, 'Novita Astin', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (159, 'Rosiyah Faradisa', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (160, 'Sritrusta Sukaridhoto', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (161, 'Widi Sarinastiti', 'DOSEN', 2);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (162, 'Arrad Ghani Safitra', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (163, 'Erik Tridianto', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (164, 'Fifi Hesty Sholihah', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (165, 'Hendrik Elvian Gayuh Prasetya', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (166, 'Imamul Arifin', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (167, 'Joke Pratilastiarso', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (168, 'Lohdy Diana', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (169, 'Nu Rhahida Arini', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (170, 'Prima Dewi Permatasari', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (171, 'Radina Anggun Nurisma', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (172, 'Rif''ah Amalia', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (173, 'Setyo Nugroho', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (174, 'Teguh Hady Ariwibowo', 'DOSEN', 4);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (175, 'Artiarini Kusuma N.', 'DOSEN', 7);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (176, 'Fahim Nur Cahya Bagar', 'DOSEN', 7);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (177, 'Halimatus Sa''dyah', 'DOSEN', 7);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (178, 'Kholid Fathoni', 'DOSEN', 7);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (179, 'Mohamad Safrodin', 'DOSEN', 7);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (180, 'Mohammad Zikky', 'DOSEN', 7);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (181, 'Rizky Yuniar Hakkun', 'DOSEN', 7);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (182, 'Zulhaydar Fairozal Akbar', 'DOSEN', 7);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (183, 'Achmad Djalaludin', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (184, 'Achmad Huzaini', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (185, 'Aestatica Ratri', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (186, 'Agus Fitriyanto', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (187, 'Ali Shodikin', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (188, 'Anang Siswanto', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (189, 'Aris Eko Saputro', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (190, 'Ashadi Kurniawan', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (191, 'Bahtiar Arif', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (192, 'Bahtiar Setiono', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (193, 'Bambang Purwanto', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (194, 'Djohan Kuntjoro', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (195, 'Dwi Gatot Saputro', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (196, 'Eko Supriyanto', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (197, 'Eko Susanto', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (198, 'Erwin Ardiansyah', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (199, 'Firmansyah Adi Nugroho', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (200, 'Hariono', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (201, 'Ilham Iskandariansyah', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (202, 'Imam Ghozali', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (203, 'Ismail', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (204, 'Luluk Badriyah', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (205, 'Mochamad Bagus Kurniawan', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (206, 'Mochammad Darwis', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (207, 'Moga Kurniajaya', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (208, 'Muchamad Chaninul Fuad', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (209, 'Muh. Gatut Hermandana', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (210, 'Muhammad Nugraha Akbar', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (211, 'Muhammad Rizqi Erliyanto', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (212, 'Ridwan Achsan Ramadhan', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (213, 'Rofiulloh Mu''azin Al-Insof', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (214, 'Sayudi', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (215, 'Sidiq Prasetyo', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (216, 'Subari', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (217, 'Sulton', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (218, 'Suprijanto', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (219, 'Suwito', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (220, 'Wiwit Priantono', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (221, 'Yasin Setio Budi', 'PEGAWAI', 3);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (222, 'Abd. Wahid', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (223, 'Abdul Wachid', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (224, 'Abdul Wahib', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (225, 'Achmad Bashori', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (226, 'Achmad Bilal Hamdani', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (227, 'Adi Pranoto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (228, 'Aditya Muntoro', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (229, 'Agus Ari Wahjudi', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (230, 'Agus Setiyawan', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (231, 'Ahmad Taufiq Hidayat', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (232, 'Amira Oribia Wanda Sasmita', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (233, 'Amirul Nur Santi Basori Putri', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (234, 'Andri Ristanto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (235, 'Andri Suryandari', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (236, 'Anggar Sari', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (237, 'Anggi Puspita Sari', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (238, 'Anita Oktavia', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (239, 'Anjang Susono', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (240, 'Aripin', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (241, 'Arista Rahmawati Jamilah', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (242, 'Bada'' Amru Al Muhtadin', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (243, 'Bowo Raharjo', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (244, 'Cholida Ariani', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (245, 'Dariyo', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (246, 'Darto Suswili Wahyudi', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (247, 'Didik Santoso', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (248, 'Dimas Angga Wahyu Putra', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (249, 'Dyah Ayu Retnoning Wulan', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (250, 'Eka Wulandari', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (251, 'Eko Mardiyanto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (252, 'Elsha Qhusnul Romadhona', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (253, 'Elya Intan Pratiwi', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (254, 'Endang Purnomowati', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (255, 'Endro Leksono', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (256, 'Esti Kusumawardani', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (257, 'Faisol Abied', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (258, 'Gentur Pamungkas Putra Widyastoro', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (259, 'Hardi Agung Wibowo', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (260, 'Hariyono', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (261, 'Harun Effendy', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (262, 'Hary Pujo Widayanto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (263, 'Hendi Yanuar Setianto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (264, 'Heri Susanto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (265, 'Imam Nurul Hidayat', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (266, 'Irin Tri Anggraini', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (267, 'Ismail INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (kerjasama)', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (268, 'Isnadi', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (269, 'Isnaeny Maria Ulfa', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (270, 'Juhri Ismiyanto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (271, 'Juniar Murdiana', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (272, 'Kartika Sari Dewi Ashari', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (273, 'Katijo', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (274, 'Khafiduddin', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (275, 'Kundoyo', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (276, 'Lini Herma Andriyana', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (277, 'Lutfifanti Purwaningtyas Wulan Sufandy', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (278, 'M. Dini', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (279, 'Mardiyono', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (280, 'Mariyati', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (281, 'Marno', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (282, 'Martha Citra Dewi', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (283, 'Mat Urip', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (284, 'Mega Ofita Abrilia', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (285, 'Moch. Bagus Surahman', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (286, 'Moch. Chusnan', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (287, 'Moh. Khoirul Mutakin', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (288, 'Muh. Makhfut', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (289, 'Muhammad Bachtiar Dzulfikar', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (290, 'Muhammad Fahrizal Eka Ariansah', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (291, 'Musthofa Syahid', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (292, 'Musthofah', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (293, 'Nabilatul Fikriyah', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (294, 'Nur Azizah', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (295, 'Pindharwati Bandiannaningsih', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (296, 'Pipid Muntoro', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (297, 'Poerwanto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (298, 'Puspasari Susanti', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (299, 'Putri Puji Rahayu', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (300, 'Rahmad Faisol', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (301, 'Reny Ayu Aprilliyanti Putri', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (302, 'Ria Sukmawati', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (303, 'Rizal Mulia', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (304, 'Ruhul Akbar', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (305, 'Siti Ayu Mulyantika', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (306, 'Siti Maisyaroh', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (307, 'Soemantri', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (308, 'Suci Rahayu', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (309, 'Sudarto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (310, 'Sukarman', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (311, 'Sulistiyani', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (312, 'Sumiarsih', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (313, 'Suratman Hadi Nopianto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (314, 'Suratno', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (315, 'Suria Hardita Duanti Putri', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (316, 'Suroto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (317, 'Sutikno', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (318, 'Suwaji', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (319, 'Syahirrudin', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (320, 'Syaifullah', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (321, 'Syamsul Bahri', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (322, 'Teguh Setyo Utomo', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (323, 'Tonny Adi Hartanto', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (324, 'Tri Setyaningsih', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (325, 'Umang Prasetyo', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (326, 'Warjilan', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (327, 'Wibisono', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (328, 'Yeni Suryani', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (329, 'Yetty Handayani', 'PEGAWAI', 1);
INSERT INTO TEST.PEGAWAI (id, nama, status, program_studi_id) VALUES (330, 'Zakaria Akhmad Ubaidillah', 'PEGAWAI', 1);

