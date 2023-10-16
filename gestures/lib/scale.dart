import 'package:flutter/material.dart';

class Scale extends StatefulWidget {
  const Scale({super.key});

  @override
  State<Scale> createState() => _ScaleState();
}

class _ScaleState extends State<Scale> {
  double scale = 2.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onScaleUpdate: (details) {
          setState(() {
            scale = details.scale;
          });
        },
        onScaleEnd: (details) {
          setState(() {
            scale = 1.0;
          });
        },
        child: Scaffold(
            appBar: AppBar(title: const Text("Scale")),
            body: Center(
              child: Transform.scale(
                scale: scale,
                child: Container(
                  height: 400,
                  width: 400,
                  color: Colors.green,
                ),
              ),
            )));
  }
}
