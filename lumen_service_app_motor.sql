-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2022 pada 13.52
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen_service_app_motor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_brand` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industri` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `didirikan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendiri` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kantor_pusat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sejarah` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `brand`
--

INSERT INTO `brand` (`id`, `nama_brand`, `industri`, `didirikan`, `pendiri`, `kantor_pusat`, `produk`, `sejarah`, `gambar`, `web`, `created_at`, `updated_at`) VALUES
(1, 'Kawasaki', 'Alat Berat/Otomotif', '15 Oktober 1896', '	Shōzō Kawasaki', 'Chūō, Kobe, Jepang', '	Bakal pelanting, Dirgantara, Pembuatan kapal, Konstruksi, Otomotif', 'Kawasaki aktif dalam sejumlah bidang di industri dirgantara. Perusahaan ini merupakan kontraktor untuk Kementerian Pertahanan Jepang dan telah memproduksi sejumlah pesawat terbang, seperti pesawat angkut C-1, pesawat jet latih menengah T-4, dan pesawat patroli anti kapal selam P-3C. ', 'kawasaki.png', 'global.kawasaki.com', '2022-11-21 11:38:58', '2022-11-21 11:39:06'),
(2, 'Honda', 'Konglomerat', ' 24 September 1948', 'Soichiro Honda', 'Minato, Tokyo, Jepang', 'Mobil, Kendaraan niaga, Kendaraan mewah, Sepeda motor', 'Sepanjang hidupnya, pendiri Honda, Soichiro Honda, tertarik dengan mobil. Ia sebelumnya bekerja sebagai mekanik di garasi Art Shokai, di mana ia menyetel mobil dan memasukkannya ke ajang balap. Sepeda motor lengkap pertama, yang bingkai dan mesinnya diproduksi sendiri oleh Honda, adalah Tipe D tahun 1949, yang dipasarkan dengan nama Dream.[13][15] Pada tahun 1961, Honda meraih kemenangan Grand Prix dan World Championships pertamanya pada kelas 125cc dan 250cc.[16] Honda Motor Company pun terus tumbuh hingga menjadi produsen sepeda motor terbesar di dunia pada tahun 1964.', 'Honda.png', 'global,honda.com', '2022-11-22 12:34:29', '2022-11-22 12:34:35'),
(3, 'Ducati', 'Manufaktur sepeda motor', '1926', '	Bruno Ducati', 'Bologna, Italia', '	Sepeda motor', 'Ducati Motor Holding S.p.A merupakan salah satu perusahaan produsen sepeda motor terkemuka asal Italia. Mereka adalah salah satu dari 2 pionir lainnya bersama dengan Harley-Davidson dan BMW. Sejak tahun 1970 Ducati selalu memproduksi sepeda motor dengan mesin desmodromic valve timing L-twin dan rangka teralis.', 'Ducati.png', '	Ducati.com', '2022-11-22 12:34:36', '2022-11-22 12:34:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2022_11_21_110223_create_brand_table', 2),
(10, '2022_11_21_112331_create_motor_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `motors`
--

CREATE TABLE `motors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_motor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `motors`
--

INSERT INTO `motors` (`id`, `nama_motor`, `harga`, `deskripsi`, `gambar`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Kawasaki Ninja ZX-25R', 'Rp 105 Juta', 'Kawasaki Ninja ZX-25R memiliki 6 gambar eksterior, diantaranya Tampak belakang serong, Tangki BBM, Mesin, Jok, Ban depan, ban belakang.', 'kawasaki.png', 1, '2022-11-21 12:34:35', '2022-11-21 12:34:35'),
(2, 'Honda CBR250RR', 'Rp 75,15 Juta', 'Honda CBR250RR 2022 tersedia dalam rentang harga Rp 62,85 - 75,15 Juta di Indonesia. Tersedia dalam 6 pilihan warna dan 2 varian di Indonesia. CBR250RR digerakkan oleh mesin 249.7 cc dengan transmisi 6-Kecepatan. Honda CBR250RR memiliki tinggi jok 790 mm dengan bobot 168 kg. Rem depan menggunakan Disc, sedangkan di belakang Disc. Lebih dari 13 pengguna telah memberikan penilaian untuk CBR250RR berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. Pesaing terdekat Honda CBR250RR adalah Ninja ZX-25R, Ninja 250, YZF R25 dan CBR150R.', 'Honda.png', 2, '2022-11-21 12:53:55', '2022-11-21 12:53:57'),
(14, 'Honda CB650R', 'Rp 286,41 Juta', 'Harga Honda CB650R 2022 di Indonesia dimulai dari Rp 286,41 Juta. Tersedia dalam 2 pilihan warna dan 1 varian di Indonesia. CB650R digerakkan oleh mesin 648.72 cc dengan transmisi 6-Kecepatan. Honda CB650R memiliki tinggi jok 810 mm dengan bobot 203 kg. Rem depan menggunakan Cakram Ganda, sedangkan di belakang Disc. Pesaing terdekat Honda CB650R adalah TNT 899 dan F3.', 'Honda2.png', 2, '2022-11-22 10:37:54', '2022-11-22 10:37:54'),
(16, 'Kawasaki Z125 PROmag ', 'Rp 45,4 Juta ', 'Harga Kawasaki Z125 PRO 2022 di Indonesia dimulai dari Rp 45,4 Juta. Terdapat dalam 1 varian di Indonesia. Z125 PRO digerakkan oleh mesin 125 cc dengan transmisi 4-Speed. Rem depan menggunakan Disc, sedangkan di belakang Disc. Lebih dari 2 pengguna telah memberikan penilaian untuk Z125 PRO berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. Pesaing terdekat Kawasaki Z125 PRO adalah CBR150R, Duke 200, RC 250 dan YZF R15.', 'Kawasaki2.png', 1, '2022-11-22 12:26:05', '2022-11-22 12:27:25'),
(17, 'Ducati Panigale', '2 Milyar', 'Ducati Panigale 2022 tersedia dalam rentang harga Rp 530 Juta - 2 Milyar di Indonesia. Tersedia dalam 2 pilihan warna dan 2 varian di Indonesia. Panigale digerakkan oleh mesin 1198 cc dengan transmisi 6-Kecepatan. Ducati Panigale memiliki tinggi jok 830 mm dengan bobot 184 kg.Lebih dari 1 pengguna telah memberikan penilaian untuk Panigale berdasarkan fitur, jarak tempuh, kenyamanan tempat duduk dan kinerja mesin. Pesaing terdekat Ducati Panigale adalah Diavel, Monster, F4 dan F3.', 'Ducati.png', 3, '2022-11-22 12:34:58', '2022-11-22 12:39:07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `motors`
--
ALTER TABLE `motors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id_foregin` (`brand_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `motors`
--
ALTER TABLE `motors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
