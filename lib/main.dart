import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:photo_translator/ui/splash/splash_screen.dart';
import 'package:translator/translator.dart';

Future<void> main() async {
  final translator = GoogleTranslator();

  // final input = "Здравствуйте. Ты в порядке?";
  //
  // translator.translate(input, from: 'ru', to: 'en').then(print);
  // // prints Hello. Are you okay?

  var translation = await translator.translate("Dart is very cool!", to: 'ru');
  print(translation);
  // prints Dart jest bardzo fajny!

  print(await "example".translate(to: 'pt'));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SpashScreen(),
    );
  }
}

