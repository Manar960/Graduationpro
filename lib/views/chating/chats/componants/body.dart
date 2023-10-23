import 'package:finalpro/views/chating/chats/componants/chatcard.dart';
import 'package:finalpro/views/chating/massege/massegescreen.dart';
import 'package:finalpro/views/chating/model/chat.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0), // Add vertical padding here
              child: Container(
              
                height: 100,
                child: ChatCard(
                  chat: chatsData[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MessagesScreen(chat: chatsData[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
