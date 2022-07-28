import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_translator/ui/splash/splash_controller.dart';

class SpashScreen extends StatelessWidget {
  const SpashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>( // specify type as Controller
      init: SplashController(), // intialize with the Controller
      builder: (value) => Scaffold(backgroundColor: Colors.lightBlue,),
    );
  }
}

