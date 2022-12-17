import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> gridItems = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
    ]
        .map((e) => Expanded(
              child: Column(
                children: [
                  const Icon(
                    Icons.engineering,
                    size: 100,
                  ),
                  Text(e),
                ],
              ),
            ))
        .toList();

    print('gridItems');
    print(gridItems);

    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 80,
      ),
      child: ListView(
        children: [
          Row(
            children: [
              const Text(
                'チーム',
                style: TextStyle(fontSize: 30),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              )
            ],
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              // NOTE: なんかこれ入れたら unexpected null value が抑制された…。
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 4,
              children: gridItems,
            ),
          )
        ],
      ),
    );
  }
}
