import 'package:finalpro/constants.dart';
import 'package:finalpro/views/chating/massege/componants/body.dart';
import 'package:finalpro/views/chating/model/chat.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  final Chat chat; 

  const MessagesScreen({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(chat), 
      body: const Body(),
    );
  }

  AppBar buildAppBar(Chat chat) { 
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          const BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage(chat.image),
          ),
          const SizedBox(width: kPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                chat.time,
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.local_phone),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.videocam),
          onPressed: () {},
        ),
        const SizedBox(width: kPadding / 2),
      ],
    );
  }
}
