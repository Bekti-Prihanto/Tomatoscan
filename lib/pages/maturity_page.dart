import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:tomatoscan/pages/loading_page.dart';

class MaturityPage extends StatefulWidget {
  static const routeName = "/maturitypage";
  const MaturityPage({super.key});

  @override
  State<MaturityPage> createState() => _MaturityPageState();
}

class _MaturityPageState extends State<MaturityPage> {
  late File image;
  final picker = ImagePicker();

  Future getImage(source) async {
    final pickedFile = await picker.pickImage(source: source);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contex) => LoadingPage(
              image: image,
              state: 1,
            ),
          ),
        );
      } else {
        debugPrint('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      title: const Text("Kematangan Tomat",
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
            child: Image.asset(
              "images/maturity_image.webp",
            ),
          ),
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
                          SizedBox(
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
