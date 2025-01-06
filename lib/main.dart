import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              const TextTheme(labelMedium: TextStyle(color: Colors.black)),
          fontFamily: "Concert",
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontFamily: "Concert")))),
      home: const HomePage(),
    );
  }
}
