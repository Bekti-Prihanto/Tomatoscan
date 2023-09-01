import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  static const routeName = "/infopage";
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Petunjuk Penggunaan Aplikasi",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        // backgroundColor: Colors.white24,
        backgroundColor: const Color(0xFF07575B),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        // iconTheme: const IconThemeData(color: Color(0xFF07575B)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Aplikasi ini memiliki 2 Fitur utama yaitu scan deteksi kematangan buah tomat dan scan deteksi penyakit pada daun tomat.',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const Text(
                '\nBerikut cara menggunakan fitur-fitur tersebut :',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '1.   Pilih Menu Kematangan/Penyakit pada Halaman Utama.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), // Sesuaikan nilai sesuai keinginan
                  child: Image(
                    image: const AssetImage('images/petunjuk1.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '2.   Kemudian pilih cara pengambilan gambar (Kamera/Galeri).',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), // Sesuaikan nilai sesuai keinginan
                  child: Image(
                    image: const AssetImage('images/petunjuk2.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '3.   Ketika gambar sudah di ambil atau di pilih, maka gambar akan dipindai oleh sistem. tunggu sampai prosesnya selesai.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), // Sesuaikan nilai sesuai keinginan
                  child: Image(
                    image: const AssetImage('images/petunjuk3.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                '4.   Setelah proses pindai selesai, akan di tampilkan hasil deteksi gambar yang sudah dipindai (Kematangan/Penyakit).',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), // Sesuaikan nilai sesuai keinginan
                  child: Image(
                    image: const AssetImage('images/petunjuk4.jpeg'),
                    width: mediaQueryWidth * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
