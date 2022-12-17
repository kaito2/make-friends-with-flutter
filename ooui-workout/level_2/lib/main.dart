import 'package:flutter/material.dart';
import 'package:level_2/components/navigation_bar.dart';
import 'package:level_2/member_collection_screen.dart';
import 'package:level_2/team_collection_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // builder: (_, child) => AppView(child: child!),
      home: const SelectionArea(
        child: AppView(
          child: MemberCollectionScreen(),
        ),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  final Widget child;

  const AppView({super.key, required this.child});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const NavigationBarWeb(),
            Expanded(child: child),
          ],
        ),
      );
}
