import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Example(),
      ),
    );
  }
}

class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red);
  }
}

// The red Container wants to be 100 × 100, but it can’t,
// because the screen forces it to be exactly the same size as the screen.
// cf. https://docs.flutter.dev/development/ui/layout/constraints#:~:text=paints%20it%20red.-,Example%202,-content_copy
class Example2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }
}

// The screen forces the Center to be exactly the same size as the screen,
// so the Center fills the screen.
//
// The Center tells the Container that it can be any size it wants,
// but not bigger than the screen. Now the Container can indeed be 100 × 100.
class Example3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    );
  }
}

class Example4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    );
  }
}

class Example5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
      ),
    );
  }
}

// Since the red Container has no size but has a child,
// it decides it wants to be the same size as its child.
class Example7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: Container(
          width: 30,
          height: 30,
          color: Colors.green,
        ),
      ),
    );
  }
}

// The red Container sizes itself to its children’s size,
// but it takes its own padding into consideration.
// So it is also 30 × 30 plus padding.
class Example8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(20),
        child: Container(
          width: 30,
          height: 30,
          color: Colors.green,
        ),
      ),
    );
  }
}

// The ConstrainedBox only imposes additional constraints
// from those it receives from its parent.
class Example9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 70,
        maxWidth: 140,
        minHeight: 70,
        maxHeight: 140,
      ),
      child: Container(
        color: Colors.red,
        width: 10,
        height: 10,
      ),
    );
  }
}

// Now, Center allows ConstrainedBox to be any size up to the screen size.
class Example10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          maxWidth: 140,
          minHeight: 70,
          maxHeight: 140,
        ),
        child: Container(
          color: Colors.red,
          width: 10,
          height: 10,
        ),
      ),
    );
  }
}

class Example14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        color: Colors.red,
        width: 4000,
        height: 100,
      ),
    );
  }
}

// OverflowBox is similar to UnconstrainedBox;
// the difference is that it won’t display any warnings
// if the child doesn’t fit the space.
class Example15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      minWidth: 0,
      maxHeight: double.infinity,
      minHeight: 0,
      maxWidth: double.infinity,
      child: Container(
        color: Colors.red,
        width: 4000,
        height: 100,
      ),
    );
  }
}

class Example18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text("Some Example Text"),
    );
  }
}

// FittedBox が screen によって引っ張られなくなったので Text の
// サイズが採用されるようになった。
class Example19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        child: Text('Some Example Text'),
      ),
    );
  }
}

// FittedBox tries to size itself to the Text,
// but it can’t be bigger than the screen.
// It then assumes the screen size,
// and resizes Text so that it fits the screen, too.
class Example20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FittedBox(
        child: Text(
          'This is some very very very large text that is too big to fit a regular screen in a single line. This is some very very very large text that is too big to fit a regular screen in a single line. This is some very very very large text that is too big to fit a regular screen in a single line.',
        ),
      ),
    );
  }
}

class Example21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'This is some very very very large text that is too big to fit a regular screen in a single line. This is some very very very large text that is too big to fit a regular screen in a single line. This is some very very very large text that is too big to fit a regular screen in a single line.',
      ),
    );
  }
}

class Example23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(color: Colors.red, child: const Text("Hello!")),
        Container(color: Colors.green, child: const Text("Goodbye!")),
      ],
    );
  }
}

// In other words, once you use Expanded,
// the original child’s width becomes irrelevant, and is ignored.
class Example25 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: const Text(
              'This is some very very very large text that is too big to fit a regular screen in a single line. This is some very very very large text that is too big to fit a regular screen in a single line. This is some very very very large text that is too big to fit a regular screen in a single line.',
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: const Text("Hello!!"),
        )
      ],
    );
  }
}

class Example26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: const Text(
              'This is some very very very large text that is too big to fit a regular screen in a single line. This is some very very very large text that is too big to fit a regular screen in a single line. This is some very very very large text that is too big to fit a regular screen in a single line.',
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: const Text('Hello!!'),
          ),
        ),
      ],
    );
  }
}

// The only difference if you use Flexible instead of Expanded,
// is that Flexible lets its child have the same
// or smaller width than the Flexible itself,
// while Expanded forces its child to have the exact same width of the Expanded.
class Example27 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            color: Colors.red,
            child: const Text(
              'This is some very very very large text that is too big to fit a regular screen in a single line. This is some very very very large text that is too big to fit a regular screen in a single line. This is some very very very large text that is too big to fit a regular screen in a single line.',
            ),
          ),
        ),
        Flexible(
          child: Container(
            color: Colors.green,
            child: const Text('Hello!!'),
          ),
        ),
      ],
    );
  }
}

// 28
class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Colors.blue,
        child: Column(
          children: const [
            Text('Hello'),
            Text('World'),
          ],
        ),
      ),
    );
  }
}
