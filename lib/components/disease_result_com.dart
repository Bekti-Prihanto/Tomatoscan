// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tomatoscan/models/articles_model.dart';

class DiseaseResult extends StatefulWidget {
  const DiseaseResult({Key? key, required this.data}) : super(key: key);

  final ArticlesData data;

  @override
  State<DiseaseResult> createState() => _DiseaseResultState();
}

class _DiseaseResultState extends State<DiseaseResult> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: (widget.data.nama! != 'Healthy') ? 1.0 : 0.6,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        // final mediaQueryHeight = MediaQuery.of(context).size.height;
        final mediaQueryWidth = MediaQuery.of(context).size.width;
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 156, 152, 152),
                spreadRadius: 0,
                blurRadius: 1,
                offset: Offset(0, 0),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: mediaQueryWidth * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(
                              5), // Atur nilai radius yang diinginkan
                        ),
                        // color: Colors.black12,
                      ),
                    ],
                  ),
                ),
                Text(
                  widget.data.nama!,
                  style: const TextStyle(
                      color: Color(0xFF3E5481),
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                if (widget.data.nama! != 'Healthy')
                  Text(
                    widget.data.penyebab!,
                    style:
                        const TextStyle(color: Color(0xFF9FA5C0), fontSize: 17),
                  ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(
                    thickness: 1,
                    height: 4,
                  ),
                ),
                const Text(
                  'Deskripsi',
                  style: TextStyle(
                      color: Color(0xFF3E5481),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.deskripsi!,
                  style: const TextStyle(
                    color: Color(0xFF2E3E5C),
                    // fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                if (widget.data.nama! != 'Healthy')
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      thickness: 1,
                      height: 4,
                    ),
                  ),
                if (widget.data.nama! != 'Healthy') 
                  const Text(
                    'Pencegahan',
                    style: TextStyle(
                        color: Color(0xFF3E5481),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                if (widget.data.nama! != 'Healthy')
                  const SizedBox(
                    height: 5,
                  ),
                if (widget.data.nama! != 'Healthy')
                  Text(
                    widget.data.pencegahan!,
                    style: const TextStyle(
                      color: Color(0xFF2E3E5C),
                      // fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                if (widget.data.nama! != 'Healthy')
                  const SizedBox(
                    height: 20,
                  ),
                if (widget.data.nama! != 'Healthy')
                  const Text(
                    'Penanganan',
                    style: TextStyle(
                        color: Color(0xFF3E5481),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                if (widget.data.nama! != 'Healthy')
                  const SizedBox(
                    height: 5,
                  ),
                if (widget.data.nama! != 'Healthy')
                  Text(
                    widget.data.penanganan!,
                    style: const TextStyle(
                      color: Color(0xFF2E3E5C),
                      // fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
