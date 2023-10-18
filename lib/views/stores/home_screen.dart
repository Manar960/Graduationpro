import 'package:finalpro/constants.dart';
import 'package:finalpro/views/homepage/componant/header_container.dart';
import 'package:finalpro/views/homepage/componant/menu.dart';
import 'package:finalpro/views/stores/componants/body.dart';
import 'package:flutter/material.dart';


class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
              'Oflutter.com',
              style: TextStyle(
                color: Colors.black, // Set the text color to black
              ),
            ),
              accountEmail: Text(
                  'example@gmail.com',
                  style: TextStyle(
                    color: Colors.black, // Set the text color to black
                  ),
                ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Icon(
                    Icons.person, // Replace with your desired icon
                    size: 90, // Adjust the size as needed
                    color: Colors.white, // Set the color as needed
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/images/profile-bg3.jpg'),
                ),
              ),
            ),
           MobMenu(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // Header
              HeaderContainer(),
              // Body
             Body(),
              // Footer
              SizedBox(
                height: 30,
              ),
              



            //  Footer(),
              // Now we make our website responsive
            ],
          ),
        ),
      ),
    );
  }





}
