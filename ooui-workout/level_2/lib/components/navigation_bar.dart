import 'package:flutter/material.dart';

class NavigationBarWeb extends StatelessWidget {
  const NavigationBarWeb({super.key});

  @override
  Widget build(BuildContext context) => Container(
        height: 100.0,
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const [
            NavigationItem(
              title: '社員',
              icon: Icon(Icons.person),
            ),
            NavigationItem(
              title: 'チーム',
              icon: Icon(Icons.people),
            ),
          ],
        ),
      );
}

class NavigationItem extends StatelessWidget {
  final String title;
  final Widget icon;

  const NavigationItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Row(
          children: [
            icon,
            SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      );
}
