import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:tomatoscan/pages/loading_page.dart';

class DiseasePage extends StatefulWidget {
  static const routeName = "/diseasepage";
  const DiseasePage({super.key});

  @override
  State<DiseasePage> createState() => _DiseasePageState();
}

class _DiseasePageState extends State<DiseasePage> {
  late File image;
  final picker = ImagePicker();

  Future getImage(source) async {
    final pickedFile = await picker.pickImage(source: source);

    setState(
      () {
        if (pickedFile != null) {
          image = File(pickedFile.path);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contex) => LoadingPage(
                image: image,
                state: 2,
              ),
            ),
          );
        } else {
          debugPrint('No image selected.');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      title: const Text("Penyakit Daun Tomat",
          style: TextStyle(fontWeight: FontWeight.w500)),
      backgroundColor: const Color(0xFF07575B),
      automaticallyImplyLeading: false,
      elevation: 0,
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: const Color(0xFF07575B),
      appBar: myAppBar,
      body: Center(
        child: Column(children: [
          // ignore: sized_box_for_whitespace
          Container(
              height: bodyHeight * 0.65,
              width: mediaQueryWidth,
              child: Center(
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: mediaQueryWidth,
                  child: const Image(
                    image: AssetImage("images/disease_image.webp"),
                  ),
                ),
              )),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.all(30),
            height: bodyHeight * 0.35,
            width: mediaQueryWidth,
            child: Row(
              children: [
                Container(
                  width: (mediaQueryWidth - 75) / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFFD9D9D9),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        getImage(ImageSource.camera);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // ignore: sized_box_for_whitespace
                          Container(
                            width: mediaQueryWidth * 0.13,
                            height: mediaQueryWidth * 0.13,
                            child: const Image(
                              image: AssetImage("images/BtnKamera.png"),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Kamera",
                            style: TextStyle(
                                color: Color(0xFF032D2F), fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: (mediaQueryWidth - 75) / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFFD9D9D9),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        getImage(ImageSource.gallery);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: mediaQueryWidth * 0.13,
                            height: mediaQueryWidth * 0.13,
                            child: const Image(
                              image: AssetImage("images/BtnGalery.png"),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Galeri",
                            style: TextStyle(
                                color: Color(0xFF032D2F), fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
