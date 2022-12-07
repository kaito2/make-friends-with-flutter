import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'settings/:name',
          builder: (context, state) => SettingsPage(
            state.params['name']!,
          ),
        )
      ],
    ),
  ],
  errorBuilder: (context, state) => const ErrorScreen(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Go Router',
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('hey'),
          onPressed: () => context.go('/settings/magic'),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  final String name;

  const SettingsPage(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(name),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go to homepage'),
            ),
          ],
        ),
      ),
    );
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Error Screen'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Some error occurred'),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go to home page'),
            ),
          ],
        ),
      ),
    );
  }
}
