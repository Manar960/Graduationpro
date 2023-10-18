import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:finalpro/views/store1/products/S1/Seating.dart';
import 'package:finalpro/views/store1/products/S1/Steering.dart';
import 'package:finalpro/views/store1/products/S1/mirrors.dart';
import 'package:finalpro/views/store1/products/S1/wheel.dart';
import 'package:finalpro/views/store1/products/S2/audi.dart';
import 'package:finalpro/views/store1/products/S2/bmw.dart';
import 'package:finalpro/views/store1/products/S2/marc.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class pagedetail<T> extends StatelessWidget {
  const pagedetail({super.key, required this.product});

  final T product;

String getTitle() {
    if (product is mirrors) {
      return (product as mirrors).title;
    } else if (product is seating) {
      return (product as seating).title;
    } else if (product is steering) {
      return (product as steering).title;
    } else if (product is wheels) {
      return (product as wheels).title;
    } else if (product is bmw) {
      return (product as bmw).title;
    } else if (product is audi) {
      return (product as audi).title;
    } else if (product is marc) {
      return (product as marc).title;
    }
    return ''; // Return a default value or handle the case where the type is not recognized
  }

  String getimage() {
     if (product is mirrors) {
      return (product as mirrors).image;
    } else if (product is seating) {
      return (product as seating).image;
    } else if (product is steering) {
      return (product as steering).image;
    } else if (product is wheels) {
      return (product as wheels).image;
    } else if (product is bmw) {
      return (product as bmw).image;
    } else if (product is audi) {
      return (product as audi).image;
    } else if (product is marc) {
      return (product as marc).image;
    }
    return ''; // Return a default value or handle the case where the type is not recognized
  }


  int getid() {
     if (product is mirrors) {
      return (product as mirrors).id;
    } else if (product is seating) {
      return (product as seating).id;
    } else if (product is steering) {
      return (product as steering).id;
    } else if (product is wheels) {
      return (product as wheels).id;
    } else if (product is bmw) {
      return (product as bmw).id;
    } else if (product is audi) {
      return (product as audi).id;
    } else if (product is marc) {
      return (product as marc).id;
    }
    return 10;
  }

  int getprice() {
     if (product is mirrors) {
      return (product as mirrors).price;
    } else if (product is seating) {
      return (product as seating).price;
    } else if (product is steering) {
      return (product as steering).price;
    } else if (product is wheels) {
      return (product as wheels).price;
    } else if (product is bmw) {
      return (product as bmw).price;
    } else if (product is audi) {
      return (product as audi).price;
    } else if (product is marc) {
      return (product as marc).price;
    }
    return 10;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "معلومات اضافية",
            style: TextStyle(color: Colors.white),
          ),
          Text(
           getTitle(),
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          
              const SizedBox(width: kPadding*30),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "السعر\n"),
                    TextSpan(
                      text: "\$${getprice()}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: kPadding*50),
                 Expanded(
                  child: Hero(
                    tag: "${getid()}",
                    child: Container(
                      width: 150,  // Set the desired width
                      height: 250, // Set the desired height
                      child: Image.asset(
                        getimage(),
                        fit: BoxFit.fill, // You can adjust the fit property as needed
                      ),
                    ),
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}