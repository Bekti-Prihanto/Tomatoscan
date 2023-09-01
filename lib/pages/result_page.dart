import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tomatoscan/components/unknown_result_com.dart';
import 'package:tomatoscan/models/articles_model.dart';
import 'package:tomatoscan/components/disease_result_com.dart';
import 'package:tomatoscan/components/maturity_result_com.dart';

class ResultPage extends StatefulWidget {
  const ResultPage(
      {super.key,
      required this.image,
      required this.pred,
      required this.state});

  final int state;
  final List? pred;
  final File? image;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = (widget.pred![0]['index'] > 0)
        ? widget.pred![0]['index'] - 1
        : widget.pred![0]['index'];
    int predLength = widget.pred!.length;
    debugPrint(predLength.toString());
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    ArticlesData selectedDiseaseData = ArticlesData.diseasesData[selectedIndex];
    return SafeArea(
      child: Scaffold(
        body: () {
          if (widget.state == 1 &&
              predLength == 1 &&
              widget.pred![0]['index'] == 0) {
            return UnknownResultPage(
              pred: widget.pred!,
              state: widget.state,
            );
          } else if (widget.state == 1 &&
              (widget.pred![0]['index'] != 0 || predLength > 1)) {
            return MaturityResult(
              pred: widget.pred!,
              image: widget.image!,
            );
          } else if (widget.state == 2 && widget.pred![0]['index'] == 1) {
            return UnknownResultPage(
              pred: widget.pred!,
              state: widget.state,
            );
          } else if (widget.state == 2 && widget.pred![0]['index'] != 1) {
            return Stack(
              children: [
                SizedBox(
                  height: mediaQueryHeight * 0.45,
                  width: double.infinity,
                  child: Image.file(
                    widget.image!,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  child: DiseaseResult(
                    data: selectedDiseaseData,
                  ),
                ),
              ],
            );
          }
        }(),
      ),
    );
  }
}
