import 'package:finalpro/constants.dart';
import 'package:finalpro/views/chating/chats/componants/body.dart';
import 'package:flutter/material.dart';


class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(),
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kSecondaryColor,
        child: const Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
    );
  }


AppBar buildAppBar() {
  return AppBar(
    backgroundColor: kSecondaryColor,
    automaticallyImplyLeading: false,
    title: const Text("الخبراء"),
    actions: [
      IconButton(
        icon: const Icon(Icons.search, color: Colors.white),
        onPressed: () {},
      ),
    ],
  );
}

PreferredSize buildCustomAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(80.0), // Set the desired height here
    child: buildAppBar(),
  );
}
}