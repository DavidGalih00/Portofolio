
/*---------------------------------------------------------------
  SQL DB BACKUP 24.01.2023 04:58 
  HOST: localhost
  DATABASE: cbt
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `absen_harian`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `absen_harian`;
CREATE TABLE `absen_harian` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `level` varchar(20) DEFAULT 'siswa',
  `hadir` date DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `tahun` int DEFAULT NULL,
  `bulan` tinyint DEFAULT NULL,
  `hari` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3633 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `absen_harian` VALUES   ('3627','329','guru','2022-12-27','03:07:23','2022','12','27');
INSERT INTO `absen_harian` VALUES ('3628','448','siswa','2022-12-27','03:09:18','2022','12','27');
INSERT INTO `absen_harian` VALUES ('3629','449','siswa','2022-12-27','05:09:09','2022','12','27');
INSERT INTO `absen_harian` VALUES ('3630','448','siswa','2022-12-28','05:14:25','2022','12','28');
INSERT INTO `absen_harian` VALUES ('3631','329','guru','2022-12-28','05:26:49','2022','12','28');
INSERT INTO `absen_harian` VALUES ('3632','329','guru','2023-01-21','05:08:39','2023','1','21');

/*---------------------------------------------------------------
  TABLE: `agama`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `agama`;
CREATE TABLE `agama` (
  `agamaku` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
INSERT INTO `agama` VALUES   ('Islam');
INSERT INTO `agama` VALUES ('Kristen Katolik');
INSERT INTO `agama` VALUES ('Kristen Protestan');
INSERT INTO `agama` VALUES ('Hindu');
INSERT INTO `agama` VALUES ('Buddha');
INSERT INTO `agama` VALUES ('Kong Hu Cu');
INSERT INTO `agama` VALUES ('Kristen');

/*---------------------------------------------------------------
  TABLE: `berita`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id_berita` int NOT NULL AUTO_INCREMENT,
  `id_mapel` int NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text,
  `tgl_ujian` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `file_pendukung`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `file_pendukung`;
CREATE TABLE `file_pendukung` (
  `id_file` int NOT NULL AUTO_INCREMENT,
  `id_mapel` int DEFAULT '0',
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb3;

/*---------------------------------------------------------------
  TABLE: `jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban`;
CREATE TABLE `jawaban` (
  `id_jawaban` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int NOT NULL,
  `id_mapel` int NOT NULL,
  `id_soal` int NOT NULL,
  `id_ujian` int NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int NOT NULL,
  `esai` text,
  `nilai_esai` int NOT NULL DEFAULT '0',
  `ragu` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB AUTO_INCREMENT=171859 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `jawaban_tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban_tugas`;
CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int DEFAULT NULL,
  `id_tugas` int DEFAULT NULL,
  `jawaban` longtext,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nilai` varchar(5) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
INSERT INTO `jawaban_tugas` VALUES   ('4','448','7','<p>gdfgdf</p>','7_448.pdf',NULL,'2022-12-28 11:51:16','70',NULL);

/*---------------------------------------------------------------
  TABLE: `jenis`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `jenis` VALUES   ('PAS','Penilaian Akhir Semester','tidak');
INSERT INTO `jenis` VALUES ('PAT','Penilaian Akhir Tahun','tidak');
INSERT INTO `jenis` VALUES ('PTS','Penilaian Tengah Semester','aktif');
INSERT INTO `jenis` VALUES ('ULH','ULANGAN HARIAN','tidak');
INSERT INTO `jenis` VALUES ('USBK','Ujian Sekolah','tidak');

/*---------------------------------------------------------------
  TABLE: `jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `jurusan_id` varchar(25) NOT NULL,
  `nama_jurusan_sp` varchar(100) DEFAULT NULL,
  `kurikulum` varchar(120) DEFAULT NULL,
  `jurusan_sp_id` varchar(50) DEFAULT NULL,
  `kurikulum_id` varchar(20) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `kelas` VALUES   ('VII A','VII','VII A',NULL,NULL);
INSERT INTO `kelas` VALUES ('VII B','VII','VII B',NULL,NULL);
INSERT INTO `kelas` VALUES ('VII C','VII','VII C',NULL,NULL);
INSERT INTO `kelas` VALUES ('VII D','VII','VII D',NULL,NULL);
INSERT INTO `kelas` VALUES ('VII E','VII','VII E',NULL,NULL);
INSERT INTO `kelas` VALUES ('VII F','VII','VII F',NULL,NULL);
INSERT INTO `kelas` VALUES ('VII G','VII','VII G',NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `level`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `level` VALUES   ('EX','ALUMNI',NULL);
INSERT INTO `level` VALUES ('IX','Kelas IX',NULL);
INSERT INTO `level` VALUES ('VII','Kelas VII',NULL);
INSERT INTO `level` VALUES ('VIII','Kelas VIII',NULL);

/*---------------------------------------------------------------
  TABLE: `log`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=33531 DEFAULT CHARSET=latin1;
INSERT INTO `log` VALUES   ('33512','448','logout','keluar','2022-12-27 03:09:25');
INSERT INTO `log` VALUES ('33513','448','logout','keluar','2022-12-27 03:18:49');
INSERT INTO `log` VALUES ('33514','448','logout','keluar','2022-12-27 03:22:10');
INSERT INTO `log` VALUES ('33515','448','logout','keluar','2022-12-27 03:23:27');
INSERT INTO `log` VALUES ('33516','448','logout','keluar','2022-12-27 03:25:27');
INSERT INTO `log` VALUES ('33517','448','logout','keluar','2022-12-27 03:28:17');
INSERT INTO `log` VALUES ('33518','448','logout','keluar','2022-12-27 03:36:28');
INSERT INTO `log` VALUES ('33519','448','logout','keluar','2022-12-27 04:05:07');
INSERT INTO `log` VALUES ('33520','448','logout','keluar','2022-12-27 05:06:02');
INSERT INTO `log` VALUES ('33521','449','logout','keluar','2022-12-27 05:10:47');
INSERT INTO `log` VALUES ('33522','448','logout','keluar','2022-12-27 05:33:08');
INSERT INTO `log` VALUES ('33523','449','logout','keluar','2022-12-27 05:37:52');
INSERT INTO `log` VALUES ('33524','449','logout','keluar','2022-12-27 05:39:52');
INSERT INTO `log` VALUES ('33525','448','logout','keluar','2022-12-27 05:41:24');
INSERT INTO `log` VALUES ('33526','449','logout','keluar','2022-12-27 05:42:52');
INSERT INTO `log` VALUES ('33527','449','logout','keluar','2022-12-27 05:44:18');
INSERT INTO `log` VALUES ('33528','448','logout','keluar','2022-12-28 04:50:42');
INSERT INTO `log` VALUES ('33529','448','logout','keluar','2022-12-28 05:14:00');
INSERT INTO `log` VALUES ('33530','448','logout','keluar','2022-12-28 05:22:43');

/*---------------------------------------------------------------
  TABLE: `mapel`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel` (
  `id_mapel` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL DEFAULT '0',
  `idpk` varchar(255) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int NOT NULL,
  `jml_esai` int NOT NULL DEFAULT '0',
  `tampil_pg` int NOT NULL,
  `tampil_esai` int NOT NULL DEFAULT '0',
  `bobot_pg` int NOT NULL,
  `bobot_esai` int NOT NULL DEFAULT '0',
  `level` varchar(5) NOT NULL,
  `opsi` int NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(2) NOT NULL,
  `kkm` int DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `mata_pelajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(150) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `mata_pelajaran` VALUES   ('01_TIK','TIK',NULL);

/*---------------------------------------------------------------
  TABLE: `materi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `materi`;
CREATE TABLE `materi` (
  `id_materi` int NOT NULL AUTO_INCREMENT,
  `id_guru` int NOT NULL DEFAULT '0',
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `materi` longtext,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3;
INSERT INTO `materi` VALUES   ('47','329','a:2:{i:0;s:5:\"VII A\";i:1;s:5:\"VII B\";}','01_TIK','Pertemuan 1','','1672119626_buku.saku.utama.kampus.mengajar_10.pdf','2022-12-26 12:40:00','','2022-12-27 12:40:26',NULL);

/*---------------------------------------------------------------
  TABLE: `materi_komentar`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `materi_komentar`;
CREATE TABLE `materi_komentar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_materi` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `komentar` text,
  `level` varchar(20) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
INSERT INTO `materi_komentar` VALUES   ('18','47','448','<p>yaaa</p>','siswa','2022-12-28 04:49:59');
INSERT INTO `materi_komentar` VALUES ('19','47','1','<p>kuntul</p><p><br></p>','admin','2023-01-21 05:26:44');

/*---------------------------------------------------------------
  TABLE: `meet`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `meet`;
CREATE TABLE `meet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_guru` int DEFAULT NULL,
  `id_mapel` varchar(50) DEFAULT NULL,
  `id_kelas` varchar(11) DEFAULT NULL,
  `room` varchar(100) DEFAULT NULL,
  `judul` varchar(110) DEFAULT NULL,
  `deskripsi` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*---------------------------------------------------------------
  TABLE: `nilai`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int NOT NULL AUTO_INCREMENT,
  `id_ujian` int NOT NULL,
  `id_mapel` int NOT NULL,
  `id_siswa` int NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int DEFAULT NULL,
  `jml_salah` int DEFAULT NULL,
  `nilai_esai` double DEFAULT NULL,
  `skor` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `status` int DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int NOT NULL,
  `jawaban` text,
  `jawaban_esai` longtext,
  `nilai_esai2` text,
  `online` int NOT NULL DEFAULT '0',
  `id_soal` longtext,
  `id_opsi` longtext,
  `id_esai` text,
  `blok` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=11461 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `pengawas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengawas`;
CREATE TABLE `pengawas` (
  `id_pengawas` int NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text,
  `level` varchar(10) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `bidang_studi` varchar(50) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(30) DEFAULT NULL,
  `ahli_lab` varchar(10) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_suami` varchar(50) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `ptk_id` varchar(50) DEFAULT NULL,
  `password2` text,
  `ruang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8mb3;
INSERT INTO `pengawas` VALUES   ('1','-','administrator','','admin','$2y$10$2rTCXEfsEIbKOCKKN5dQKeiJHFh1wlUC208yUKivwJU5rvL0ELGfa','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','',NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('329','19113103','Pak Tamrin',NULL,'guru','guru','guru',NULL,'Temanggung','2022-12-27','Laki-Laki','Islam','085226374676',NULL,'Parakan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'19113103.jpg',NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
INSERT INTO `pengumuman` VALUES   ('6','eksternal','Libur semester akhir','1','<p>libur sampai januari</p>','2022-12-27 10:27:29');
INSERT INTO `pengumuman` VALUES ('7','internal','Libur semester akhir','1','<p>libur</p>','2022-12-27 12:45:57');

/*---------------------------------------------------------------
  TABLE: `pk`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pk`;
CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pk` VALUES   ('NAUTIKA','NAUTIKA KAPAL NIAGA',NULL);
INSERT INTO `pk` VALUES ('semua','semua',NULL);
INSERT INTO `pk` VALUES ('TEKNIKA','TEKNIKA KAPAL NIAGA',NULL);

/*---------------------------------------------------------------
  TABLE: `referensi_jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `referensi_jurusan`;
CREATE TABLE `referensi_jurusan` (
  `jurusan_id` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `untuk_sma` int NOT NULL,
  `untuk_smk` int NOT NULL,
  `jenjang_pendidikan_id` int DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*---------------------------------------------------------------
  TABLE: `registrasi_siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `registrasi_siswa`;
CREATE TABLE `registrasi_siswa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nis` varchar(30) DEFAULT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `id_kelas` varchar(11) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `th_masuk` int DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `username_login` varchar(50) DEFAULT NULL,
  `password_login` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `registrasi_nis_siswa` (`nis`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

/*---------------------------------------------------------------
  TABLE: `ruang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `ruang` VALUES   ('R1','ROOM DARING 1');
INSERT INTO `ruang` VALUES ('R2','ROOM DARING 2');
INSERT INTO `ruang` VALUES ('R3','ROOM DARING 3');

/*---------------------------------------------------------------
  TABLE: `savsoft_options`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_options`;
CREATE TABLE `savsoft_options` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `qid` int NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*---------------------------------------------------------------
  TABLE: `savsoft_qbank`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_qbank`;
CREATE TABLE `savsoft_qbank` (
  `qid` int NOT NULL AUTO_INCREMENT,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int NOT NULL,
  `lid` int NOT NULL,
  `no_time_served` int NOT NULL DEFAULT '0',
  `no_time_corrected` int NOT NULL DEFAULT '0',
  `no_time_incorrected` int NOT NULL DEFAULT '0',
  `no_time_unattempted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*---------------------------------------------------------------
  TABLE: `semester`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `semester_id` varchar(5) NOT NULL,
  `tahun_ajaran_id` varchar(4) NOT NULL,
  `nama_semester` varchar(50) NOT NULL,
  `semester` int NOT NULL,
  `periode_aktif` enum('1','0') NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `server`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `sesi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sesi`;
CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `session`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text,
  `header` text,
  `header_kartu` text,
  `nama_ujian` text,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `url_host` varchar(50) DEFAULT NULL,
  `token_api` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `db_versi` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `sinkron`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sinkron`;
CREATE TABLE `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int DEFAULT NULL,
  PRIMARY KEY (`nama_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*---------------------------------------------------------------
  TABLE: `siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(11) DEFAULT NULL,
  `idpk` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kode_pos` int DEFAULT NULL,
  `jenis_tinggal` varchar(100) DEFAULT NULL,
  `alat_transportasi` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` int DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tahun_lahir_ayah` int DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tahun_lahir_ibu` int DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` int DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tahun_lahir_wali` int DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `peserta_didik_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `status` int DEFAULT '1',
  `online` int DEFAULT '0',
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=latin1;
INSERT INTO `siswa` VALUES   ('448','VII A',NULL,'130036','130036','Indah Kurniwati','VII',NULL,NULL,'130036','130036',NULL,NULL,'Laki-Laki','Temanggung','2005-08-06','Islam',NULL,'Ngadirejo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+6281328452737',NULL,NULL,NULL,'Bapak I',NULL,NULL,NULL,NULL,NULL,'Ibu I',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022',NULL,NULL,NULL,NULL,'1','0');
INSERT INTO `siswa` VALUES ('449','VII B',NULL,'160800','160800','DIan Kurniasari','VII',NULL,NULL,'160800','160800',NULL,NULL,'Laki-Laki','Temanggung','2006-08-09','Islam',NULL,'Bansari',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'085627384920',NULL,NULL,NULL,'Bapak U',NULL,NULL,NULL,NULL,NULL,'Ibu U',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022',NULL,NULL,NULL,NULL,'1','0');

/*---------------------------------------------------------------
  TABLE: `soal`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `soal`;
CREATE TABLE `soal` (
  `id_soal` int NOT NULL AUTO_INCREMENT,
  `id_mapel` int NOT NULL,
  `nomor` int DEFAULT NULL,
  `soal` longtext,
  `jenis` int DEFAULT NULL,
  `pilA` longtext,
  `pilB` longtext,
  `pilC` longtext,
  `pilD` longtext,
  `pilE` longtext,
  `jawaban` varchar(1) DEFAULT NULL,
  `file` mediumtext,
  `file1` mediumtext,
  `fileA` mediumtext,
  `fileB` mediumtext,
  `fileC` mediumtext,
  `fileD` mediumtext,
  `fileE` mediumtext,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=2998 DEFAULT CHARSET=utf8mb3;

/*---------------------------------------------------------------
  TABLE: `tugas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `tugas`;
CREATE TABLE `tugas` (
  `id_tugas` int NOT NULL AUTO_INCREMENT,
  `id_guru` int NOT NULL DEFAULT '0',
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tugas` longtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id_tugas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
INSERT INTO `tugas` VALUES   ('7','329','a:2:{i:0;s:5:\"VII A\";i:1;s:5:\"VII B\";}','01_TIK','Tugas 1','<p>fsdgsdfg</p>','TIK Kelas 7. Bab 1. Teknologi Informasi dan Komunikasi.pdf','2022-12-26 12:41:00','2022-12-29 12:42:00','2022-12-27 12:42:04',NULL);

/*---------------------------------------------------------------
  TABLE: `ujian`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id_ujian` int NOT NULL AUTO_INCREMENT,
  `kode_nama` varchar(255) DEFAULT '0',
  `id_pk` varchar(255) NOT NULL,
  `id_guru` int NOT NULL,
  `id_mapel` int NOT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jml_soal` int NOT NULL,
  `jml_esai` int NOT NULL,
  `bobot_pg` int NOT NULL,
  `opsi` int NOT NULL,
  `bobot_esai` int NOT NULL,
  `tampil_pg` int NOT NULL,
  `tampil_esai` int NOT NULL,
  `lama_ujian` int NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int NOT NULL,
  `token` int NOT NULL,
  `status` int DEFAULT NULL,
  `hasil` int DEFAULT NULL,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  `reset` int DEFAULT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;
