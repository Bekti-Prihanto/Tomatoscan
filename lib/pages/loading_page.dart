import 'dart:io';
// import 'dart:typed_data';
// import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'package:tomatoscan/pages/result_page.dart';
// import 'package:image/image.dart' as img;

class LoadingPage extends StatefulWidget {
  static const routeName = '/loadingpage';
  const LoadingPage({super.key, required this.image, required this.state});

  final File image;
  final int state;

  @override
  State<LoadingPage> createState() => _LoadingPage();
}

class _LoadingPage extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    _loadModel();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        _imageClasification(widget.image);
      },
    );
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  void _loadModel() async {
    await Tflite.loadModel(
      labels: (widget.state == 1)
          ? "assets/maturityLabels.txt"
          : "assets/diseaseLabels.txt",
      model: (widget.state == 1)
          ? "assets/maturityModel.tflite"
          : "assets/diseaseModel.tflite",
    );
  }

  void _imageClasification(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 3,
      threshold: 0.01,
      imageMean: 127.5,
      imageStd: 127.5,
      asynch: true,
    );

    setState(
      () {
        debugPrint(output.toString());
        Future.delayed(
          const Duration(seconds: 2),
          () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPage(
                  image: widget.image,
                  pred: output,
                  state: widget.state,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Tunggu Sebentar',
                style: TextStyle(
                    color: Color(0xFF3E5481),
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              Container(
                child: Lottie.asset(
                  'assets/loading.json',
                  width: mediaQueryWidth * 0.9,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Scan Sedang Berlangsung',
                style: TextStyle(
                    color: Color(0xFF3E5481),
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

    // final imageData = await image.readAsBytes();
    // final oriImage = img.decodeImage(Uint8List.fromList(imageData));
    // // var imageDecode = img.decodeImage(imageData);
    // var resizedImage = img.copyResize(oriImage!, height: 224, width: 224);
    // var output = await Tflite.runModelOnBinary(
    //   binary: imageToByteListFloat32(resizedImage, 224, 127.5, 127.5),
    //   numResults: 3,
    //   threshold: 0.05,
    //   asynch: true,
    // );

      // Uint8List imageToByteListFloat32(
  //     img.Image image, int inputSize, double mean, double std) {
  //   var convertedBytes = Float32List(1 * inputSize * inputSize * 3);
  //   var buffer = Float32List.view(convertedBytes.buffer);
  //   int pixelIndex = 0;
  //   for (var i = 0; i < inputSize; i++) {
  //     for (var j = 0; j < inputSize; j++) {
  //       var pixel = image.getPixel(j, i);
  //       buffer[pixelIndex++] = (pixel.r - mean) / std;
  //       buffer[pixelIndex++] = (pixel.g - mean) / std;
  //       buffer[pixelIndex++] = (pixel.b - mean) / std;
  //     }
  //   }
  //   return convertedBytes.buffer.asUint8List();
  // }