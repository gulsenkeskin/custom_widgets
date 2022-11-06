import 'dart:ui';
import 'package:flutter/material.dart';
class FrostedGlassLook extends StatefulWidget {
  const FrostedGlassLook({super.key});
  @override
  _FrostedGlassLookState createState() => _FrostedGlassLookState();
}
class _FrostedGlassLookState extends State<FrostedGlassLook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text("Frosted Glass Look Demo"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Stack(
        children: [
          Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const FlutterLogo(),
              )),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey.shade200.withOpacity(0.5)),
                  child: const Center(
                      child: Text(
                        "Glass Effect Container",
                        style: TextStyle(fontSize: 15),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}