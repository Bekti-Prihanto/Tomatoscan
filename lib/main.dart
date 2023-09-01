import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:tomatoscan/pages/about_page.dart";
import "package:tomatoscan/pages/articles_page.dart";
import "package:tomatoscan/pages/disease_page.dart";
import "package:tomatoscan/pages/home_page.dart";
import "package:tomatoscan/pages/info_page.dart";
import "package:tomatoscan/pages/maturity_page.dart";

void main() async {
  await Future.delayed(const Duration(seconds: 3));
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        MaturityPage.routeName: (context) => const MaturityPage(),
        DiseasePage.routeName: (context) => const DiseasePage(),
        ArticlePage.routeName: (context) => const ArticlePage(),
        InfoPage.routeName: (context) => const InfoPage(),
        AboutPage.routeName: (context) => const AboutPage(),
      },
    );
  }
}
