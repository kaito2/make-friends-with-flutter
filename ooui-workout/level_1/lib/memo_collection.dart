import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemoCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: const _MemoCollectionCard(
              title: '旅行に持っていくもの',
              content: '防水ポーチ、モバイルバッテリー、傘、パスポート、',
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: const _MemoCollectionCard(
              title: 'オブジェクト指向UIデザインの入門',
              content: '防水ポーチ、モバイルバッテリー、傘、パスポート、',
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: const _MemoCollectionCard(
              title: 'プレゼントの候補',
              content: 'ロボット掃除機、本、炭酸水メーカー、',
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class _MemoCollectionCard extends StatelessWidget {
  final String title;
  final String content;

  const _MemoCollectionCard({
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.sticky_note_2_outlined,
          color: Colors.black54,
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  content,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
