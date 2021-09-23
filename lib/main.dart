import 'package:day_1/home_page.dart';
import 'package:day_1/more_info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'travel app ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        MoreInfo.routeName : (ctx)=> const MoreInfo(),
      },
    );
  }
}
