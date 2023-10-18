import 'package:auto_size_text/auto_size_text.dart';
import 'package:finalpro/views/homepage/componant/model/carpice.dart';
import 'package:finalpro/views/homepage/componant/model/carplace.dart';
import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:finalpro/views/homepage/componant/model/top.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
class Storse<T> extends StatelessWidget {
  const Storse({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final T product; // Use generic type T for the product
  final VoidCallback press;
String getTitle() {
  if (product is carplace) {
    return (product as carplace).title;
  } else if (product is topplace) {
    return (product as topplace).title;
  } else if (product is carpice) {
    return (product as carpice).title;
  }
  return ''; // Return a default value or handle the case where the type is not recognized
}
String getimage() {
  if (product is carplace) {
    return (product as carplace).image;
  } else if (product is topplace) {
    return (product as topplace).image;
  } else if (product is carpice) {
    return (product as carpice).image;
  }
  return ''; // Return a default value or handle the case where the type is not recognized
}
String getcity() {
  if (product is carplace) {
    return (product as carplace).city;
  } else if (product is topplace) {
    return (product as topplace).city;
  } else if (product is carpice) {
    return (product as carpice).city;
  }
  return ''; // Return a default value or handle the case where the type is not recognized
}
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(kPadding / 2),
      child: InkWell(

        onTap: press,
        child: Material(
          elevation: 5,

          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  
                  child: Image.asset(
                    getimage(),
                    height: Responsive.isDesktop(context) ? 200 : 90,
                    width: Responsive.isDesktop(context) ? 500 : 300,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                
                AutoSizeText(
                 getTitle(),
                  maxLines: 2,
                  minFontSize: 14,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              SizedBox(
               height: 5,
                 ),
                 AutoSizeText(
                 getcity(),
                  maxLines: 2,
                  minFontSize: 14,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
