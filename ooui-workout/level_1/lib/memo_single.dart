import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemoSingle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_sharp),
        actions: [
          const Icon(Icons.delete),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              initialValue: "オブジェクト指向UIデザインの準備運動",
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                hintText: 'Title',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                hintText: '...',
              ),
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }
}
