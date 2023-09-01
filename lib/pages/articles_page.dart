import 'package:flutter/material.dart';
import 'package:tomatoscan/components/article_list_tile.dart';
import 'package:tomatoscan/models/articles_model.dart';

class ArticlePage extends StatelessWidget {
  static const routeName = "/articlepage";
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    final myAppBar = AppBar(
      title: const Text(
        "Artikel Penyakit Daun Tomat",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
      backgroundColor: const Color(0xFF07575B),
      automaticallyImplyLeading: false,
      elevation: 0,
    );

    return Scaffold(
      appBar: myAppBar,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children:
              ArticlesData.diseasesData.map((e) => ArticleListTile(e)).toList(),
        ),
      ),
    );
  }
}
