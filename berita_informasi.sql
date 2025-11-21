-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2025 at 03:03 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berita_informasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_news`
--

CREATE TABLE `article_news` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `is_featured` enum('featured','not_featured') NOT NULL DEFAULT 'not_featured',
  `category_id` bigint UNSIGNED NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `article_news`
--

INSERT INTO `article_news` (`id`, `name`, `content`, `thumbnail`, `is_featured`, `category_id`, `author_id`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '5 Tips Cara Mengenali Pola Candle Stick', '<p>adafaafaf</p>', '01K7HRN3ADGJKQRG8RX6EBPX3E.png', 'featured', 2, 1, '5-tips-cara-mengenali-pola-candle-stick', NULL, '2025-10-14 08:25:32', '2025-10-14 08:25:32'),
(2, 'BMW keluarkan mobil sport terbaru yang memiliki tenaga hingga 500 HP', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br></p><h2>Where does it come from?</h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '01K7JQFVE5KD2KKD95KVT5BGSK.png', 'not_featured', 7, 6, 'bmw-keluarkan-mobil-sport-terbaru-yang-memiliki-tenaga-hingga-500-hp', NULL, '2025-10-14 17:24:26', '2025-10-14 17:24:26'),
(4, 'Inilah artis yang gemar bersepeda dihari minggu pagi!!!', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3><p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3>1914 translation by H. Rackham</h3><p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><p><br></p>', '01K7JVD8MA54JHWC48Z45CNZWG.png', 'not_featured', 4, 5, 'inilah-artis-yang-gemar-bersepeda-dihari-minggu-pagi', NULL, '2025-10-14 18:32:55', '2025-10-14 18:32:55'),
(5, 'Rumah baru Ahmad Sahroni bikin kepala geleng-geleng!!!', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3><p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><h3>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p><h3>1914 translation by H. Rackham</h3><p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><h3>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><p><br></p>', '01K7JVKWRV1Q1J2NN6T2N4Q0DC.png', 'featured', 4, 4, 'rumah-baru-ahmad-sahroni-bikin-kepala-geleng-geleng', NULL, '2025-10-14 18:36:32', '2025-10-14 18:36:32'),
(6, 'Manfaat Tidur Teratur bagi Kesehatan Tubuh dan Pikiran', '<p>&nbsp;Tidur bukan hanya waktu untuk beristirahat, tetapi juga proses penting bagi tubuh dalam memperbaiki sel, menyeimbangkan hormon, dan memperkuat sistem imun. Orang dewasa umumnya membutuhkan waktu tidur 7–9 jam per malam agar tubuh tetap bugar. Kurang tidur bisa menyebabkan kelelahan kronis, stres, bahkan meningkatkan risiko penyakit jantung.<br>&nbsp;Selain itu, tidur yang cukup membantu meningkatkan fungsi otak. Penelitian menunjukkan bahwa orang yang cukup tidur memiliki kemampuan konsentrasi dan daya ingat yang lebih baik. Jadi, mulai sekarang cobalah tidur dan bangun di jam yang sama setiap hari agar ritme tubuh tetap stabil.&nbsp;</p>', '01K8NNPRVJ33FF4B3156PJ42QY.jpeg', 'featured', 1, 2, 'manfaat-tidur-teratur-bagi-kesehatan-tubuh-dan-pikiran', NULL, '2025-10-28 07:06:40', '2025-11-04 18:09:12'),
(7, 'Pentingnya Gaya Hidup Sehat di Era Modern', '<p>Kehidupan modern sering kali membuat orang lupa menjaga kesehatannya. Padahal, menerapkan gaya hidup sehat tidak harus sulit. Langkah sederhana seperti mengonsumsi makanan bergizi, rutin berolahraga, dan menghindari stres sudah cukup memberikan dampak besar.<br>&nbsp;Gadget dan pekerjaan sering membuat seseorang duduk terlalu lama di depan layar. Akibatnya, muncul keluhan seperti nyeri punggung, mata lelah, dan pola tidur terganggu. Oleh karena itu, penting untuk sesekali beristirahat, berjalan sebentar, dan mengatur pola makan agar tubuh tetap aktif dan seimbang.</p>', '01K8NPRD08ASYGF571F925DYWC.jpeg', 'not_featured', 1, 2, 'pentingnya-gaya-hidup-sehat-di-era-modern', NULL, '2025-10-28 07:25:02', '2025-10-28 07:25:02'),
(8, 'Melihat Robot Kurir Suzuki di Jepang, Antar Pesanan Secara Autonomous', '<p><a href=\"https://kumparan.com/topic/suzuki\">Suzuki</a> Motor Corporation (SMC) menciptakan solusi untuk masyarakat lanjut usia (lansia) di <a href=\"https://kumparan.com/topic/jepang\">Jepang</a> dalam wujud robot pesan antar. Upaya ini direalisasikan dengan kolaborasi antara SMC, perusahan<em> </em><a href=\"https://kumparan.com/topic/start-up\"><em>start up</em></a><em> </em>Lomby, inc., dan Seven Eleven.</p><p>Business Planning Department New Mobility Service Business Development Division SMC, Mizuki Okumura mengatakan, robot bernama LM-A ini berawal dari permasalahan di Jepang yang memiliki populasi lansia cukup banyak.</p><p>“Di Jepang ada masalah sosial. Di Jepang banyak orang tua tapi kelahirannya sedikit, ini jadi salah satu masalah sosial di jepang. Ini (robot LM-A) jadi solusi dari permasalahan itu,” kata Mizuki dengan alih bahasa di Minami Osawa, Jepang pada Selasa (28/10/2025).</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/webp&quot;,&quot;filename&quot;:&quot;01k8mszfs9y389mehndzb98b60.webp&quot;,&quot;filesize&quot;:120754,&quot;height&quot;:480,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/OA47PxPa5W6exCeLFHa2K55O653VJA3XP5IDtomf.webp&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/OA47PxPa5W6exCeLFHa2K55O653VJA3XP5IDtomf.webp&quot;,&quot;width&quot;:640}\" data-trix-content-type=\"image/webp\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--webp\"><a href=\"http://127.0.0.1:8000/storage/OA47PxPa5W6exCeLFHa2K55O653VJA3XP5IDtomf.webp\"><img src=\"http://127.0.0.1:8000/storage/OA47PxPa5W6exCeLFHa2K55O653VJA3XP5IDtomf.webp\" width=\"640\" height=\"480\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">01k8mszfs9y389mehndzb98b60.webp</span> <span class=\"attachment__size\">117.92 KB</span></figcaption></a></figure>Suzuki berperan dalam menyediakan <em>base unit</em> atau sasis dan dapur mekanis kendaraan ini. Berpenggerak elektrik dengan skema mirip Suzuki Senior Car.</p><p>Dalam implementasinya, SMC menyiapkan ratusan <em>base unit</em> tersebut untuk digunakan sebagai bahan pengembangan berbagai kebutuhan oleh sejumlah perusahaan, termasuk Lomby, Inc.</p><p>CEO Lomby, Inc., Tomoharu Uchiyama menjelaskan bahwa pihaknya bertugas mengembangkan bodi bagian atas, radar, sensor, dan kamera pemantau, serta sistem komputasinya. Saat ini, robot LM-A masih dalam tahap uji coba sebelum disiapkan secara massal.</p><p>“Bagian atas dikembangkan oleh Lomby. Ada sensor 360 derajat dan 8 kamera di sekelilingnya. Kamera ini bisa mengidentifikasi warna lampu merah dan menyimpan detail peta lingkungan sekitar,” jelas Tomoharu di kesempatan yang sama.<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/webp&quot;,&quot;filename&quot;:&quot;01k8mt3yhj5rg4svqrxhertb50.webp&quot;,&quot;filesize&quot;:118182,&quot;height&quot;:480,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/oRKW3hoOiPtGmrIrNgJSWHLeADQrYWNlqCrEXr7s.webp&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/oRKW3hoOiPtGmrIrNgJSWHLeADQrYWNlqCrEXr7s.webp&quot;,&quot;width&quot;:640}\" data-trix-content-type=\"image/webp\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--webp\"><a href=\"http://127.0.0.1:8000/storage/oRKW3hoOiPtGmrIrNgJSWHLeADQrYWNlqCrEXr7s.webp\"><img src=\"http://127.0.0.1:8000/storage/oRKW3hoOiPtGmrIrNgJSWHLeADQrYWNlqCrEXr7s.webp\" width=\"640\" height=\"480\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">01k8mt3yhj5rg4svqrxhertb50.webp</span> <span class=\"attachment__size\">115.41 KB</span></figcaption></a></figure>Kemampuan sensor yang dikembangkan Lomby mampu beradaptasi dengan lingkungan sekitar, seperti membaca objek manusia, pesepeda, hingga kendaraan yang terparkir di jalurnya. Lebih dari itu, ia juga bisa melintasi <em>zebra cross</em> yang dilengkapi dengan lampu penunjuk lalu lintas. Bisa dikatakan ia merupakan kendaraan <em>autonomous</em>.</p><p>Tomoharu turut membeberkan sejumlah tantangan dalam pengembangan ke depan. Utamanya terletak pada kapabilitas membaca objek penghalang. Sekarang ini, robot LM-A bisa mendeteksi objek, tapi hanya sekadar berhenti, bukan menghindari.</p><p>Selain itu, tantangan lain datang dari kepuasan konsumen yang kurang terpenuhi jika jaraknya lebih dari 2 kilometer. “Tantangannya itu konsumen dengan jarak 1,5 kilometer bisa terpuaskan karena 30 menit bisa sampai. Kalau 2 km bisa lebih lama waktu pengirimannya jadi <em>customer satisfaction</em> menurun,” katanya.<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/webp&quot;,&quot;filename&quot;:&quot;01k8mt2k3gxr1fjx1zwew666nv.webp&quot;,&quot;filesize&quot;:117944,&quot;height&quot;:480,&quot;href&quot;:&quot;http://127.0.0.1:8000/storage/iY8iwP7TXMNgJifpdj2t5OuLwpWd38KqCgYjHNbo.webp&quot;,&quot;url&quot;:&quot;http://127.0.0.1:8000/storage/iY8iwP7TXMNgJifpdj2t5OuLwpWd38KqCgYjHNbo.webp&quot;,&quot;width&quot;:640}\" data-trix-content-type=\"image/webp\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--webp\"><a href=\"http://127.0.0.1:8000/storage/iY8iwP7TXMNgJifpdj2t5OuLwpWd38KqCgYjHNbo.webp\"><img src=\"http://127.0.0.1:8000/storage/iY8iwP7TXMNgJifpdj2t5OuLwpWd38KqCgYjHNbo.webp\" width=\"640\" height=\"480\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">01k8mt2k3gxr1fjx1zwew666nv.webp</span> <span class=\"attachment__size\">115.18 KB</span></figcaption></a></figure>Adapun kemampuan jelajah LM-A bisa mengantar pesanan hingga radius 2 kilometer. Konsumen bisa menggunakan layanan ini dengan membayar 330 yen untuk satu kali pengiriman. Fase uji coba ini melibatkan 4 robot LM-A telah beroperasi di dua cabang Seven Eleven di kawasan Minami Osawa, Tokyo, Jepang.</p><p>Sejatinya, robot ini bisa beroperasi hingga 5 jam dengan kecepatan maksimum 6 km/h dalam satu kali pengecasan. Namun, Lomby mengatur robot LM-A hanya mencakup radius 2 kilometer lantaran harus menjaga kualitas makanan yang diantar, supaya tetap segar ketika tiba di rumah konsumen.</p>', '01K8PQAKNVN5TWK9QVKHNMY75G.webp', 'not_featured', 3, 3, 'melihat-robot-kurir-suzuki-di-jepang-antar-pesanan-secara-autonomous', NULL, '2025-10-28 16:54:13', '2025-10-28 16:54:13'),
(9, 'Industri Film Indonesia Semakin Mendunia', '<p>&nbsp;Beberapa tahun terakhir, film Indonesia mulai menarik perhatian internasional. Kualitas sinematografi, alur cerita yang kuat, dan aktor berbakat membuat film lokal tak kalah dengan produksi luar negeri.<br>&nbsp;Banyak festival internasional kini memberi ruang bagi sineas Indonesia untuk menampilkan karyanya. Ini menjadi bukti bahwa industri perfilman tanah air terus berkembang pesat.&nbsp;</p>', '01K8Q0XR20MPW756D5NZSZWFHA.jpeg', 'not_featured', 4, 5, 'industri-film-indonesia-semakin-mendunia', NULL, '2025-10-28 19:41:58', '2025-10-28 19:41:58'),
(10, 'Prabowo Bakal Larang Thrifting Baju Bekas, Cari Produk Pengganti', '<p>Presiden <a href=\"https://kumparan.com/topic/prabowo\">Prabowo</a> Subianto bakal melarang penjualan baju bekas impor alias thrifting. Nantinya, para pedagang akan diberikan solusi produk pengganti lainnya.</p><p>Hal itu merupakan salah satu hasil rapat terbatas (ratas) hari ini, Selasa (4/11), bersama Menteri Koordinator Pemberdayaan Masyarakat Muhaimin Iskandar (Cak Imin) dan Menteri UMKM Maman Abdurahman.</p><p>\"Pembatasan impor barang bekas, terutama pakaian yang sangat meresahkan dan harus diakhiri segera,\" ungkap Cak Imin kepada awak media.</p><p>Saat ditanya terkait pelarangan kegiatan thrifting, Cak Imin menegaskan bahwa Prabowo memang akan melarang hal tersebut. \"Dilarang (thrifting),\" tegasnya.</p><p>Sementara itu, Maman menjelaskan pembatasan impor barang bekas merupakan salah satu arahan dari Prabowo. Ia memastikan pemerintah memikirkan pengganti atau substitusi produk.</p><p>\"Pada saat kita melakukan penindakan pembatasan terhadap barang-barang bekas, baju-baju bekas yang masuk, arahan dari Pak Presiden juga mempertimbangkan dan memikirkan substitusi produk,\" jelasnya.</p>', '01K98WXPXSNJA33FQN67EV64YP.webp', 'featured', 2, 7, 'prabowo-bakal-larang-thrifting-baju-bekas-cari-produk-pengganti', NULL, '2025-11-04 18:18:22', '2025-11-04 18:18:22'),
(11, 'Bagaimana China Membanjiri Produk \'Murah\' di Tengah Perang Tarif?', '<p>Presiden China, Xi Jinping, sangat jeli melihat peluang potensi pasar ekspor produk \'murah\' di tengah sanksi tarif tinggi oleh Presiden AS, Donald Trump.&nbsp;</p><p><br>ADVERTISEMENT<br><br></p><p>Sejak 5 bulan penerapan sanksi tarif resiprokal, mesin ekspor Negeri Tirai Bambu itu masih terus melesat dengan surplus perdagangan mencapai USD 1,2 triliun.</p><p>Sektor manufaktur yang menjadi tulang punggung tetap menunjukkan pertumbuhan kinerja. Ekspor ke India menjadi rekor tertinggi pada Agustus.</p><p>Sementara pengiriman ke Afrika berpotensi mencatatkan rekor pada akhir tahun. Menariknya, penjualan ke Asia Tenggara lebih tinggi dibanding pada saat pandemi.</p><p>Namun demikian, lonjakan ekspor besar-besaran produk murah ini mulai memicu kekhawatiran di banyak negara.&nbsp;</p><p><em>Bagaimana China membanjiri produk murah di tengah sanksi tarif AS?</em></p><p><strong>Produk Bekas</strong><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:2000,&quot;url&quot;:&quot;https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,f_auto,q_auto:best,w_640/v1634025439/01k30y2jh72kfy0sfdk3f8ckt4.jpg&quot;,&quot;width&quot;:2981}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,f_auto,q_auto:best,w_640/v1634025439/01k30y2jh72kfy0sfdk3f8ckt4.jpg\" width=\"2981\" height=\"2000\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:12,&quot;url&quot;:&quot;https://blue.kumparan.com/uikit-assets/assets/icons/zoom-in-white-86764a09a22e8c325202d741307c1377.svg&quot;,&quot;width&quot;:12}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://blue.kumparan.com/uikit-assets/assets/icons/zoom-in-white-86764a09a22e8c325202d741307c1377.svg\" width=\"12\" height=\"12\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Perbesar</p><p>Mendag Budi Santoso saat melihat produk tekstil ilegal berupa 19.391 balpres pakaian bekas senilai Rp 112,35 miliar dalam ekspose di di gudang yang berlokasi di Bojongsoang, Bandung, Jawa Barat pada Selasa (19/8/2025). Foto: Argya D. Maheswara/kumparan&nbsp;</p><p>Pakaian bekas, celana jeans, hingga tas branded bekas menjadi salah satu produk yang paling mudah dijumpai di Indonesia. Indonesia merupakan pasar empuk produk \'murah\' asal China.&nbsp;</p><p><br>ADVERTISEMENT<br><br></p><p>Mengutip <em>Bloomberg, </em>beredar video viral vendor China yang berencana akan melakukan ekspor celana jin dan kemeja hanya dengan 80 sen AS.</p><p>Usai video viral itu tersebar, Indonesia memperketat impor produk murah asal China. Selain itu, banyak negara mulai merasakan dampaknya, negara-negara yang telah bernegosiasi tarif dengan pemerintahan Trump enggan memulai perang dagang baru dengan ekonomi terbesar kedua di dunia.&nbsp;</p><p>Kondisi ini mengurangi tekanan China dari tarif tinggi AS yang sebelumnya diperkirakan akan memangkas setengah laju pertumbuhan ekonomi tahunan negara tersebut.</p><p>Wakil direktur riset China di Gavekal Dragonomics, Christopher Beddor, mengungkapkan bahwa beberapa negara tidak ingin terlihat memperburuk sistem perdagangan global.</p><p>Sementara yang lain menahan diri agar bisa menggunakan tarif terhadap China sebagai alat tawar dalam negosiasi mereka dengan AS.</p><p><br>ADVERTISEMENT<br><br></p><p>\"Beberapa negara mungkin tidak ingin terlihat seolah-olah berkontribusi pada terjadinya keretakan dalam sistem perdagangan global,\" kata Beddor.</p><p><strong>\'Dilema\'</strong><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:2055,&quot;url&quot;:&quot;https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,f_auto,q_auto:best,w_640/v1634025439/01jmh214ae9v6kjze7ycc557g0.jpg&quot;,&quot;width&quot;:3000}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,f_auto,q_auto:best,w_640/v1634025439/01jmh214ae9v6kjze7ycc557g0.jpg\" width=\"3000\" height=\"2055\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:12,&quot;url&quot;:&quot;https://blue.kumparan.com/uikit-assets/assets/icons/zoom-in-white-86764a09a22e8c325202d741307c1377.svg&quot;,&quot;width&quot;:12}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://blue.kumparan.com/uikit-assets/assets/icons/zoom-in-white-86764a09a22e8c325202d741307c1377.svg\" width=\"12\" height=\"12\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Perbesar</p><p>Ilustrasi Pabrik Manufaktur. Foto: AuthenticVision/Shutterstock</p><p>Selain Indonesia, Menteri Perdagangan Afrika Selatan, menolak ide mengenakan tarif tambahan pada mobil China dan memilih untuk mendorong investasi.</p><p>Di Amerika Latin, Chili dan Ekuador diam-diam menerapkan biaya tambahan pada barang impor murah, setelah pengguna aktif bulanan platform e-commerce</p><p>Sementara itu, Brasil yang sempat mengancam akan membalas tarif, justru memberi keringanan tarif bagi BYD Co Ltd, produsen mobil listrik terbesar China, agar meningkatkan produksi lokal.</p><p>Permintaan Global terhadap Barang-Barang China Masih Meningkat Gubernur bank sentral Kamboja, Chea Serey, mengakui dilema yang dihadapi negara-negara kecil yang bergantung pada Beijing .</p><p>\"Kami memang banyak mengimpor dari Tiongkok, Kami juga sangat bergantung pada investasi asing langsung dari China,\" ujarnya kepada <em>Bloomberg</em>, dikutip Selasa (4/11).</p><p><br>ADVERTISEMENT<br><br></p><p>Selain itu, pengiriman barang ke Vietnam juga meningkat, menunjukkan sebagian produk yang seharusnya menuju AS dan negara lain dialihkan untuk menghindari tarif tinggi yang diberlakukan Trump.</p><p>Permintaan global terhadap produk teknologi canggih buatan China juga terus melonjak, didorong oleh inovasi yang kompetitif di pasar dunia.&nbsp;</p><p>Penjualan ke negara-negara maju seperti Eropa dan Australia juga meningkat, menandakan Beijing berhasil menemukan pembeli baru untuk banyak produknya.</p><p><strong>Pangsa Pasar Besar</strong></p><p>Adam Wolfe dari Absolute Strategy Research mengungkapkan bahwa China memiliki posisi lebih kuat dibanding banyak negara lain dalam mencari pasar alternatif selain AS.&nbsp;</p><p>Analisisnya menunjukkan sekitar 50 persen produk yang dulu dijual China ke AS kini juga diekspor ke negara-negara BRICS. Ini menunjukkan sebagian besar produk yang tak lagi dibeli AS bisa dialihkan ke pasar lain.</p>', '01K98X0584N488HCH7HQDRMS1G.webp', 'not_featured', 2, 1, 'bagaimana-china-membanjiri-produk-murah-di-tengah-perang-tarif', NULL, '2025-11-04 18:19:42', '2025-11-04 18:19:42'),
(12, 'Memori Fronte, Mobil Penumpang Pertama Suzuki Indonesia', '<p>Berkunjung ke Plaza <a href=\"https://kumparan.com/topic/suzuki\">Suzuki</a> di Hamamatsu, Shizuoka, Jepang menghadirkan kilas balik perjalanan panjang Suzuki. Salah satunya <a href=\"https://kumparan.com/topic/mobil-klasik\">mobil klasik </a>di area koridor <a href=\"https://kumparan.com/topic/museum\">museum</a> yang menarik perhatian saya, yakni Suzuki Fronte dengan kode bodi LC20.</p><p><br>ADVERTISEMENT<br><br></p><p>Sejatinya, Fronte LC20 merupakan generasi ketiga yang lahir perdana di Jepang pada 1973, setelah Suzulight Fronte TLA di era 1962 dan Fronte LC10 pada tahun 1967.</p><p>Suzuki Fronte tentunya memiliki arti khusus sebagai langkah awal Suzuki menggarap pasar Tanah Air. Pada tahun 1974, Suzuki Fronte dengan kode bodi L20 mendarat di pasar Tanah Air. Kala itu, Suzuki masih dipegang oleh Indonesia Motor Company.<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:1200,&quot;url&quot;:&quot;https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,f_auto,q_auto:best,w_640/v1634025439/01k96f8kfcfm1nzkwpt7r1frgq.jpg&quot;,&quot;width&quot;:1600}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,f_auto,q_auto:best,w_640/v1634025439/01k96f8kfcfm1nzkwpt7r1frgq.jpg\" width=\"1600\" height=\"1200\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:12,&quot;url&quot;:&quot;https://blue.kumparan.com/uikit-assets/assets/icons/zoom-in-white-86764a09a22e8c325202d741307c1377.svg&quot;,&quot;width&quot;:12}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://blue.kumparan.com/uikit-assets/assets/icons/zoom-in-white-86764a09a22e8c325202d741307c1377.svg\" width=\"12\" height=\"12\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Perbesar</p><p>Suzuki Fronte LC20 di Plaza Suzuki, Hamamatsu, Shizuoka, Jepang pada Kamis (30/10/2025). Foto: Syahrul Ghiffari/kumparan</p><p>Kemudian, memasuki era 1976, PT Indomobil Utama (IMU) mulai mengelola pemasaran Suzuki Fronte di Indonesia, sekaligus memulai perakitan secara Completely Knocked Down (CKD) di pabrik Pulogadung.</p><p>Secara desain, ia memiliki dimensi sangat kompak. Tak heran, Fronte LC20 masuk kategori <em>kei car</em> di Jepang. Bagian depan dilengkapi lampu bulat yang selaras dengan lekuk bodi keseluruhan penuh kesan mengkurva.</p><p><br>ADVERTISEMENT<br><br></p><p>Bagasi belakang juga dibuat praktis, guna menunjang kebutuhan mobilitas sehari-hari. Bagian kaca pintu bagasi bisa dibuka terpisah dari pintu keseluruhan, sehingga tidak membutuhkan ruang banyak ketika hendak mengakses ruang kargo.<figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:1200,&quot;url&quot;:&quot;https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,f_auto,q_auto:best,w_640/v1634025439/01k96faktkfwzgnnj4sfaq9k1r.jpg&quot;,&quot;width&quot;:1600}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,f_auto,q_auto:best,w_640/v1634025439/01k96faktkfwzgnnj4sfaq9k1r.jpg\" width=\"1600\" height=\"1200\"><figcaption class=\"attachment__caption\"></figcaption></figure><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:12,&quot;url&quot;:&quot;https://blue.kumparan.com/uikit-assets/assets/icons/zoom-in-white-86764a09a22e8c325202d741307c1377.svg&quot;,&quot;width&quot;:12}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"https://blue.kumparan.com/uikit-assets/assets/icons/zoom-in-white-86764a09a22e8c325202d741307c1377.svg\" width=\"12\" height=\"12\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Perbesar</p><p>Suzuki Fronte LC20 di Plaza Suzuki, Hamamatsu, Shizuoka, Jepang pada Kamis (30/10/2025). Foto: Syahrul Ghiffari/kumparan</p><p>Masuk ke sektor mekanis, ia berbekal mesin 2-tak berkapasitas 360 cc 3-silinder bertenaga 33,5 dk dan torsi 41 Nm yang disalurkan ke dua roda belakang lewat transmisi manual 4-percepatan.</p><p>Keunikan lain dari Suzuki Fronte adalah posisi mesinnya yang berada di bagian belakang mobil. Sehingga, ia menganut format <em>rear engine</em> dan <em>rear wheel drive</em> (RWD).</p><p>Saat ini, populasi Suzuki Fronte LC20 tak lagi ramai di jalanan. Harganya pun terbilang gelap, lantaran sudah menjadi barang koleksi bagi pecinta otomotif Tanah Air.</p>', '01K98X3KH3498NE728FYEP6935.webp', 'featured', 3, 5, 'memori-fronte-mobil-penumpang-pertama-suzuki-indonesia', NULL, '2025-11-04 18:21:35', '2025-11-04 18:21:35'),
(13, 'Berita Populer: BBNKB Mobil Bekas Dihapus; Wujud Calon Mobil Nasional', '<p>Informasi penghapusan Bea Balik Nama Kendaraan Bermotor (<a href=\"https://kumparan.com/topic/bbnkb\">BBNKB</a>) untuk pembelian mobil bekas merupakan salah satu <a href=\"https://kumparan.com/topic/berita-populer\">berita populer</a> kumparanOTO, Selasa (4/11).</p><p><br>ADVERTISEMENT<br><br></p><p>Kemudian mengenal purwarupa i2C yang digadang sebagai calon mobil nasional, serta BAIC yang baru saja meresmikan diler ke-15 mereka di Puri Indah.</p><p>Selengkapnya rangkuman berita populer kumparanOTO.</p><h2><strong>Resmi! Beli Mobil Bekas Tak Lagi Bayar BBNKB</strong></h2><p>Pemerintah Indonesia resmi menghilangkan komponen Bea Balik Nama Kendaraan Bermotor (BBNKB) pada pembelian mobil bekas di seluruh Indonesia.</p><p>Kebijakan itu merujuk pada Undang Undang No. 1 Tahun 2022 tentang Hubungan Keuangan antara Pemerintah Pusat dan Pemerintah Daerah (HKPD) yang mengatur bahwa objek BBNKB hanya berlaku pada penyerahan pertama, alias dalam kondisi baru saja.</p><h2><strong>Wujud i2C, SUV Listrik Calon Mobil Nasional Indonesia</strong></h2><p>Pemerintah Indonesia melalui PT Teknologi Militer Indonesia (TMI) dan Italdesign telah bekerja sama untuk mengembangkan konsep desain mobil nasional. Mobil ini akan berwujud Sport Utility Vehicle (SUV) listrik bernama Indigenous Indonesian Car (i2C).</p><p><br>ADVERTISEMENT<br><br></p><p>Proyek tersebut dirancang untuk memenuhi kebutuhan kelembagaan negara sekaligus memperkuat identitas budaya dan inovasi teknologi Indonesia. Mobil listrik (BEV) itu juga menjadi langkah penting dalam menuju masa depan yang berkelanjutan dengan tetap menghormati nilai dan jati diri bangsa.</p>', '01K98X59C7NTR550TGZASFKGPA.webp', 'not_featured', 3, 6, 'berita-populer-bbnkb-mobil-bekas-dihapus-wujud-calon-mobil-nasional', NULL, '2025-11-04 18:22:30', '2025-11-04 18:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `avatar`, `occupation`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Alexander Grahambelle', 'alexander-grahambelle', '01K7HQ1GXNKJZTXCYJDZ3AV707.png', 'Trader', NULL, '2025-10-14 07:57:22', '2025-10-14 07:57:22'),
(2, 'Viona Isabella', 'viona-isabella', '01K7HQQWZKJBNA7D83DBK1N209.png', 'Actor', NULL, '2025-10-14 08:09:35', '2025-10-14 08:09:35'),
(3, 'Joe Nichole', 'joe-nichole', '01K7HQRWZNWXVHXS8613762C7K.png', 'Construction', NULL, '2025-10-14 08:10:08', '2025-10-14 08:10:08'),
(4, 'Vallencia Gosandra', 'vallencia-gosandra', '01K7HQSZ4GRA2AF1B9KT81SC3S.png', 'Financial Agent', NULL, '2025-10-14 08:10:43', '2025-10-14 08:10:43'),
(5, 'Susanti', 'susanti', '01K7HQVBT8N2XQGAPKTR25H8S7.png', 'Actor', NULL, '2025-10-14 08:11:28', '2025-10-14 08:11:28'),
(6, 'Rey Susanto', 'rey-susanto', '01K7HQYEKWBRVVZN9W86CD8PCS.png', 'Enterpreneur', NULL, '2025-10-14 08:13:10', '2025-10-14 08:13:10'),
(7, 'M.Amin Badali', 'mamin-badali', '01K98WSN21N2K08AENH8TFG14Y.JPG', 'Mahasiswa', NULL, '2025-11-04 18:16:09', '2025-11-04 18:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `banner_advertisements`
--

CREATE TABLE `banner_advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `is_active` enum('active','not_active') NOT NULL DEFAULT 'not_active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `banner_advertisements`
--

INSERT INTO `banner_advertisements` (`id`, `link`, `type`, `thumbnail`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'https://laravel.com/docs/11.x/installation#meet-laravel', 'square', '01K7HA5BVBYEYXG68023SKGXGX.png', 'active', NULL, '2025-10-14 04:12:16', '2025-10-14 04:12:16'),
(2, 'https://www.pinterest.com', 'banner', '01K7HM3DNJRYHTHV7NBBMEY6HJ.png', 'active', NULL, '2025-10-14 07:05:58', '2025-10-14 07:05:58'),
(3, 'https://www.pinterest.com', 'banner', '01K7HM949DX4AYZCZMC7CRADB8.png', 'active', NULL, '2025-10-14 07:09:05', '2025-10-14 18:12:19'),
(4, 'https://laravel.com/docs/11.x/installation#meet-laravel', 'square', '01K7HMBAM199K2TJPQT2XK9MTJ.png', 'active', NULL, '2025-10-14 07:10:17', '2025-10-14 07:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1763735154),
('livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1763735154;', 1763735154);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Health', '01K7H8C7FJ4EVEB63JK3X1DFQN.png', 'health', NULL, '2025-10-14 03:41:04', '2025-10-14 03:41:04'),
(2, 'Business', '01K7H8GT2ANP5421R1SHGCCNVB.png', 'business', NULL, '2025-10-14 03:43:34', '2025-10-14 03:47:51'),
(3, 'Automotive', '01K7H8HYRWMK7408XACMEW3J37.png', 'automotive', NULL, '2025-10-14 03:44:12', '2025-10-14 03:47:13'),
(4, 'Entertainment', '01K7H8JPNDCEJM21TT23G82PW0.png', 'entertainment', NULL, '2025-10-14 03:44:36', '2025-10-14 03:47:28'),
(5, 'Politic', '01K7H8KYQDSP15SP0F88BKD2K9.png', 'politic', NULL, '2025-10-14 03:45:17', '2025-10-14 03:45:17'),
(6, 'Foods', '01K7H8NGPM038MGA3YW1BDM3KC.png', 'foods', NULL, '2025-10-14 03:46:08', '2025-10-14 03:46:08'),
(7, 'Sport', '01K7H8PHDP2J3EK7JZRHEPH82B.png', 'sport', NULL, '2025-10-14 03:46:42', '2025-10-14 03:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_08_030026_create_categories_table', 2),
(5, '2025_10_08_030110_create_authors_table', 2),
(6, '2025_10_08_030139_create_banner_advertisements_table', 2),
(7, '2025_10_08_030152_create_article_news_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Exjw0On0eLdTJUzrXgephmHma49Q4vUMT2n7iT4M', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZFdabFdwMFlVQkg3VnFJeGlCa3dqQ3doRWhzVjRsUkZISlFvek9vNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL2Jtdy1rZWx1YXJrYW4tbW9iaWwtc3BvcnQtdGVyYmFydS15YW5nLW1lbWlsaWtpLXRlbmFnYS1oaW5nZ2EtNTAwLWhwIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGQxNExHMGF6ODU2d1B5T292bWpKbi5Qb2dsczg5RVdxYTFIOFFaTERQQlY4dUVvbDB0RGp1Ijt9', 1763737105);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'P.T Berita Informasi Global', 'admin@global.com', NULL, '$2y$12$d14LG0az856wPyOovmjJn.Pogls89EWqa1H8QZLDPBV8uEol0tDju', NULL, '2025-10-07 18:53:06', '2025-10-07 18:53:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_news`
--
ALTER TABLE `article_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_news_slug_unique` (`slug`),
  ADD KEY `article_news_category_id_foreign` (`category_id`),
  ADD KEY `article_news_author_id_foreign` (`author_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_slug_unique` (`slug`);

--
-- Indexes for table `banner_advertisements`
--
ALTER TABLE `banner_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_news`
--
ALTER TABLE `article_news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banner_advertisements`
--
ALTER TABLE `banner_advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_news`
--
ALTER TABLE `article_news`
  ADD CONSTRAINT `article_news_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
