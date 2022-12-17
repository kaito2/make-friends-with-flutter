import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_2/member_collection_screen.dart';

class TeamSingleScreen extends StatelessWidget {
  const TeamSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      child: Row(
        // 左ペイン
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.credit_card,
                  size: 80,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  'デザイン',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text('ユーザーインターフェース'),
              const Text('ユーザーリサーチ'),
            ],
          ),
          const SizedBox(width: 30),
          // 右ペイン
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    const Text(
                      '社員',
                      style: TextStyle(fontSize: 30),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    )
                  ],
                ),
                MemberList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
