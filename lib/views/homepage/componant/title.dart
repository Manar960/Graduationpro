import 'package:finalpro/constants.dart';
import 'package:flutter/material.dart';


class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn( {
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(),
    TextButton(
      style: TextButton.styleFrom(
        backgroundColor: kSecondaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
       // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 13),
      ),
      onPressed: press,
      child: Text("المزيد", style: TextStyle(color: Colors.white)),
        )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key ?key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: kSecondaryColor),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: 4),
              height: 25,
              color: kSecondaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}