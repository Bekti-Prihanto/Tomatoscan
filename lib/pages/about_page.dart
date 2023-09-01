import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const routeName = "/aboutpage";
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tentang Aplikasi",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color(0xFF07575B),
        automaticallyImplyLeading: false,
        elevation: 0.0,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Selamat datang di Aplikasi Deteksi Kematangan dan Penyakit pada Tomat!',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '\nApa yang kami tawarkan:',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Aplikasi Deteksi Kematangan dan Penyakit pada Tomat adalah solusi inovatif yang dirancang khusus untuk membantu petani dan pengguna lainnya dalam mengelola tanaman tomat dengan lebih efektif. Aplikasi ini menggunakan teknologi terkini yaitu Convolutional Neural Network (CNN), bagian dari algoritma Deep Learning, untuk memberikan analisis akurat dan cepat tentang tingkat kematangan tomat serta mendeteksi penyakit yang mungkin menyerang tanaman Anda.\n',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'Fitur Utama:',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '1.   Deteksi Kematangan Tomat: Aplikasi ini dilengkapi dengan kemampuan untuk mengidentifikasi tingkat kematangan tomat, mulai dari matang, setengah matang, hingga belum matang. Dengan menggunakan kamera ponsel Anda, cukup ambil gambar tomat dan aplikasi akan memberikan informasi detail tentang kematangan tanaman Anda.',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '2.   Identifikasi Penyakit: Salah satu fitur unggulan dari aplikasi ini adalah kemampuannya untuk mendeteksi berbagai penyakit yang mungkin menyerang tanaman tomat Anda. Dari bercak bakteri hingga virus mozaik, aplikasi kami dapat memberikan hasil analisis yang tepat dan cepat.\n',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                'Manfaat Aplikasi:',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '-    Memantau Kondisi Tanaman dengan Lebih Efisien: Aplikasi ini memungkinkan Anda untuk secara real-time memantau kondisi kematangan tomat dan mendeteksi penyakit yang mungkin menyerang tanaman Anda. Dengan informasi yang akurat dan cepat, Anda dapat mengambil tindakan yang tepat untuk menjaga kesehatan dan produktivitas tanaman.',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '-    Meningkatkan Hasil Panen: Dengan deteksi dini tentang tingkat kematangan dan deteksi penyakit, Anda dapat mengambil langkah-langkah pencegahan atau perawatan yang tepat untuk mencegah kerugian panen dan meningkatkan hasil produksi tomat Anda.',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '-    Mengoptimalkan Penggunaan Sumber Daya: Dengan aplikasi ini, Anda dapat mengoptimalkan penggunaan sumber daya seperti air dan pestisida karena dapat mengidentifikasi kebutuhan tanaman dengan lebih tepat dan efisien.'
                '\n\nKami mengucapkan terima kasih atas kepercayaan Anda menggunakan Aplikasi Deteksi Kematangan dan Penyakit pada Tomat. Tim kami selalu siap untuk membantu dan merespons setiap pertanyaan atau masukan yang Anda miliki. Semoga aplikasi ini memberikan manfaat nyata bagi usaha pertanian Anda!'
                '\n\nSalam hangat,'
                '\n\nTim TomatoScan',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
