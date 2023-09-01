import 'dart:io';
import 'package:flutter/material.dart';

class MaturityResult extends StatefulWidget {
  const MaturityResult({super.key, required this.pred, required this.image});

  final List? pred;
  final File? image;

  @override
  State<MaturityResult> createState() => _MaturityResultState();
}

class _MaturityResultState extends State<MaturityResult> {
  String label = "";
  double confidence = 0.0;
  String formattedConfidence = "";

  @override
  void initState() {
    super.initState();
    determineLabelAndConfidence();
  }

  void determineLabelAndConfidence() {
    if (widget.pred![0]['index'] != 0) {
      if (widget.pred![0]['index'] != 3) {
        label = widget.pred![0]['label'];
        confidence = widget.pred![0]['confidence'];
      } else {
        label = "Setengah Matang";
        confidence = widget.pred![0]['confidence'];
      }
    } else if (widget.pred![0]['index'] == 0) {
      if (widget.pred![1]['index'] != 3) {
        label = widget.pred![1]['label'];
        confidence = widget.pred![0]['confidence'];
      } else {
        label = "Setengah Matang";
        confidence = widget.pred![0]['confidence'];
      }
    }

    formattedConfidence = confidence.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    double containerWidth = mediaQueryWidth * 0.8;
    // double confidence = widget.pred![0]['confidence'];
    // String formattedConfidence = confidence.toStringAsFixed(2);

    return Center(
      child: Container(
        padding: const EdgeInsets.all(15.0),
        width: containerWidth,
        height: mediaQueryHeight * 0.5,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFD9D9D9),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Hasil Scan",
                style: TextStyle(
                    color: Color(0xFF3E5481),
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: containerWidth * 0.8,
                height: containerWidth * 0.8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.file(
                    widget.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Tomat ",
                        style: TextStyle(
                            color: Color(0xFF3E5481),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      Text(
                        label,
                        style: const TextStyle(
                            color: Color(0xFF3E5481),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Confidence: ',
                        style: TextStyle(
                          color: Color.fromARGB(200, 62, 84, 129),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        formattedConfidence,
                        style: const TextStyle(
                          color: Color.fromARGB(220, 62, 84, 129),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
