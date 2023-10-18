import 'package:finalpro/constants.dart';
import 'package:finalpro/views/store1/componant/adress.dart';
import 'package:finalpro/views/detailpage/componant/color.dart';
import 'package:finalpro/views/store1/componant/imageproduct.dart';
import 'package:finalpro/views/homepage/componant/model/carpice.dart';
import 'package:finalpro/views/homepage/componant/model/carplace.dart';
import 'package:finalpro/views/homepage/componant/model/top.dart';
import 'package:finalpro/views/store3/mainpage.dart';
import 'package:flutter/material.dart';

import '../homepage/componant/model/cars.dart';


class DetailsScreen<T> extends StatelessWidget {
  const DetailsScreen({Key? key, required this.store}) : super(key: key);
Object? getstores() {
  if (store is carplace) {
    return (store as carplace);
  } else if (store is cars) {
    return (store as cars);
  } else if (store is carpice) {
    return (store as carpice);
  }else if (store is cars) {
    return (store as cars);
  }
  return ''; // Return a default value or handle the case where the type is not recognized
}
  final T store;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
    
      backgroundColor: bluecolor,

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child:Stack(
  children: <Widget>[
    Container(
      margin: EdgeInsets.only(top: size.height * 0.3),
      padding: EdgeInsets.only(
        top: size.height * 0.12,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: <Widget>[
          Adress(store: getstores()),
          SizedBox(height: 20),
        ],
      ),
    ),
    if (store is carplace) 
      ProductTitleWithImage(store: store as carplace),
    if (store is cars) 
      ProductTitleWithImage(store: store as cars),
    if(store is carpice)
      mainpage(store: store as carpice),

  ],
)

            ),
            
          ],
        ),
      ),
    );
  }
}