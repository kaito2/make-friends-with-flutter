import 'package:flutter/material.dart';

class MemberCollectionScreen extends StatelessWidget {
  const MemberCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                '社員',
                style: TextStyle(fontSize: 30),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              )
            ],
          ),
          MemberList(),
        ],
      ),
    );
  }
}

class MemberList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const MemberListItem(
        name: "野坂祐介",
        teamName: "ファイナンス",
        isOnline: true,
      ),
      const MemberListItem(
        name: "横田龍之介",
        teamName: "デザイン",
        isOnline: true,
      ),
      const MemberListItem(
        name: "城之内恵美",
        teamName: "デザイン",
        isOnline: true,
      ),
      const MemberListItem(
        name: "西村紗英",
        teamName: "マーケティング",
        isOnline: true,
      ),
      const MemberListItem(
        name: "野坂祐介",
        teamName: "ファイナンス",
        isOnline: true,
      ),
      const MemberListItem(
        name: "横田龍之介",
        teamName: "デザイン",
        isOnline: true,
      ),
      const MemberListItem(
        name: "城之内恵美",
        teamName: "デザイン",
        isOnline: true,
      ),
      const MemberListItem(
        name: "西村紗英",
        teamName: "マーケティング",
        isOnline: true,
      ),
      const MemberListItem(
        name: "野坂祐介",
        teamName: "ファイナンス",
        isOnline: true,
      ),
      const MemberListItem(
        name: "横田龍之介",
        teamName: "デザイン",
        isOnline: true,
      ),
      const MemberListItem(
        name: "城之内恵美",
        teamName: "デザイン",
        isOnline: true,
      ),
      const MemberListItem(
        name: "西村紗英",
        teamName: "マーケティング",
        isOnline: true,
      )
    ]);
  }
}

class MemberListItem extends StatelessWidget {
  final String name;
  final String teamName;
  final bool isOnline;

  const MemberListItem(
      {super.key,
      required this.name,
      required this.teamName,
      required this.isOnline});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.person,
          size: 30,
        ),
      ),
      title: Text(name),
      subtitle: Text(teamName),
      trailing: const Icon(
        Icons.check_circle,
        color: Colors.teal,
      ),
    );
  }
}
