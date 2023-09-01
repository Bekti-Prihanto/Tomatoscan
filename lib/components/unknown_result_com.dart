import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UnknownResultPage extends StatefulWidget {
  const UnknownResultPage({super.key, required this.pred, required this.state});
  final List? pred;
  final int state;

  @override
  State<UnknownResultPage> createState() => _UnknownResultPageState();
}

class _UnknownResultPageState extends State<UnknownResultPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Lottie.asset(
                  'assets/warning.json',
                  // repeat: false,
                  fit: BoxFit.fill,
                  repeat: false,
                  width: mediaQueryWidth * 0.3,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Maaf Foto Yang Dipilih \n ${(widget.state == 1) ? "Bukan Tomat" : "Bukan Daun Tomat"}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF3E5481),
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
