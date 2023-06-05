import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_awal/menu.dart';


class MySecond extends StatefulWidget {
  const MySecond({Key? key}) : super(key: key);

  @override
  State<MySecond> createState() => _MySecondState();
}

class _MySecondState extends State<MySecond> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
    Timer(const Duration(seconds: 10),
            () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyMenu())));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network("https://assets8.lottiefiles.com/packages/lf20_AMBEWz.json",
          controller: _controller, onLoaded: (compos){
            _controller
            ..duration = compos.duration
                ..forward();
              }),
        ],
      ),
    );
  }
}
