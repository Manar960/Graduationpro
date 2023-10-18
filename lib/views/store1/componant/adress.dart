import 'package:finalpro/views/homepage/componant/model/carpice.dart';
import 'package:finalpro/views/homepage/componant/model/carplace.dart';
import 'package:finalpro/views/homepage/componant/model/top.dart';
import 'package:flutter/material.dart';


class Adress <T>extends StatelessWidget {
  const Adress({super.key, required this.store});
String getDES() {
  if (store is carplace) {
    return (store as carplace).description;
  } else if (store is topplace) {
    return (store as topplace).description;
  } else if (store is carpice) {
    return (store as carpice).description;
  }
  return ''; // Return a default value or handle the case where the type is not recognized
}
  final T store;
  @override
  Widget build(BuildContext context) {
  return Directionality(
    textDirection: TextDirection.rtl, 
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Align(
        alignment: Alignment.centerRight, // Align the text to the right edge
        child: Text(
          getDES(),
          style: const TextStyle(
            height: 1.5,
            fontSize: 19,
            color: Color.fromARGB(255, 58, 58, 58),
          ),
        ),
      ),
    ),
  );
}

}