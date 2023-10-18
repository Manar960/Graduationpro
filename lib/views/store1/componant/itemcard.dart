import 'package:finalpro/views/store1/products/S1/Seating.dart';
import 'package:finalpro/views/store1/products/S1/Steering.dart';
import 'package:finalpro/views/store1/products/S1/mirrors.dart';
import 'package:finalpro/views/store1/products/S1/wheel.dart';
import 'package:finalpro/views/store1/products/S2/audi.dart';
import 'package:finalpro/views/store1/products/S2/bmw.dart';
import 'package:finalpro/views/store1/products/S2/marc.dart';
import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class ItemCard<T> extends StatelessWidget {
  const ItemCard({Key? key, required this.product, required this.press});

  final T product;
  final VoidCallback press;


String getTitle() {
  if (product is mirrors) {
    return (product as mirrors).title;
  } else if (product is seating) {
    return (product as seating).title;
  } else if (product is steering) {
    return (product as steering).title;}
    else if (product is wheels) {
    return (product as wheels).title;
    
  }
  else if (product is audi) {
    return (product as audi).title;
  } else if (product is bmw) {
    return (product as bmw).title;
  } else if (product is marc) {
    return (product as marc).title;}

  return ''; // Return a default value or handle the case where the type is not recognized
}
String getimage() {
  if (product is mirrors) {
    return (product as mirrors).image;
  } else if (product is seating) {
    return (product as seating).image;
  } else if (product is steering) {
    return (product as steering).image;}
    else if (product is wheels) {
    return (product as wheels).image;
  }
    else if (product is audi) {
    return (product as audi).image;
  } else if (product is bmw) {
    return (product as bmw).image;
  } else if (product is marc) {
    return (product as marc).image;}
  return ''; // Return a default value or handle the case where the type is not recognized
}
Color getcolor() {
  if (product is mirrors) {
    return (product as mirrors).color;
  } else if (product is seating) {
    return (product as seating).color;
  } else if (product is steering) {
    return (product as steering).color;}
    else if (product is wheels) {
    return (product as wheels).color;
  }
    else if (product is audi) {
    return (product as audi).color;
  } else if (product is bmw) {
    return (product as bmw).color;
  } else if (product is marc) {
    return (product as marc).color;}
  
  return Colors.black; // Return a default value or handle the case where the type is not recognized
}
int getid() {
  if (product is mirrors) {
    return (product as mirrors).id;
  } else if (product is seating) {
    return (product as seating).id;
  } else if (product is steering) {
    return (product as steering).id;}
    else if (product is wheels) {
    return (product as wheels).id;
  }
    else if (product is audi) {
    return (product as audi).id;
  } else if (product is bmw) {
    return (product as bmw).id;
  } else if (product is marc) {
    return (product as marc).id;}
  return 0; // Return a default value or handle the case where the type is not recognized
}

int getprice() {
  if (product is mirrors) {
    return (product as mirrors).price;
  } else if (product is seating) {
    return (product as seating).price;
  } else if (product is steering) {
    return (product as steering).price;}
    else if (product is wheels) {
    return (product as wheels).price;

  }
    else if (product is audi) {
    return (product as audi).price;
  } else if (product is bmw) {
    return (product as bmw).price;
  } else if (product is marc) {
    return (product as marc).price;}
  return 0; // Return a default value or handle the case where the type is not recognized
}



  @override
  Widget build(BuildContext context) {
    // Ensure that product has properties like title, price, color, etc.
    // You may need to create a common interface or use a specific base class.

    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kPadding),
              decoration: BoxDecoration(
                color: getcolor(), // Assuming 'color' is a property of the product
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${getid()}", // Assuming 'id' is a property of the product
                child: Image.asset(getimage(),width: Responsive.isDesktop(context)?200:100,
                height:Responsive.isDesktop(context)?200:100 ,
                
                ), // Assuming 'image' is a property of the product
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kPadding / 4),
            child: Text(
              // Assuming 'title' is a property of the product
              getTitle(),
              style: TextStyle(color: deepbrowncolor),
            ),
          ),
          Text(
            // Assuming 'price' is a property of the product
            "\$${getprice()}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
