import 'package:flutter/material.dart';
import 'package:tomatoscan/models/articles_model.dart';

class DetailArticlePage extends StatefulWidget {
  const DetailArticlePage(this.data, {Key? key}) : super(key: key);
  final ArticlesData data;

  @override
  State<DetailArticlePage> createState() => _DetailArticlePageState();
}

class _DetailArticlePageState extends State<DetailArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Color(0xFF07575B)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data.nama!,
                style: const TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                (widget.data.nama! == 'Healthy') ? '' : widget.data.penyebab!,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: (widget.data.nama! == 'Healthy') ? 0.0 : 20.0,
              ),
              Hero(
                tag: "${widget.data.nama}",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    widget.data.urlGambar!,
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    fit: (widget.data.nama != 'Target Spot')
                        ? BoxFit.fitWidth
                        : BoxFit.fitHeight,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                widget.data.deskripsi!,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                (widget.data.nama! == 'Healthy') ? '' : 'Pencegahan',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                (widget.data.nama! == 'Healthy') ? '' : widget.data.pencegahan!,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                (widget.data.nama! == 'Healthy') ? '' : 'Penanganan',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                (widget.data.nama! == 'Healthy') ? '' : widget.data.penanganan!,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
