import 'package:flutter/material.dart';
import 'package:tomatoscan/pages/about_page.dart';
import 'package:tomatoscan/pages/disease_page.dart';
import 'package:tomatoscan/pages/info_page.dart';
import 'package:tomatoscan/pages/maturity_page.dart';
import 'package:tomatoscan/pages/articles_page.dart';

enum MenuItem {
  item1,
  item2,
}

class HomePage extends StatelessWidget {
  static const routeName = "/homepage";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      title: const Text(
        "TomatoScan",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      backgroundColor: const Color(0xFF07575B),
      elevation: 0,
      actions: [
        PopupMenuButton(
          onSelected: (value) {
            (value == MenuItem.item1)
                ? Navigator.of(context).pushNamed(InfoPage.routeName)
                : Navigator.of(context).pushNamed(AboutPage.routeName);
          },
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: MenuItem.item1,
              child: Row(
                children: [
                  Icon(
                    Icons.mobile_friendly_rounded,
                    color: Colors.black54,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Petunjuk Penggunaan',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const PopupMenuItem(
              value: MenuItem.item2,
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline_rounded,
                    color: Colors.black54,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Tentang Aplikasi',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: const Color(0xFF07575B),
      appBar: myAppBar,
      body: Center(
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: bodyHeight * 0.55,
              width: mediaQueryWidth,
              child: const Image(
                image: AssetImage("images/home_image.webp"),
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
              height: bodyHeight * 0.45,
              width: mediaQueryWidth,
              child: Column(
                children: [
                  Flexible(
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
                                Navigator.of(context)
                                    .pushNamed(MaturityPage.routeName);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // ignore: sized_box_for_whitespace
                                    Container(
                                      width: mediaQueryWidth * 0.13,
                                      height: mediaQueryWidth * 0.13,
                                      child: const Image(
                                        image: AssetImage(
                                            "images/BtnKematangan.png"),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Kematangan Tomat",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF032D2F),
                                          fontSize: 13),
                                    )
                                  ],
                                ),
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
                                Navigator.of(context)
                                    .pushNamed(DiseasePage.routeName);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // ignore: sized_box_for_whitespace
                                    Container(
                                      width: mediaQueryWidth * 0.13,
                                      height: mediaQueryWidth * 0.13,
                                      child: const Image(
                                        image: AssetImage(
                                            "images/BtnPenyakit.png"),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Penyakit Daun Tomat",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF032D2F),
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15), // Jarak antara kotak 2 dan 3
                  Flexible(
                    child: Container(
                      width: double.infinity,
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
                            Navigator.of(context)
                                .pushNamed(ArticlePage.routeName);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // ignore: sized_box_for_whitespace
                              Container(
                                width: mediaQueryWidth * 0.13,
                                height: mediaQueryWidth * 0.13,
                                child: const Image(
                                  image: AssetImage("images/BtnArticle.png"),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Artikel Penyakit Daun Tomat",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xFF032D2F), fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
