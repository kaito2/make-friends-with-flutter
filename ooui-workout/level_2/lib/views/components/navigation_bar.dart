import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:level_2/views/member_collection_screen.dart';
import 'package:level_2/views/team_collection_screen.dart';

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
              routePath: MemberCollectionScreen.routePath,
            ),
            NavigationItem(
              title: 'チーム',
              icon: Icon(Icons.people),
              routePath: TeamCollectionScreen.routePath,
            ),
          ],
        ),
      );
}

class NavigationItem extends StatelessWidget {
  final String title;
  final Widget icon;
  final String routePath;

  const NavigationItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.routePath});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: TextButton(
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
          onPressed: () {
            context.go(routePath);
          },
        ),
      );
}
