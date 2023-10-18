import 'package:finalpro/views/homepage/componant/form.dart';
import 'package:finalpro/views/homepage/home_screen.dart';
import 'package:finalpro/views/stores/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderMenu(
          press: () {  Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );},
          title: "الرئيسية",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen2()),
    );},
          title: "المتاجر",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: "الحجوزات",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => emailform()),
    );},
          title: "تواصل معنا",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: "تسجيل خروج",
        ),
      ],
    );
  }
}

class MobFooterMenu extends StatelessWidget {
  const MobFooterMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        HeaderMenu(
          press: () {},
          title: "الملف الشخصي",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {
              Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
          },
          title: "الرئيسية",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: "الحجوزات",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => emailform()),
    );},
          title: "تواصل معنا",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: "تسجيل خروج",
        ),
      ],
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
    required this.title,
    required this.press,

  }) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}

class HeaderMenu2 extends StatelessWidget {
  const HeaderMenu2({
    Key? key,
    required this.title,
    required this.press,
     required this.icon, required this.iconColor,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  final IconData  icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}


class MobMenu extends StatefulWidget {
  const MobMenu({Key? key}) : super(key: key);

  @override
  _MobMenuState createState() => _MobMenuState();
}

class _MobMenuState extends State<MobMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           ListTile(
            leading: Icon(Icons.person,color:Color(0xFF873e23)),
            title: Text('الملف الشخصي'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.home,color:Color(0xFF873e23)),
            title: Text('الرئيسية'),
             onTap: () {
    // Navigate to HomeScreen when the ListTile is tapped
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  },
          ),
           ListTile(
            leading: Icon(Icons.store,color:Color(0xFF873e23)),
            title: Text('المتاجر'),
             onTap: () {
    // Navigate to HomeScreen when the ListTile is tapped
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen2()),
    );
  },
          ),
          ListTile(
            leading: Icon(Icons.book,color:Color(0xFF873e23)),
            title: Text('الحجوزات'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email,color:Color(0xFF873e23)),
            title: Text('تواصل معنا'),
             onTap: () {
    // Navigate to HomeScreen when the ListTile is tapped
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => emailform()),
    );
  }
          ),
         
          Divider(),
          ListTile(
            title: Text('تسجيل خروج',),
            leading: Icon(Icons.exit_to_app,color:Color(0xFF873e23)),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
