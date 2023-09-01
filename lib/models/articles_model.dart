class ArticlesData {
  String? nama;
  String? penyebab;
  String? deskripsi;
  String? pencegahan;
  String? penanganan;
  String? urlGambar;

  ArticlesData(this.nama, this.penyebab, this.deskripsi, this.pencegahan,
      this.penanganan, this.urlGambar);

  static List<ArticlesData> diseasesData = [
    ArticlesData(
        "Bacterial Spot",
        "Bakteri Xanthomonas vesicatoria atau Xanthomonas euvesicatoria.",
        "Bacterial Spot adalah penyakit yang menyerang daun tomat dan disebabkan oleh bakteri Xanthomonas vesicatoria atau Xanthomonas euvesicatoria. Penyakit ini menyebabkan munculnya bercak berair berwarna coklat atau hitam pada daun. Bercak-bercak ini biasanya memiliki tepi yang tajam dan cenderung memperbesar jika lingkungan lembab.",
        "Gunakan benih dan tanaman yang bebas dari bakteri penyebab (Xanthomonas vesicatoria atau Xanthomonas euvesicatoria). Hindari penyiraman berlebihan dan kelembaban yang tinggi pada daun. Jaga sanitasi lingkungan dengan membersihkan sisa-sisa tanaman yang terinfeksi. Pertahankan jarak tanam yang cukup antara tanaman untuk menghindari penyebaran bakteri. Penggunaan varietas tomat yang tahan terhadap bakteri tersebut dapat membantu mencegah infeksi.",
        "Pengendalian penyakit ini dapat dilakukan dengan menggunakan varietas tomat yang tahan terhadap bakteri ini, menjaga sanitasi lingkungan dengan membersihkan sisa-sisa tanaman yang terinfeksi, dan menghindari penyiraman berlebihan yang dapat menyebabkan penyebaran bakteri. Jika infeksi sudah parah, penggunaan fungisida yang sesuai dapat membantu mengendalikan penyakit ini.",
        "images/bacterial_spot.jpg"),
    ArticlesData(
        "Early Blight",
        "Jamur Alternaria solani.",
        "Early Blight adalah penyakit yang sering menyerang tanaman tomat di awal musim tanam dan disebabkan oleh jamur Alternaria solani. Penyakit ini menampilkan gejala awal berupa munculnya bercak coklat dengan tepi kuning pada daun bagian bawah tanaman. Seiring waktu, bercak-barcak ini berkembang menjadi lebih besar dan menyebabkan daun mengering dan menguning.",
        "Gunakan benih dan tanaman yang bebas dari jamur penyebab (Alternaria solani). Lakukan rotasi tanaman untuk menghindari penumpukan patogen di tanah. Hindari penyiraman di atas daun dan tetapkan irigasi yang baik untuk mengurangi kelembaban pada daun. Bersihkan daun yang terinfeksi dan hindari penumpukan sisa-sisa tanaman yang terinfeksi. Gunakan fungisida yang sesuai untuk mengendalikan infeksi jamur jika diperlukan.",
        "Pengendalian penyakit ini meliputi pembersihan sisa-sisa tanaman yang terinfeksi, penggunaan pupuk organik untuk meningkatkan ketahanan tanaman, serta penggunaan fungisida jika diperlukan.",
        "images/early_blight.jpg"),
    ArticlesData(
        "Healthy",
        "-",
        "Kondisi daun tomat yang sehat adalah daun yang tidak terinfeksi penyakit atau serangga, berwarna hijau tua, dan tanpa bercak atau gejala penyakit lainnya. Daun sehat juga memiliki pertumbuhan yang normal dan kuat.",
        "-",
        "-",
        "images/healthy.jpg"),
    ArticlesData(
        "Late Blight",
        "Jamur Phytophthora infestans.",
        "Late Blight adalah penyakit serius yang menyebabkan kerusakan besar pada tanaman tomat. Gejala penyakit ini termasuk munculnya bercak hijau gelap hingga coklat tua pada daun tanaman, yang kemudian ditutupi dengan jamur berwarna putih pada sisi bawah daun.",
        "Gunakan benih dan tanaman yang bebas dari jamur penyebab (Phytophthora infestans). Lakukan rotasi tanaman untuk menghindari penumpukan patogen di tanah. Pertahankan ventilasi yang baik di rumah kaca untuk mengurangi kelembaban dan suhu yang tinggi. Hindari penyiraman di atas daun dan hindari kelembaban yang berlebihan. Gunakan fungisida yang direkomendasikan oleh ahli pertanian untuk mengendalikan infeksi jamur jika diperlukan.",
        "Pengendalian penyakit ini meliputi penggunaan varietas tomat yang tahan terhadap Late Blight, menjaga sanitasi lingkungan, dan menghindari penyiraman di atas daun. Jika terjadi serangan, penggunaan fungisida yang direkomendasikan oleh ahli pertanian dapat membantu mengendalikan penyakit ini.",
        "images/late_blight.jpg"),
    ArticlesData(
        "Leaf Mold",
        "Jamur Fulvia fulva.",
        "Leaf Mold disebabkan oleh jamur Fulvia fulva (sebelumnya disebut Cladosporium fulvum). Gejala awalnya adalah munculnya bercak kuning atau kuning kecoklatan pada daun tomat yang kemudian berkembang menjadi daerah yang tipis dan transparan.",
        "Gunakan benih dan tanaman yang bebas dari jamur penyebab (Fulvia fulva). Pertahankan ventilasi yang baik di rumah kaca untuk mengurangi kelembaban yang tinggi. Hindari penyiraman berlebihan pada daun dan tetapkan irigasi yang baik. Bersihkan daun yang terinfeksi dan hindari penumpukan sisa-sisa tanaman yang terinfeksi. Gunakan fungisida yang sesuai untuk mengendalikan infeksi jamur jika diperlukan.",
        "Pengendalian penyakit ini mencakup penggunaan sistem ventilasi yang baik di rumah kaca, menghindari penyiraman berlebihan pada daun, serta membuang daun-daun yang terinfeksi untuk mengurangi penyebaran spora jamur.",
        "images/leaf_mold.jpg"),
    ArticlesData(
        "Mosaic Virus",
        "Virus mozaik tomat (TMV).",
        "Virus Mozaik pada Tomat adalah penyakit virus yang disebabkan oleh virus mozaik tomat (TMV). Gejala awalnya adalah munculnya pola mozaik kuning-hijau pada daun tanaman. Tanaman yang terinfeksi juga mungkin mengalami pertumbuhan yang terhambat dan menghasilkan hasil yang rendah.",
        "Gunakan benih dan tanaman yang bebas dari virus mozaik tomat (TMV). Hindari kontak langsung dengan tanaman yang terinfeksi atau alat-alat pertanian yang terkontaminasi. Jaga kebersihan alat-alat pertanian untuk mencegah penyebaran virus. Gunakan varietas tomat yang tahan terhadap TMV jika tersedia.",
        "Pengendalian penyakit ini mencakup pencegahan penyebaran virus dengan menghindari kontak langsung dengan tanaman yang terinfeksi, menjaga kebersihan alat-alat pertanian, dan menggunakan varietas tomat yang tahan terhadap virus ini jika tersedia.",
        "images/mosaic_virus.jpg"),
    ArticlesData(
        "Septoria Leaf Spot",
        "Jamur Septoria lycopersici.",
        "Septoria Leaf Spot adalah penyakit yang menyebabkan munculnya bercak kecil berwarna abu-abu dengan tepi coklat pada daun tomat. Bercak-bercak kecil ini terutama terdapat pada daun bagian bawah tanaman. Seiring penyakit berkembang, bercak-bercak ini dapat bergabung dan menyebabkan daun menguning dan akhirnya gugur.",
        "Gunakan benih dan tanaman yang bebas dari jamur penyebab (Septoria lycopersici). Pertahankan ventilasi yang baik di rumah kaca untuk mengurangi kelembaban yang tinggi. Hindari penyiraman di atas daun dan hindari kelembaban yang berlebihan. Bersihkan daun yang terinfeksi dan hindari penumpukan sisa-sisa tanaman yang terinfeksi. Gunakan fungisida yang direkomendasikan oleh ahli pertanian untuk mengendalikan infeksi jamur jika diperlukan.",
        "Pengendalian penyakit ini mencakup menjaga sanitasi lingkungan, membersihkan daun-daun yang terinfeksi, dan menggunakan fungisida jika diperlukan.",
        "images/septoria_leaf_spot.jpg"),
    ArticlesData(
        "Spider Mites",
        "Serangga Tetranychus urticae.",
        "Tungau Laba-laba Dua Bercak (Tetranychus urticae) adalah serangga kecil yang menyerang daun tomat dan menghisap cairan tumbuhan. Serangan tungau laba-laba dapat menyebabkan bercak keputihan pada daun dan menyebabkan daun menguning dan kering.",
        "Monitor secara rutin untuk mendeteksi keberadaan tungau laba-laba. Gunakan alat-alat pertanian yang bersih untuk menghindari penyebaran tungau. Gunakan air sabun atau air bertekanan tinggi untuk menghilangkan tungau dari tanaman. Gunakan insektisida yang aman dan sesuai petunjuk jika terjadi serangan yang serius.",
        "Pengendalian penyakit ini meliputi penggunaan air sabun atau air bertekanan tinggi untuk menghilangkan tungau, serta penggunaan insektisida alami untuk membantu mengendalikan populasi serangga.",
        "images/spider_mites.jpg"),
    ArticlesData(
        "Target Spot",
        "Jamur Corynespora cassiicola.",
        "Bercak Sasaran disebabkan oleh jamur Corynespora cassiicola. Penyakit ini menghasilkan bercak berwarna coklat dengan pusat putih pada daun tomat.",
        "Gunakan benih dan tanaman yang bebas dari jamur penyebab (Corynespora cassiicola). Pertahankan ventilasi yang baik di rumah kaca untuk mengurangi kelembaban yang tinggi. Hindari penyiraman di atas daun dan hindari kelembaban yang berlebihan. Bersihkan daun yang terinfeksi dan hindari penumpukan sisa-sisa tanaman yang terinfeksi. Gunakan fungisida yang direkomendasikan oleh ahli pertanian untuk mengendalikan infeksi jamur jika diperlukan.",
        "Pengendalian penyakit ini meliputi menjaga sanitasi lingkungan, membersihkan daun-daun yang terinfeksi, dan menggunakan fungisida jika diperlukan.",
        "images/target_spot.jpg"),
    ArticlesData(
        "Yellow Leaf Curl Virus",
        "Virus kelompok Geminiviridae.",
        "Virus Keriting Daun Kuning pada Tomat (TYLCV) adalah penyakit virus yang disebabkan oleh kelompok virus yang disebut Geminiviridae. Gejala penyakit ini adalah keriting dan menguningnya daun pada tanaman tomat, yang dapat menyebabkan penurunan hasil yang signifikan.",
        "Gunakan benih dan tanaman yang bebas dari virus keriting daun kuning pada tomat (TYLCV). Hindari penanaman di dekat tanaman yang terinfeksi. Gunakan jaring penghalang untuk menghalangi serangga vektor, seperti kutu putih, yang dapat menularkan virus. Amati secara rutin kondisi tanaman untuk mendeteksi gejala penyakit.",
        "Pengendalian penyakit ini meliputi menggunakan jaring penghalang untuk menghalangi serangga vektor, menghindari penanaman di dekat tanaman yang terinfeksi, dan mengamati secara rutin kondisi tanaman untuk mendeteksi gejala penyakit.",
        "images/tomato_yellow_leafcurl_virus.jpg"),
  ];
}
