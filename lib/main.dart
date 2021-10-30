import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/widgets/maintab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const MainTab(),
    );
  }
}
