import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insulin_calculator/View/language_screen.dart';
import 'package:insulin_calculator/common.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>  with TickerProviderStateMixin {
  AnimationController? _controller;
  AnimationController? _opacityController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/dnc_logo.svg"),
              AnimatedBuilder(
                animation: _opacityController!,
                builder: (context, child) {
                  return Opacity(
                      opacity: _opacityController!.value,
                      child: ScaleTransition(
                          scale: Tween(begin: .85, end: .9).animate(
                            CurvedAnimation(
                                parent: _controller!,
                                curve: Curves.easeInOut),
                          ),
                          child: SvgPicture.asset("assets/images/splash_logo.svg")));
                },
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text("حسبة الانسولين",style: TextStyle(fontSize: 40),),
              )
            ],
          ),
        ),
      ),
    );
  }


  @override
  void initState() {
    super.initState();
    Timer( Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => selectedLang==""? LanguageScreen():HomeScreen(),
            )));

    _opacityController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
        lowerBound: .3,
        upperBound: 1.0);
    _opacityController!.forward();

    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _controller!.forward();

    _controller!.repeat(reverse: true);
  }
  @override
  void dispose() {
    this._opacityController!.dispose();
    this._controller!.dispose();
    super.dispose();
  }
}
