import 'package:flutter/material.dart';
import 'package:project_awal/second.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      home: const MySecond(),
      debugShowCheckedModeBanner: false,
    );
  }
}
