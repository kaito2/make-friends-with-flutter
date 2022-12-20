import 'package:flutter/material.dart';
import 'package:level_2/views/components/navigation_bar.dart';

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
