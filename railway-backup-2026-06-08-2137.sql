-- Table: aboutmes
DROP TABLE IF EXISTS `aboutmes`;
CREATE TABLE `aboutmes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `aboutmes` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES (4, 'Universitas Purbayan merupakan institusi pendidikan tinggi yang berkomitmen mencetak generasi unggul, berintegritas, dan berdaya saing global. Dengan mengedepankan kualitas pendidikan, inovasi, serta pengembangan karakter, Universitas Purbaya menyediakan lingkungan belajar yang mendukung pengembangan akademik maupun keterampilan profesional mahasiswa.', '["01KTKNPM6GN3BJ0HJN7XSVYN5E.png","01KTKNPN2NPD9R53BT0KPRF187.png","01KTKNPP7KPKA5CG24ZWAVRPM2.png"]', '2026-06-08 13:10:43', '2026-06-08 13:10:43');

-- Table: admins
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Table: announcements
DROP TABLE IF EXISTS `announcements`;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `announcements_slug_unique` (`slug`),
  KEY `announcements_users_id_foreign` (`users_id`),
  CONSTRAINT `announcements_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `announcements` (`id`, `title`, `content`, `users_id`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Pendaftaran Mahasiswa Baru Tahun Akademik 2025/2026', '<h1 data-path-to-node="2"><span style="font-size: 14px;">📣 PENGUMUMAN RESMI 📣</span></h1>
<h2 data-path-to-node="3"><span style="font-size: 14px;">Pendaftaran Mahasiswa Baru (PMB) Tahun Akademik 2025/2026</span></h2>
<p data-path-to-node="4"><span style="font-size: 14px;"><strong data-path-to-node="4" data-index-in-node="0">[Nama Universitas / Institut / Sekolah Tinggi]</strong></span></p>
<p data-path-to-node="5"><span style="font-size: 14px;">Halo Calon Pemimpin Masa Depan! 🚀</span></p>
<p data-path-to-node="6"><span style="font-size: 14px;">Kabar gembira bagi kamu yang siap melangkah ke jenjang pendidikan tinggi. <strong data-path-to-node="6" data-index-in-node="74">[Nama Kampus]</strong> secara resmi membuka Pendaftaran Mahasiswa Baru (PMB) untuk Tahun Akademik 2025/2026. Mari bergabung bersama komunitas akademik yang inovatif, unggul, dan siap mencetak lulusan berdaya saing global!</span></p>
<h3 data-path-to-node="8"><span style="font-size: 14px;">📅 Jalur &amp; Jadwal Pendaftaran</span></h3>
<p data-path-to-node="9"><span style="font-size: 14px;">Kami membuka beberapa jalur seleksi yang bisa kamu pilih sesuai dengan minat dan prestasimu:</span></p>
<table data-path-to-node="10">
<thead>
<tr>
<td><span style="font-size: 14px;"><strong>Jalur Pendaftaran</strong></span></td>
<td><span style="font-size: 14px;"><strong>Periode Pendaftaran</strong></span></td>
<td><span style="font-size: 14px;"><strong>Benefit / Keterangan</strong></span></td>
</tr>
</thead>
<tbody>
<tr>
<td><span style="font-size: 14px;" data-path-to-node="10,1,0,0"><strong data-path-to-node="10,1,0,0" data-index-in-node="0">Jalur Prestasi (Akademik/Non-Akademik)</strong></span></td>
<td><span style="font-size: 14px;" data-path-to-node="10,1,1,0">[Tanggal Mulai] &ndash; [Tanggal Selesai]</span></td>
<td><span style="font-size: 14px;" data-path-to-node="10,1,2,0">Bebas Tes Tulis / Potongan DPP*</span></td>
</tr>
<tr>
<td><span style="font-size: 14px;" data-path-to-node="10,2,0,0"><strong data-path-to-node="10,2,0,0" data-index-in-node="0">Jalur Reguler (Gelombang 1)</strong></span></td>
<td><span style="font-size: 14px;" data-path-to-node="10,2,1,0">[Tanggal Mulai] &ndash; [Tanggal Selesai]</span></td>
<td><span style="font-size: 14px;" data-path-to-node="10,2,2,0">Biaya Kuliah Lebih Terjangkau</span></td>
</tr>
<tr>
<td><span style="font-size: 14px;" data-path-to-node="10,3,0,0"><strong data-path-to-node="10,3,0,0" data-index-in-node="0">Jalur Reguler (Gelombang 2)</strong></span></td>
<td><span style="font-size: 14px;" data-path-to-node="10,3,1,0">[Tanggal Mulai] &ndash; [Tanggal Selesai]</span></td>
<td><span style="font-size: 14px;" data-path-to-node="10,3,2,0">Kuota Terbatas</span></td>
</tr>
<tr>
<td><span style="font-size: 14px;" data-path-to-node="10,4,0,0"><strong data-path-to-node="10,4,0,0" data-index-in-node="0">Jalur Beasiswa KIP-Kuliah / Khusus</strong></span></td>
<td><span style="font-size: 14px;" data-path-to-node="10,4,1,0">[Tanggal Mulai] &ndash; [Tanggal Selesai]</span></td>
<td><span style="font-size: 14px;" data-path-to-node="10,4,2,0">Beasiswa Penuh hingga Lulus*</span></td>
</tr>
</tbody>
</table>
<h3 data-path-to-node="12"><span style="font-size: 14px;">🎓 Fakultas &amp; Program Studi Pilihan</span></h3>
<p data-path-to-node="13"><span style="font-size: 14px;">Pilih program studi terbaikmu di berbagai fakultas unggulan kami:</span></p>
<ul data-path-to-node="14">
<li style="font-size: 14px;">
<p data-path-to-node="14,0,0"><span style="font-size: 14px;"><strong data-path-to-node="14,0,0" data-index-in-node="0">Fakultas [Nama Fakultas 1]:</strong> S1 [Prodi A], S1 [Prodi B]</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="14,1,0"><span style="font-size: 14px;"><strong data-path-to-node="14,1,0" data-index-in-node="0">Fakultas [Nama Fakultas 2]:</strong> S1 [Prodi C], S1 [Prodi D]</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="14,2,0"><span style="font-size: 14px;"><strong data-path-to-node="14,2,0" data-index-in-node="0">Fakultas [Nama Fakultas 3]:</strong> S1 [Prodi E], S1 [Prodi F]</span></p>
</li>
</ul>
<h3 data-path-to-node="16"><span style="font-size: 14px;">📝 Syarat Pendaftaran Umum</span></h3>
<p data-path-to-node="17"><span style="font-size: 14px;">Sebelum mendaftar, pastikan kamu telah menyiapkan dokumen-dokumen berikut:</span></p>
<ol start="1" data-path-to-node="18">
<li style="font-size: 14px;">
<p data-path-to-node="18,0,0"><span style="font-size: 14px;">Scan Raport Semester 1&ndash;5 (bagi lulusan 2025/2026) atau Scan Ijazah/SKL (bagi lulusan tahun sebelumnya).</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="18,1,0"><span style="font-size: 14px;">Scan Kartu Keluarga (KK) dan KTP/Kartu Pelajar.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="18,2,0"><span style="font-size: 14px;">Pasfoto terbaru ukuran 3x4 (latar belakang merah/biru).</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="18,3,0"><span style="font-size: 14px;">Sertifikat piagam penghargaan (khusus pendaftar Jalur Prestasi).</span></p>
</li>
</ol>
<h3 data-path-to-node="20"><span style="font-size: 14px;">💻 Cara Mendaftar (Online)</span></h3>
<p data-path-to-node="21"><span style="font-size: 14px;">Proses pendaftaran sangat mudah dan dapat dilakukan dari rumah:</span></p>
<ol start="1" data-path-to-node="22">
<li style="font-size: 14px;">
<p data-path-to-node="22,0,0"><span style="font-size: 14px;">Kunjungi portal resmi PMB kami di: <strong data-path-to-node="22,0,0" data-index-in-node="35">[Link Website Pendaftaran, contoh: pmb.kampus.ac.id]</strong></span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="22,1,0"><span style="font-size: 14px;">Buat akun pendaftaran menggunakan email aktif.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="22,2,0"><span style="font-size: 14px;">Isi formulir data diri dan pilih program studi impianmu.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="22,3,0"><span style="font-size: 14px;">Unggah dokumen persyaratan yang diminta.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="22,4,0"><span style="font-size: 14px;">Lakukan pembayaran biaya pendaftaran sebesar <strong data-path-to-node="22,4,0" data-index-in-node="45">Rp [Jumlah Biaya]</strong>.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="22,5,0"><span style="font-size: 14px;">Cetak kartu ujian (jika ada) dan pantau hasil seleksi di akun masing-masing.</span></p>
</li>
</ol>
<blockquote data-path-to-node="24">
<p data-path-to-node="24,0"><span style="font-size: 14px;"><strong data-path-to-node="24,0" data-index-in-node="0">💡 Mengapa Memilih [Nama Kampus]?</strong></span></p>
<ul data-path-to-node="24,1">
<li style="font-size: 14px;">
<p data-path-to-node="24,1,0,0"><span style="font-size: 14px;">Terakreditasi <strong data-path-to-node="24,1,0,0" data-index-in-node="14">[A / Unggul]</strong> oleh BAN-PT.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="24,1,1,0"><span style="font-size: 14px;">Fasilitas kampus modern, laboratorium lengkap, dan perpustakaan digital.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="24,1,2,0"><span style="font-size: 14px;">Jaringan kerja sama luas dengan industri nasional dan internasional untuk jaminan magang &amp; karier.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="24,1,3,0"><span style="font-size: 14px;">Dosen pengajar berpengalaman dan ahli di bidangnya.</span></p>
</li>
</ul>
</blockquote>
<h3 data-path-to-node="26"><span style="font-size: 14px;">📞 Kontak &amp; Informasi Lebih Lanjut</span></h3>
<p data-path-to-node="27"><span style="font-size: 14px;">Jika ada pertanyaan terkait proses pendaftaran, jangan ragu untuk menghubungi kami melalui:</span></p>
<ul data-path-to-node="28">
<li style="font-size: 14px;">
<p data-path-to-node="28,0,0"><span style="font-size: 14px;"><strong data-path-to-node="28,0,0" data-index-in-node="0">WhatsApp:</strong> [Nomor WA Admin PMB]</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="28,1,0"><span style="font-size: 14px;"><strong data-path-to-node="28,1,0" data-index-in-node="0">Instagram:</strong> @[AkunInstagramKampus]</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="28,2,0"><span style="font-size: 14px;"><strong data-path-to-node="28,2,0" data-index-in-node="0">Email:</strong> [email.pmb@kampus.ac.id]</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="28,3,0"><span style="font-size: 14px;"><strong data-path-to-node="28,3,0" data-index-in-node="0">Website:</strong> [www.kampus.ac.id]</span></p>
</li>
</ul>', 1, 'pendaftaran-mahasiswa-baru-tahun-akademik-20252026', '2026-06-08 13:11:54', '2026-06-08 13:11:54');
INSERT INTO `announcements` (`id`, `title`, `content`, `users_id`, `slug`, `created_at`, `updated_at`) VALUES (2, 'OPEN RECRUITMENT: CALL FOR CHANGEMAKERS!', '<h1 data-path-to-node="4"><span style="font-size: 14px;">🚀 OPEN RECRUITMENT: CALL FOR CHANGEMAKERS! 🚀</span></h1>
<h2 data-path-to-node="5"><span style="font-size: 14px;">Pendaftaran Anggota Baru [Nama Organisasi/UKM/Komunitas]</span></h2>
<p data-path-to-node="6"><span style="font-size: 14px;"><strong data-path-to-node="6" data-index-in-node="0">Periode 2026/2027</strong></span></p>
<p data-path-to-node="7"><span style="font-size: 14px;">Apakah kamu ingin mengembangkan <em data-path-to-node="7" data-index-in-node="32">soft skills</em>, memperluas jaringan, dan menciptakan dampak nyata selama masa kuliah/sekolah? Inilah saatnya! <strong data-path-to-node="7" data-index-in-node="139">[Nama Organisasi]</strong> secara resmi membuka pintu bagi kamu yang kreatif, adaptif, dan bersemangat tinggi untuk bergabung menjadi bagian dari lini kepengurusan baru kami.</span></p>
<h3 data-path-to-node="8"><span style="font-size: 14px;">💼 Divisi yang Dibuka:</span></h3>
<ol start="1" data-path-to-node="9">
<li style="font-size: 14px;">
<p data-path-to-node="9,0,0"><span style="font-size: 14px;"><strong data-path-to-node="9,0,0" data-index-in-node="0">Creative &amp; Design:</strong> Bertanggung jawab atas visual, branding, konten media sosial, dan dokumentasi.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="9,1,0"><span style="font-size: 14px;"><strong data-path-to-node="9,1,0" data-index-in-node="0">Public Relations (Humas):</strong> Menjadi jembatan komunikasi antara organisasi dengan pihak eksternal/mitra.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="9,2,0"><span style="font-size: 14px;"><strong data-path-to-node="9,2,0" data-index-in-node="0">Event Management:</strong> Merancang, menyusun, dan mengeksekusi konsep acara agar berjalan sukses.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="9,3,0"><span style="font-size: 14px;"><strong data-path-to-node="9,3,0" data-index-in-node="0">Technology &amp; Multimedia:</strong> Mengelola aset digital, website, atau kebutuhan teknis berbasis IT.</span></p>
</li>
</ol>
<h3 data-path-to-node="10"><span style="font-size: 14px;">📅 Timeline Pendaftaran:</span></h3>
<ul data-path-to-node="11">
<li style="font-size: 14px;">
<p data-path-to-node="11,0,0"><span style="font-size: 14px;"><strong data-path-to-node="11,0,0" data-index-in-node="0">Pendaftaran &amp; Pengumpulan Berkas:</strong> [Tanggal Mulai] &ndash; [Tanggal Selesai] 2026</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="11,1,0"><span style="font-size: 14px;"><strong data-path-to-node="11,1,0" data-index-in-node="0">Seleksi Wawancara:</strong> [Tanggal Wawancara]</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="11,2,0"><span style="font-size: 14px;"><strong data-path-to-node="11,2,0" data-index-in-node="0">Pengumuman Hasil Seleksi:</strong> [Tanggal Pengumuman]</span></p>
</li>
</ul>
<h3 data-path-to-node="12"><span style="font-size: 14px;">📝 Syarat &amp; Cara Mendaftar:</span></h3>
<ol start="1" data-path-to-node="13">
<li style="font-size: 14px;">
<p data-path-to-node="13,0,0"><span style="font-size: 14px;">Mahasiswa aktif [Nama Kampus] minimal semester [X].</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="13,1,0"><span style="font-size: 14px;">Berkomitmen penuh dan mampu bekerja sama dalam tim.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="13,2,0"><span style="font-size: 14px;">Daftarkan diri secara online melalui tautan: <strong data-path-to-node="13,2,0" data-index-in-node="45">[Link Pendaftaran, misal: bit.ly/OprecOrg2026]</strong></span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="13,3,0"><span style="font-size: 14px;">Unduh dan pelajari <em data-path-to-node="13,3,0" data-index-in-node="19">booklet</em> panduan divisi di: <strong data-path-to-node="13,3,0" data-index-in-node="46">[Link Booklet]</strong></span></p>
</li>
</ol>
<blockquote data-path-to-node="14">
<p data-path-to-node="14,0"><span style="font-size: 14px;"><strong data-path-to-node="14,0" data-index-in-node="0">💡 Mengapa Harus Bergabung?</strong> Kamu tidak hanya akan mendapatkan sertifikat, tetapi juga pengalaman <em data-path-to-node="14,0" data-index-in-node="97">real-project</em>, mentor yang suportif, serta portofolio yang sangat berguna untuk karier masa depanmu!</span></p>
</blockquote>', 1, 'open-recruitment-call-for-changemakers', '2026-06-08 13:13:20', '2026-06-08 13:13:20');
INSERT INTO `announcements` (`id`, `title`, `content`, `users_id`, `slug`, `created_at`, `updated_at`) VALUES (3, 'MLBB FESTIVAL 2026', '<h2 data-path-to-node="19"><span style="font-size: 14px;">"Unleash Your Potential, Conquer the Arena"</span></h2>
<p data-path-to-node="20"><span style="font-size: 14px;"><strong data-path-to-node="20" data-index-in-node="0">Kompetisi MLBB Tingkat Nasional</strong></span></p>
<p data-path-to-node="21"><span style="font-size: 14px;">Panggilan untuk seluruh talenta muda berbakat! Siapkan tim terbaikmu dan buktikan kemampuanmu dalam ajang bergengsi <strong data-path-to-node="21" data-index-in-node="116">[Nama Event 2026]</strong> yang diselenggarakan oleh. Tahun ini, kami menantang kamu untuk berkompetisi secara sportif demi memperebutkan gelar juara dan total hadiah puluhan juta rupiah!</span></p>
<h3 data-path-to-node="22"><span style="font-size: 14px;">🏆 Kategori Perlombaan &amp; Total Hadiah:</span></h3>
<ul data-path-to-node="23">
<li style="font-size: 14px;">
<p data-path-to-node="23,0,0"><span style="font-size: 14px;"><strong data-path-to-node="23,0,0" data-index-in-node="0">Kategori A [Misal: Valorant Tournament / Mobile Legends]:</strong> Total Hadiah Rp [X.000.000] + Trofi + Sertifikat Resmi.</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="23,1,0"><span style="font-size: 14px;"><strong data-path-to-node="23,1,0" data-index-in-node="0">Kategori B [Misal: UI/UX Design Competition]:</strong> Total Hadiah Rp [Y.000.000] + Trofi + Sertifikat Resmi.</span></p>
</li>
</ul>', 1, 'mlbb-festival-2026', '2026-06-08 13:14:30', '2026-06-08 13:14:30');
INSERT INTO `announcements` (`id`, `title`, `content`, `users_id`, `slug`, `created_at`, `updated_at`) VALUES (4, '🤝 PENGUMUMAN: OPEN DONASI & RELAWAN 🤝', '<h1 data-path-to-node="31"><span style="font-size: 14px;">🤝 PENGUMUMAN: OPEN DONASI &amp; RELAWAN 🤝</span></h1>
<h2 data-path-to-node="32"><span style="font-size: 14px;">Program"Bakti Anak Bangsa 2026"</span></h2>
<p data-path-to-node="33"><span style="font-size: 14px;"><strong data-path-to-node="33" data-index-in-node="0">Penyelenggara:&nbsp;</strong></span></p>
<blockquote data-path-to-node="34">
<p data-path-to-node="34,0"><span style="font-size: 14px;"><em data-path-to-node="34,0" data-index-in-node="0">"Berbagi bukan tentang seberapa banyak yang kita miliki, melainkan tentang seberapa besar arti bantuan kita bagi mereka yang membutuhkan."</em></span></p>
</blockquote>
<p data-path-to-node="35"><span style="font-size: 14px;">Kami mengundang seluruh lapisan masyarakat, mahasiswa, dan rekan-rekan sekalian untuk mengulurkan tangan dan berbagi kebaikan dalam program aksi sosial yang akan disalurkan langsung kepada [Target Penerima, misal: Anak-anak Panti Asuhan / Warga Desa X].</span></p>
<h3 data-path-to-node="36"><span style="font-size: 14px;">📦 Bentuk Donasi yang Diterima:</span></h3>
<ul data-path-to-node="37">
<li style="font-size: 14px;">
<p data-path-to-node="37,0,0"><span style="font-size: 14px;"><strong data-path-to-node="37,0,0" data-index-in-node="0">Donasi Uang Tunai:</strong> Dapat disalurkan melalui transfer ke rekening <strong data-path-to-node="37,0,0" data-index-in-node="65">[Nama Bank] - [Nomor Rekening] a.n [Nama Pemilik]</strong>. (Mohon konfirmasi setelah transfer).</span></p>
</li>
<li style="font-size: 14px;">
<p data-path-to-node="37,1,0"><span style="font-size: 14px;"><strong data-path-to-node="37,1,0" data-index-in-node="0">Donasi Barang:</strong> Pakaian layak pakai, buku bacaan/edukasi anak, sembako, atau alat tulis.</span></p>
</li>
</ul>
<h3 data-path-to-node="38"><span style="font-size: 14px;">📍 Lokasi Pengumpulan Barang (Drop Point):</span></h3>
<ul data-path-to-node="39">
<li style="font-size: 14px;">
<p data-path-to-node="39,0,0"><span style="font-size: 14px;"><strong data-path-to-node="39,0,0" data-index-in-node="0">Sekretariat [Nama Organisasi]:</strong> [Alamat Lengkap], setiap hari pukul 09.00 - 17.00 WIB.</span></p>
</li>
</ul>
<h3 data-path-to-node="40"><span style="font-size: 14px;">📅 Batas Akhir Penerimaan Donasi:</span></h3>
<ul data-path-to-node="41">
<li style="font-size: 14px;">
<p data-path-to-node="41,0,0"><span style="font-size: 14px;"><strong data-path-to-node="41,0,0" data-index-in-node="0">Hari/Tanggal:</strong> [Hari, Tanggal Bulan 2026]</span></p>
</li>
</ul>
<p data-path-to-node="42"><span style="font-size: 14px;">Sekecil apa pun bantuan yang Anda berikan akan sangat berarti bagi senyuman mereka. Informasi lebih lanjut dan konfirmasi donasi dapat menghubungi WhatsApp:</span></p>', 1, 'pengumuman-open-donasi-relawan', '2026-06-08 13:15:16', '2026-06-08 13:15:16');

-- Table: cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Table: cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Table: cooperations
DROP TABLE IF EXISTS `cooperations`;
CREATE TABLE `cooperations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cooperations` (`id`, `image`, `created_at`, `updated_at`) VALUES (1, '01KTKNJ9SGYP4XHKSDFZET94Q9.png', '2026-06-08 11:42:33', '2026-06-08 13:08:19');
INSERT INTO `cooperations` (`id`, `image`, `created_at`, `updated_at`) VALUES (2, '01KTKNJWSH2D5X2V485JQ825QS.png', '2026-06-08 11:51:46', '2026-06-08 13:08:38');
INSERT INTO `cooperations` (`id`, `image`, `created_at`, `updated_at`) VALUES (3, '01KTKNKPFMEXPDCBB07QQCNSG0.png', '2026-06-08 11:52:03', '2026-06-08 13:09:05');
INSERT INTO `cooperations` (`id`, `image`, `created_at`, `updated_at`) VALUES (4, '01KTKNMD7Q9T1KX3E01NK3ED9A.png', '2026-06-08 11:52:12', '2026-06-08 13:09:28');
INSERT INTO `cooperations` (`id`, `image`, `created_at`, `updated_at`) VALUES (5, '01KTKNNDRPX8MF0NZVCNVEEQ2E.png', '2026-06-08 11:52:19', '2026-06-08 13:10:01');

-- Table: facilities
DROP TABLE IF EXISTS `facilities`;
CREATE TABLE `facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `facilities` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES (1, '<p data-path-to-node="0"><strong data-path-to-node="0" data-index-in-node="92">Lab Komputer</strong>:</p>
<ul data-path-to-node="1">
<li>
<p data-path-to-node="1,0,0"><strong data-path-to-node="1,0,0" data-index-in-node="0">Komputasi Performa Tinggi (High-End PC):</strong> Dilengkapi komputer berspesifikasi mutakhir (Intel Core i9/Ryzen 9 &amp; RTX GPU) untuk kebutuhan <em data-path-to-node="1,0,0" data-index-in-node="135">programming</em>, <em data-path-to-node="1,0,0" data-index-in-node="148">rendering</em> 3D, kecerdasan buatan (AI), dan analisis data tanpa hambatan.</p>
</li>
<li>
<p data-path-to-node="1,1,0"><strong data-path-to-node="1,1,0" data-index-in-node="0">Koneksi Dedicated Gigabit:</strong> Akses internet <em data-path-to-node="1,1,0" data-index-in-node="42">fiber optic</em> berkecepatan tinggi untuk menjamin kelancaran riset, <em data-path-to-node="1,1,0" data-index-in-node="107">cloud computing</em>, dan pengerjaan proyek kolaboratif skala besar.</p>
</li>
<li>
<p data-path-to-node="1,2,0"><strong data-path-to-node="1,2,0" data-index-in-node="0">Lisensi Software Industri Resmi:</strong> Akses penuh tanpa batas ke berbagai perangkat lunak standar industri seperti Adobe Creative Cloud, JetBrains Suite, MATLAB, dan perkakas <em data-path-to-node="1,2,0" data-index-in-node="170">development</em> modern lainnya.</p>
</li>
</ul>', '01KTKPEHGHFEXD0FAZP7WD8KXA.png', '2026-06-08 13:23:46', '2026-06-08 13:23:46');
INSERT INTO `facilities` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES (2, '<div class="container">
<div id="model-response-message-contentr_338ec0c000c109a5" class="markdown markdown-main-panel stronger enable-updated-hr-color" dir="ltr" aria-live="off" aria-busy="false">
<p data-path-to-node="0"><strong data-path-to-node="0" data-index-in-node="72">Kesehatan</strong>:</p>
<ul data-path-to-node="1">
<li>
<p data-path-to-node="1,0,0"><strong data-path-to-node="1,0,0" data-index-in-node="0">Peralatan Simulasi Klinis Modern:</strong> Dilengkapi manekin simulator komputer anatomi (<em data-path-to-node="1,0,0" data-index-in-node="81">high-fidelity patient simulator</em>) untuk melatih keterampilan klinis dan tindakan medis darurat secara nyata dan aman.</p>
</li>
<li>
<p data-path-to-node="1,1,0"><strong data-path-to-node="1,1,0" data-index-in-node="0">Laboratorium Riset Terpadu &amp; Steril:</strong> Menyediakan ruang steril berstandar <em data-path-to-node="1,1,0" data-index-in-node="73">Biosafety Level</em> (BSL) untuk menunjang praktikum biokimia, mikrobiologi, farmasi, serta penelitian patologi lanjut.</p>
</li>
<li>
<p data-path-to-node="1,2,0"><strong data-path-to-node="1,2,0" data-index-in-node="0">Instrumen Diagnostik Digital:</strong> Dukungan teknologi medis mutakhir seperti mikroskop digital terintegrasi, alat analisis hematologi otomatis, serta perangkat monitor kesehatan berbasis IoT.</p>
</li>
</ul>
</div>
<!----></div>', '01KTKPFKRMG72D4K1NAHSB5JEW.png', '2026-06-08 13:24:20', '2026-06-08 13:24:20');

-- Table: failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Table: footers
DROP TABLE IF EXISTS `footers`;
CREATE TABLE `footers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_gmaps` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `footers` (`id`, `image`, `link_instagram`, `link_facebook`, `link_youtube`, `link_linkedin`, `alamat`, `email`, `wa`, `link_gmaps`, `created_at`, `updated_at`) VALUES (1, '01KTKPCEN9QVWD57B8SE6WQHE0.png', 'https://www.instagram.com/ilif.me/profilecard/?igsh=MXBrM2l3NHlrbGJ1cw==', 'https://www.facebook.com/alif.fahmi.35513', 'youtube.com/channel/UCB1UtY-lf-7xqZffH3UzYvg', 'Larana Kampus Maju', 'CQGC+R47, Dusun I, Purbayan, Kec. Baki, Kabupaten Sukoharjo, Jawa Tengah 57556', 'aliffahmi1500@gmail.com',  +6289505077593, 'https://maps.app.goo.gl/tVW6qWspsHoE7PyC6', '2026-06-08 13:22:36', '2026-06-08 13:22:36');

-- Table: greetings
DROP TABLE IF EXISTS `greetings`;
CREATE TABLE `greetings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `greetings` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES (1, '<h1 data-path-to-node="2">SAMBUTAN REKTOR UNIVERSITAS PURBAYAN</h1>
<h2 data-path-to-node="3">Pada Pembukaan Tahun Akademik 2025/2026</h2>
<p data-path-to-node="5"><em data-path-to-node="5" data-index-in-node="0">Assalamu&rsquo;alaikum Warahmatullahi Wabarakatuh,</em></p>
<p data-path-to-node="6"><em data-path-to-node="6" data-index-in-node="0">Selamat Pagi/Siang, dan Salam Sejahtera bagi Kita Semua.</em></p>
<p data-path-to-node="7"><em data-path-to-node="7" data-index-in-node="0">Salam Kebajikan,</em></p>
<p data-path-to-node="8"><em data-path-to-node="8" data-index-in-node="0">Om Swastiastu, Namo Buddhaya.</em></p>
<p data-path-to-node="9">Yang saya hormati para Wakil Rektor, Dekan, Ketua Program Studi, seluruh Dosen dan Tenaga Kependidikan Universitas Purbayan,</p>
<p data-path-to-node="10">Serta yang paling saya banggakan dan saya cintai, seluruh <strong data-path-to-node="10" data-index-in-node="58">Mahasiswa Baru Universitas Purbayan Tahun Akademik 2025/2026.</strong></p>
<p data-path-to-node="11">Pertama-tama, marilah kita panjatkan puji dan syukur ke hadirat Tuhan Yang Maha Esa, karena atas rahmat dan karunia-Nya kita dapat berkumpul dalam kondisi sehat walafiat untuk memulai lembaran baru dalam perjalanan akademik di kampus tercinta ini.</p>
<p data-path-to-node="12"><strong data-path-to-node="12" data-index-in-node="0">Para Mahasiswa Baru yang Saya Banggakan,</strong></p>
<p data-path-to-node="13">Selamat datang di Universitas Purbayan! Atas nama pribadi dan seluruh sivitas akademika, saya mengucapkan selamat atas keberhasilan saudara sekalian yang telah terpilih menjadi bagian dari keluarga besar kampus ini. Anda semua adalah individu-individu dikdaya yang telah melewati proses seleksi ketat untuk meletakkan batu pertama masa depan Anda di sini.</p>
<p data-path-to-node="14">Mulai hari ini, Anda bukan lagi seorang siswa yang pasif menerima informasi, melainkan seorang <strong data-path-to-node="14" data-index-in-node="95">Mahasiswa</strong>&mdash;agen perubahan, pemikir kritis, dan inovator masa depan.</p>
<p data-path-to-node="15"><strong data-path-to-node="15" data-index-in-node="0">Hadirin dan Mahasiswa sekalian,</strong></p>
<p data-path-to-node="16">Dunia luar sana sedang bergerak dengan kecepatan yang luar biasa. Disrupsi teknologi, perkembangan kecerdasan buatan, hingga dinamika industri kreatif menuntut kita untuk tidak sekadar menjadi penonton. Sesuai dengan motto kampus kita, <strong data-path-to-node="16" data-index-in-node="236">"Mengakar pada Tradisi, Menjulang dalam Inovasi,"</strong> Universitas Purbayan berkomitmen untuk menjadi laboratorium hidup bagi Anda semua.</p>
<p data-path-to-node="17">Di sinilah tempat di mana kode-kode pemrograman yang Anda ketik, desain-desain visual yang Anda ciptakan, dan strategi bisnis yang Anda rancang akan diasah menjadi solusi nyata bagi masyarakat. Kita tidak hanya belajar untuk lulus ujian, kita belajar untuk memecahkan masalah nyata (<em data-path-to-node="17" data-index-in-node="283">real-world problems</em>).</p>
<p data-path-to-node="18">Kami telah menyiapkan ekosistem kurikulum yang fleksibel, kemitraan erat dengan industri, serta fasilitas modern untuk mendukung ruang gerak kreativitas Anda tanpa batas. Namun ingat, fasilitas terbaik tidak akan menghasilkan apa pun tanpa adanya <strong data-path-to-node="18" data-index-in-node="247">komitmen, kerja keras, dan kejujuran</strong> dari dalam diri saudara sekalian.</p>
<blockquote data-path-to-node="19">
<p data-path-to-node="19,0"><em data-path-to-node="19,0" data-index-in-node="0">"Jangan takut untuk gagal, karena dari setiap eror dan kegagalan dalam proses belajar, di situlah mentalitas seorang profesional dan pemimpin sedang dibentuk."</em></p>
</blockquote>
<p data-path-to-node="20"><strong data-path-to-node="20" data-index-in-node="0">Para Mahasiswa Baru yang Saya Cintai,</strong></p>
<p data-path-to-node="21">Manfaatkan masa-masa kuliah ini dengan bijak. Jangan menjadi mahasiswa yang hanya "kupu-kupu" (kuliah-pulang-kuliah-pulang). Aktiflah di organisasi, ikuti kompetisi, bangun jaringan (<em data-path-to-node="21" data-index-in-node="183">networking</em>), dan tetaplah rendah hati dengan menjaga nilai-nilai luhur etika dan kebudayaan kita.</p>
<p data-path-to-node="22">Sambutlah tahun akademik 2025/2026 ini dengan energi positif, rasa ingin tahu yang tinggi, dan semangat pantang menyerah. Bersama Universitas Purbayan, mari kita buktikan bahwa generasi muda Indonesia siap memimpin di era digital ini.</p>
<p data-path-to-node="23">Akhir kata, dengan mengucap <em data-path-to-node="23" data-index-in-node="28">Bismillahirahmanirrahim</em>, Tahun Akademik 2025/2026 Universitas Purbayan secara resmi dinyatakan dimulai.</p>
<p data-path-to-node="24">Selamat belajar, selamat berkarya, dan selamat berinovasi!</p>', '01KTKPBB2MA0QQ36DAAX3S1ZWT.png', '2026-06-08 13:22:00', '2026-06-08 13:22:00');

-- Table: headmasters
DROP TABLE IF EXISTS `headmasters`;
CREATE TABLE `headmasters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `headmasters` (`id`, `nama`, `jabatan`, `image`, `created_at`, `updated_at`) VALUES (1, 'Alif', 'Rektor 1', '01KTKPH8F5JG5SHS8GZ5GW43GE.png', '2026-06-08 11:53:30', '2026-06-08 13:25:13');
INSERT INTO `headmasters` (`id`, `nama`, `jabatan`, `image`, `created_at`, `updated_at`) VALUES (2, 'Tirta', 'Rektor 2', '01KTKPK6YFD87N5H45EDH0K86S.png', '2026-06-08 13:26:17', '2026-06-08 13:26:17');
INSERT INTO `headmasters` (`id`, `nama`, `jabatan`, `image`, `created_at`, `updated_at`) VALUES (3, 'Raymond', 'Rektor 3', '01KTKPKRDCAS4N05BA96VHMVDD.png', '2026-06-08 13:26:35', '2026-06-08 13:26:35');

-- Table: histories
DROP TABLE IF EXISTS `histories`;
CREATE TABLE `histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `histories` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES (1, '<p>Nama <strong data-path-to-node="7" data-index-in-node="5">"Purbayan"</strong> diambil dari akar historis dan geografis yang luhur, merepresentasikan semangat kepemimpinan, ketangguhan, dan kebijaksanaan. Gagasan awal pendirian perguruan tinggi ini lahir dari kegelisahan para tokoh pendidik, budayawan, dan praktisi teknologi di wilayah [Sebutkan Nama Wilayah/Kota] akan pentingnya pusat pendidikan tinggi yang mampu mengintegrasikan nilai-nilai luhur lokal dengan kemajuan sains global.</p>', '01KTKP9EWHBKB18DSVS8FNEGNG.png', '2026-06-08 13:20:58', '2026-06-08 13:20:58');

-- Table: job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Table: jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Table: migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2025_01_05_120614_create_cooperations_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '2025_01_05_120623_create_greetings_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '2025_01_05_120713_create_students_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '2025_01_05_121008_create_teachers_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8, '2025_01_05_121202_create_admins_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9, '2025_01_05_121225_create_headmasters_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10, '2025_01_05_121339_create_facilities_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11, '2025_01_05_121347_create_histories_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '2025_01_05_121356_create_aboutmes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13, '2025_01_05_121402_create_visimisis_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14, '2025_01_05_121414_create_announcements_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (15, '2025_01_05_121428_create_news_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (16, '2025_01_05_121436_create_footers_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (17, '2026_06_05_160949_create_sessions_table', 2);

-- Table: news
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `news_slug_unique` (`slug`),
  KEY `news_users_id_foreign` (`users_id`),
  CONSTRAINT `news_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `news` (`id`, `title`, `content`, `image`, `users_id`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Pendaftaran Mahasiswa Baru Tahun Akademik 2025/2026', '<h2 data-section-id="1xokbmw" data-start="109" data-end="134"><span style="font-size: 14px;">UNIVERSITAS PURBAYAN</span></h2>
<h3 data-section-id="im3urv" data-start="135" data-end="163"><span style="font-size: 14px;">Tahun Akademik 2026/2027</span></h3>
<p data-start="165" data-end="436"><span style="font-size: 14px;"><strong data-start="165" data-end="222">Bangun Masa Depan Cerah Bersama Universitas Purbayan!</strong></span><br data-start="222" data-end="225"><span style="font-size: 14px;">Universitas Purbayan membuka kesempatan bagi calon mahasiswa baru untuk bergabung dan mengembangkan potensi akademik maupun non-akademik dalam lingkungan pendidikan yang inovatif, berkualitas, dan berdaya saing.</span></p>
<h3 data-section-id="1352it7" data-start="438" data-end="463"><span style="font-size: 14px;">📅 Jadwal Pendaftaran</span></h3>
<p data-start="464" data-end="580"><span style="font-size: 14px;"><strong data-start="464" data-end="479">Gelombang 1</strong> : Januari &ndash; Maret 2026</span><br data-start="502" data-end="505"><span style="font-size: 14px;"><strong data-start="505" data-end="520">Gelombang 2</strong> : April &ndash; Juni 2026</span><br data-start="540" data-end="543"><span style="font-size: 14px;"><strong data-start="543" data-end="558">Gelombang 3</strong> : Juli &ndash; Agustus 2026</span></p>
<h3 data-section-id="19zj8sm" data-start="582" data-end="602"><span style="font-size: 14px;">📖 Program Studi</span></h3>
<ul data-start="603" data-end="750">
<li style="font-size: 14px;" data-section-id="1vnyot5" data-start="603" data-end="625"><span style="font-size: 14px;">Teknik Informatika</span></li>
<li style="font-size: 14px;" data-section-id="ginf93" data-start="626" data-end="646"><span style="font-size: 14px;">Sistem Informasi</span></li>
<li style="font-size: 14px;" data-section-id="fmd9e" data-start="647" data-end="660"><span style="font-size: 14px;">Manajemen</span></li>
<li style="font-size: 14px;" data-section-id="7ra09k" data-start="661" data-end="674"><span style="font-size: 14px;">Akuntansi</span></li>
<li style="font-size: 14px;" data-section-id="j6wvb2" data-start="675" data-end="694"><span style="font-size: 14px;">Ilmu Komunikasi</span></li>
<li style="font-size: 14px;" data-section-id="4my15g" data-start="695" data-end="750"><span style="font-size: 14px;">(Sesuaikan dengan program studi Universitas Purbayan)</span></li>
</ul>
<h3 data-section-id="12lscgb" data-start="752" data-end="782"><span style="font-size: 14px;">📄 Persyaratan Pendaftaran</span></h3>
<p data-start="783" data-end="954"><span style="font-size: 14px;">✔ Lulusan SMA/SMK/MA atau sederajat</span><br data-start="818" data-end="821"><span style="font-size: 14px;">✔ Fotokopi Ijazah / Surat Keterangan Lulus (SKL)</span><br data-start="869" data-end="872"><span style="font-size: 14px;">✔ Fotokopi KTP/Kartu Pelajar</span><br data-start="900" data-end="903"><span style="font-size: 14px;">✔ Fotokopi Kartu Keluarga (KK)</span><br data-start="933" data-end="936"><span style="font-size: 14px;">✔ Pas Foto terbaru</span></p>
<h3 data-section-id="14avg9r" data-start="956" data-end="979"><span style="font-size: 14px;">🖥 Cara Pendaftaran</span></h3>
<ol data-start="980" data-end="1174">
<li style="font-size: 14px;" data-section-id="kybq6l" data-start="980" data-end="1028"><span style="font-size: 14px;">Mengisi formulir pendaftaran online/offline</span></li>
<li style="font-size: 14px;" data-section-id="mrzhbp" data-start="1029" data-end="1064"><span style="font-size: 14px;">Melengkapi dokumen persyaratan</span></li>
<li style="font-size: 14px;" data-section-id="6pz3y3" data-start="1065" data-end="1108"><span style="font-size: 14px;">Melakukan pembayaran biaya pendaftaran</span></li>
<li style="font-size: 14px;" data-section-id="l0uzur" data-start="1109" data-end="1146"><span style="font-size: 14px;">Verifikasi data oleh panitia PMB</span></li>
<li style="font-size: 14px;" data-section-id="axzubg" data-start="1147" data-end="1174"><span style="font-size: 14px;">Pengumuman hasil seleksi</span></li>
</ol>
<h3 data-section-id="jy17o8" data-start="1176" data-end="1213"><span style="font-size: 14px;">⭐ Keunggulan Universitas Purbayan</span></h3>
<p data-start="1214" data-end="1441"><span style="font-size: 14px;">✅ Tenaga pengajar profesional dan kompeten</span><br data-start="1256" data-end="1259"><span style="font-size: 14px;">✅ Fasilitas pembelajaran modern</span><br data-start="1290" data-end="1293"><span style="font-size: 14px;">✅ Program pengembangan keterampilan &amp; karier</span><br data-start="1337" data-end="1340"><span style="font-size: 14px;">✅ Lingkungan belajar aktif, inovatif, dan kolaboratif</span><br data-start="1393" data-end="1396"><span style="font-size: 14px;">✅ Peluang beasiswa bagi mahasiswa berprestasi</span></p>
<h3 data-section-id="7yaum3" data-start="1443" data-end="1466"><span style="font-size: 14px;">📞 Informasi Kontak</span></h3>
<p data-start="1467" data-end="1609"><span style="font-size: 14px;">📍 <strong data-start="1470" data-end="1494">Universitas Purbayan</strong></span><br data-start="1494" data-end="1497"><span style="font-size: 14px;">📧 Email: <a class="decorated-link cursor-pointer" rel="noopener" data-start="1507" data-end="1537">info@universitaspurbayan.ac.id</a></span><br data-start="1537" data-end="1540"><span style="font-size: 14px;">📱 WhatsApp: 08xxxxxxxxxx</span><br data-start="1565" data-end="1568"><span style="font-size: 14px;">🌐 Website: <a class="decorated-link cursor-pointer" target="_new" rel="noopener" data-start="1580" data-end="1609">www.universitaspurbayan.ac.id</a></span></p>
<p data-start="1611" data-end="1701"><span style="font-size: 14px;"><strong data-start="1611" data-end="1701">Ayo Daftar Sekarang! Jadilah bagian dari generasi unggul bersama Universitas Purbayan.</strong></span></p>', '01KTKPR3YWF0JEVPYP8F0HP0TJ.jpg', 1, 'pendaftaran-mahasiswa-baru-tahun-akademik-20252026', '2026-06-08 13:28:58', '2026-06-08 13:28:58');
INSERT INTO `news` (`id`, `title`, `content`, `image`, `users_id`, `slug`, `created_at`, `updated_at`) VALUES (2, 'UKKS', '<h3 data-section-id="14kej3o" data-start="205" data-end="239"><span style="font-size: 14px;">🏥 UKKS Universitas Purbayan</span></h3>
<p data-start="240" data-end="618"><span style="font-size: 14px;"><strong data-start="240" data-end="309">Unit Kesehatan Kampus dan Keselamatan (UKKS) Universitas Purbayan</strong> merupakan unit layanan yang berfokus pada kesehatan, keselamatan, serta kesejahteraan sivitas akademika di lingkungan kampus. UKKS hadir untuk memberikan pelayanan kesehatan dasar, edukasi kesehatan, penanganan awal keadaan darurat, serta mendukung terciptanya lingkungan kampus yang sehat, aman, dan nyaman.</span></p>
<h3 data-section-id="8kq25c" data-start="620" data-end="635"><span style="font-size: 14px;">Fungsi UKKS</span></h3>
<ul data-start="636" data-end="883">
<li style="font-size: 14px;" data-section-id="1wrzkzk" data-start="636" data-end="697"><span style="font-size: 14px;">Pelayanan kesehatan dasar mahasiswa dan civitas akademika</span></li>
<li style="font-size: 14px;" data-section-id="16w2lu1" data-start="698" data-end="738"><span style="font-size: 14px;">Edukasi dan promosi kesehatan kampus</span></li>
<li style="font-size: 14px;" data-section-id="k1tg51" data-start="739" data-end="779"><span style="font-size: 14px;">Penanganan pertolongan pertama (P3K)</span></li>
<li style="font-size: 14px;" data-section-id="1sxhhqu" data-start="780" data-end="841"><span style="font-size: 14px;">Pendampingan kesehatan mental dan kesejahteraan mahasiswa</span></li>
<li style="font-size: 14px;" data-section-id="1glx8ge" data-start="842" data-end="883"><span style="font-size: 14px;">Mendukung program kampus sehat dan aman</span></li>
</ul>
<h3 data-section-id="ynmfer" data-start="885" data-end="893"><span style="font-size: 14px;">Visi</span></h3>
<blockquote data-start="894" data-end="1021">
<p data-start="896" data-end="1021"><span style="font-size: 14px;">Menjadi pusat layanan kesehatan kampus yang profesional, responsif, dan mendukung terciptanya lingkungan akademik yang sehat.</span></p>
</blockquote>
<h3 data-section-id="ynjrlk" data-start="1023" data-end="1031"><span style="font-size: 14px;">Misi</span></h3>
<ul data-start="1032" data-end="1215">
<li style="font-size: 14px;" data-section-id="19brhxo" data-start="1032" data-end="1085"><span style="font-size: 14px;">Menyediakan layanan kesehatan yang mudah diakses.</span></li>
<li style="font-size: 14px;" data-section-id="166t49p" data-start="1086" data-end="1146"><span style="font-size: 14px;">Meningkatkan kesadaran hidup sehat di lingkungan kampus.</span></li>
<li style="font-size: 14px;" data-section-id="b88g7" data-start="1147" data-end="1215"><span style="font-size: 14px;">Memberikan edukasi kesehatan dan keselamatan secara berkelanjutan.</span></li>
</ul>', '01KTKPSA71AFT9Z1DMYXQ7ZZZA.png', 1, 'ukks', '2026-06-08 13:29:38', '2026-06-08 13:29:38');
INSERT INTO `news` (`id`, `title`, `content`, `image`, `users_id`, `slug`, `created_at`, `updated_at`) VALUES (3, 'Juara', '<h3 data-section-id="1a8d9oq" data-start="115" data-end="151"><span style="font-size: 14px;">🏆 Prestasi Universitas Purbayan</span></h3>
<p data-start="153" data-end="539"><span style="font-size: 14px;">Universitas Purbayan berkomitmen menciptakan lingkungan akademik yang unggul dan kompetitif melalui berbagai pencapaian mahasiswa maupun sivitas akademika. Berbagai prestasi telah diraih dalam bidang akademik, penelitian, olahraga, seni, teknologi, serta kompetisi tingkat regional maupun nasional sebagai bentuk dedikasi terhadap kualitas pendidikan dan pengembangan potensi mahasiswa.</span></p>
<h3 data-section-id="1p2r9ju" data-start="541" data-end="560"><span style="font-size: 14px;">Bidang Prestasi</span></h3>
<p data-start="561" data-end="1056"><span style="font-size: 14px;">🏅 <strong data-start="564" data-end="585">Prestasi Akademik</strong> &ndash; Kompetisi ilmiah, olimpiade, karya tulis, dan penelitian.</span><br data-start="645" data-end="648"><span style="font-size: 14px;">💻 <strong data-start="651" data-end="683">Prestasi Teknologi &amp; Inovasi</strong> &ndash; Pengembangan aplikasi, sistem informasi, dan inovasi digital.</span><br data-start="747" data-end="750"><span style="font-size: 14px;">⚽ <strong data-start="752" data-end="773">Prestasi Olahraga</strong> &ndash; Kejuaraan olahraga tingkat daerah hingga nasional.</span><br data-start="826" data-end="829"><span style="font-size: 14px;">🎨 <strong data-start="832" data-end="863" data-is-only-node="">Prestasi Seni &amp; Kreativitas</strong> &ndash; Lomba seni, desain, fotografi, musik, dan kreativitas mahasiswa.</span><br data-start="930" data-end="933"><span style="font-size: 14px;">🤝 <strong data-start="936" data-end="974">Prestasi Organisasi &amp; Kepemimpinan</strong> &ndash; Kontribusi mahasiswa dalam organisasi, pengabdian masyarakat, dan kepemimpinan.</span></p>', '01KTKPV3ANKDSP7HF750RW201G.jpeg', 1, 'juara', '2026-06-08 13:30:36', '2026-06-08 13:30:36');

-- Table: password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Table: sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('0HCc1w76MihWsEFdJqjsPaLEQKx4nit4S1SIVzlG', NULL, '152.233.15.121', 'curl/8.19.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME5XYm8wM1gxd1dIdVo4c21OQ20yYURKTzF2WGJTRWtJM2Y4WHQ2OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vbGFyYXZlbC1wcm9kdWN0aW9uLWE0YzEudXAucmFpbHdheS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780919371);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('7e2PIuN314nLj7XoQ6CxHbk7jMJPTYDazNxbMwMq', NULL, '152.233.15.120', 'WhatsApp/2.2620.102 W', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3JyZ1JaYTJna2JCcXhCRDJtMFZzVm81M1NTaTBMTUNia2ZZYm11NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vbGFyYXZlbC1wcm9kdWN0aW9uLWE0YzEudXAucmFpbHdheS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780927218);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('cE58lUVpXCAd7h4wosVX9AWLTHrz6s3TQfXnrxQn', NULL, '152.233.15.121', 'curl/8.19.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzBQVVl4T1JiYkp2ajBWYmpISmxKcTg3dGljcVoxQXFRUjBjb2huYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vbGFyYXZlbC1wcm9kdWN0aW9uLWE0YzEudXAucmFpbHdheS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780918759);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('HtQhGgiEuCE4zbcLYQZOUSYkYQpM7L5solPob8Zt', NULL, '152.233.15.121', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFVMRmNRbVlhSjAzOVdSWWNLN3BmN2Jwd2tJRW9GYnRwMXB2MkdEMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vbGFyYXZlbC1wcm9kdWN0aW9uLWE0YzEudXAucmFpbHdheS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780926754);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('qi3RxgjusykPshD4DTODQQZTB2bT5qBzKBTYivQo', 1, '152.233.15.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNXZWblhyVTFBdlF5d294U0EzNTloUXJEVEFab0lxMThCRk10Y2ttWSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUyOiJodHRwczovL2xhcmF2ZWwtcHJvZHVjdGlvbi1hNGMxLnVwLnJhaWx3YXkuYXBwL2FkbWluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjg6ImZpbGFtZW50IjthOjA6e319', 1780929294);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('VTGcsHtI5L1unb4t0JS0atjbNl4LpshLHMsdAFyl', NULL, '152.233.15.121', 'curl/8.19.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjBMejZkeElCOGpRd1FDbHQ4THdHZXpmVzhFaVJuNEt2d1VOdTlqeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vbGFyYXZlbC1wcm9kdWN0aW9uLWE0YzEudXAucmFpbHdheS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780919192);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('xP941iReg0p3QqN34dsynA0q5ePfrKVA1V9jgJsu', NULL, '152.233.30.101', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUcyblNON3lSdGVoQ0VhdUs0QzRuTUpKTEU0bHpFc2JWZWFTTmZsTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vbGFyYXZlbC1wcm9kdWN0aW9uLWE0YzEudXAucmFpbHdheS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780920830);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('YPipDBCzgdk3s7hS3PvWTL74Pw4LUnmHTCzI1kac', NULL, '152.233.15.121', 'curl/8.19.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclVEWUlZUUhXQUpqWmg3Qk04S0h4NjEwMDhaRnZ4OUtWNDRUV0ZDOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vbGFyYXZlbC1wcm9kdWN0aW9uLWE0YzEudXAucmFpbHdheS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780919122);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('yUYLJD9o8YYicM0kP3ekYwEGgWqAXmXB8mWm5ikm', NULL, '152.233.15.120', 'curl/8.19.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDM2eGNNbVJlN3FBdXJsNktTSW4zMlJGUEdPdFV1M3ZwS2VuR1FrcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vbGFyYXZlbC1wcm9kdWN0aW9uLWE0YzEudXAucmFpbHdheS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1780918941);

-- Table: students
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `namalengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapanggilan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jalur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `programstudi_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `programstudi_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `students` (`id`, `namalengkap`, `namapanggilan`, `email`, `nomor_hp`, `jalur`, `image`, `programstudi_1`, `programstudi_2`, `created_at`, `updated_at`) VALUES (1, 'Adda', 'adaa', 'ruzz1239@gmail.com', 4343, 'Reguler', '01KTKQ4TXR076ZEYPMFAF4J3AQ.png', 'S1 Teknik Industri', 'S1 Fisika', '2026-06-08 13:35:26', '2026-06-08 13:35:55');

-- Table: teachers
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `teachers` (`id`, `nama`, `nip`, `pendidikan`, `jabatan`, `email`, `topik`, `image`, `created_at`, `updated_at`) VALUES (1, 'Elly', 001, 'S2 (Magister): Magister Ilmu Komputer / Teknik Informatika', 'Lektor', 'elly@purbayan.ac.id', 'Secara aktif mengajar dan melakukan publikasi ilmiah ilmiah yang berfokus pada bidang pengembangan sistem dan interaksi manusia-komputer:  Mobile and Web Development: Rekayasa perangkat lunak untuk platform web dan mobile menggunakan kerangka kerja (frame', '01KTKQ2WCS02GCC8WQFTMT6Q8A.png', '2026-06-08 13:31:40', '2026-06-08 13:34:51');
INSERT INTO `teachers` (`id`, `nama`, `nip`, `pendidikan`, `jabatan`, `email`, `topik`, `image`, `created_at`, `updated_at`) VALUES (2, 'Dr. Ir. Haikal, M.T.', 0202, 'S3: Doktor Teknik Elektro dan Teknologi Informasi – Universitas Gadjah Mada', 'Lektor Kepala', 'haikal@purbayan.ac.id', 'Internet of Things (IoT) Berbasis ESP32, Sistem Tertanam (Embedded Systems), Arsitektur Cloud Computing, dan Rekayasa Perangkat Lunak Skala Besar.', '01KTKPY9DB649T0XGEEEB71RE6.png', '2026-06-08 13:32:20', '2026-06-08 13:32:20');
INSERT INTO `teachers` (`id`, `nama`, `nip`, `pendidikan`, `jabatan`, `email`, `topik`, `image`, `created_at`, `updated_at`) VALUES (3, 'Timoty, M.Sn.', 0303, 'S2: Magister Desain Komunikasi Visual – Institut Seni Indonesia Yogyakarta', 'Asisten Ahli / Lektor', 'timoty@purbayan.ac.id', 'Branding & Corporate Identity, Multimedia Interaktif, User Experience (UX) Research, dan Desain Grafis Digital.', '01KTKPZBJ5CGKQ6CDDXJ2B7GJP.png', '2026-06-08 13:32:55', '2026-06-08 13:32:55');
INSERT INTO `teachers` (`id`, `nama`, `nip`, `pendidikan`, `jabatan`, `email`, `topik`, `image`, `created_at`, `updated_at`) VALUES (4, 'Xaviera M.M.', 0404, 'S2: Magister Manajemen Bisnis Teknologi – Institut Teknologi Sepuluh Nopember', 'Lektor', 'Xaviera@purbayan.ac.id', 'Digital Marketing Strategy, Analisis Bisnis, Manajemen E-Commerce, dan Pengembangan Startup (Technopreneurship).', '01KTKQ2646FTRZ49PPZAWMXCCD.png', '2026-06-08 13:34:28', '2026-06-08 13:34:28');

-- Table: users
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1, 'Alif', 'alif@gmail.com', NULL, '$2y$12$t1QL0aL51FW4NyexHNo8fe0fyrWvODCLbGW3ZBQZRJt.zWV67B9K6', NULL, '2026-06-08 10:22:30', '2026-06-08 10:22:30');

-- Table: visimisis
DROP TABLE IF EXISTS `visimisis`;
CREATE TABLE `visimisis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `visi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `visimisis` (`id`, `visi`, `misi`, `image`, `created_at`, `updated_at`) VALUES (1, '<p><span style="font-size: 16px;">"Menjadi Universitas Unggulan Berbasis Teknologi dan Industri Kreatif yang Adaptif, Berdaya Saing Nasional, serta Berakar pada Nilai Luhur Budaya pada Tahun 2035."</span></p>', '<p data-path-to-node="8">Untuk mewujudkan visi tersebut, Universitas Purbayan menetapkan 4 (empat) misi utama dalam penyelenggaraan Tri Dharma Perguruan Tinggi:</p>
<ol start="1" data-path-to-node="9">
<li>
<p data-path-to-node="9,0,0"><strong data-path-to-node="9,0,0" data-index-in-node="0">Pendidikan yang Progresif dan Relevan</strong></p>
<p data-path-to-node="9,0,1">Menyelenggarakan proses pembelajaran yang inovatif, berbasis teknologi mutakhir, dan adaptif terhadap perkembangan industri global guna menghasilkan lulusan yang kompeten, berintegritas, dan siap kerja.</p>
</li>
<li>
<p data-path-to-node="9,1,0"><strong data-path-to-node="9,1,0" data-index-in-node="0">Penelitian Terapan dan Inovatif</strong></p>
<p data-path-to-node="9,1,1">Mengembangkan riset di bidang sains, teknologi, dan desain kreatif yang solutif terhadap tantangan zaman serta mampu menghasilkan produk intelektual yang bermanfaat bagi masyarakat dan industri.</p>
</li>
<li>
<p data-path-to-node="9,2,0"><strong data-path-to-node="9,2,0" data-index-in-node="0">Pengabdian Masyarakat yang Berkelanjutan</strong></p>
<p data-path-to-node="9,2,1">Mengimplementasikan ilmu pengetahuan dan teknologi melalui program pengabdian masyarakat guna mendorong kemandirian ekonomi, digitalisasi daerah, dan pemberdayaan komunitas lokal.</p>
</li>
<li>
<p data-path-to-node="9,3,0"><strong data-path-to-node="9,3,0" data-index-in-node="0">Tata Kelola Kampus yang Akuntabel (Good University Governance)</strong></p>
<p data-path-to-node="9,3,1">Membangun ekosistem kampus yang profesional, transparan, dan kolaboratif melalui kemitraan strategis dengan dunia industri, pemerintah, serta institusi internasional.</p>
</li>
</ol>', '["01KTKP575BG56FDZMBZGRZZ5NY.png","01KTKP58F2XXX8XW2FGD7WF99S.png","01KTKP59Q9WJBBMQF6RM7W33DZ.png"]', '2026-06-08 13:18:42', '2026-06-08 13:18:42');

