import 'package:flutter/material.dart';

import '../../view/direct_message/direct_message.dart';

class CustomDMListTile extends StatelessWidget {
  final String? imagelink;
  final String? userName;
  const CustomDMListTile({
    Key? key,
    this.imagelink,
    this.userName,
  }) : super(key: key);
//TODO this file needs a viewmodel
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DirectMessage(username: userName))),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("$imagelink"),
            radius: 20.0,
          ),
          const SizedBox(width: 8),
          TextButton(
            //TODO fix this
            onPressed: () {},
            child: Text(
              "$userName",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
