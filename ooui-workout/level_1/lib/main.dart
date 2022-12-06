import 'package:flutter/material.dart';
import 'package:level_1/memo_collection.dart';
import 'package:level_1/memo_single.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // home: MemoCollection(),
      home: MemoSingle(),
    );
  }
}
