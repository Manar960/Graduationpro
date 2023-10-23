import 'package:finalpro/constants.dart';
import 'package:finalpro/views/chating/massege/componants/chatinput.dart';
import 'package:finalpro/views/chating/massege/componants/massege.dart';
import 'package:finalpro/views/chating/model/chat.dart';
import 'package:finalpro/views/chating/model/chatmassge.dart';
import 'package:flutter/material.dart';



class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
              Message(
                    message: demeChatMessages[index],
                   
                  ),
                
              
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}