import 'dart:ui';

import 'package:finalpro/constants.dart';
import 'package:finalpro/timedatepiker.dart';
import 'package:finalpro/views/store1/componant/card2.dart';
import 'package:finalpro/views/store1/componant/prudctcard.dart';
import 'package:finalpro/views/store1/componant/store3card.dart';
import 'package:finalpro/views/homepage/componant/model/carpice.dart';
import 'package:finalpro/views/homepage/componant/model/carplace.dart';
import 'package:finalpro/views/homepage/componant/model/colorcar.dart';
import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:finalpro/views/store3/heder.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:finalpro/views/homepage/componant/menu.dart';

import '../../homepage/componant/model/cars.dart';


class ProductTitleWithImage<T> extends StatelessWidget {
  const ProductTitleWithImage({Key? key, required this.store});

  final T store;

  String getTitle() {
    if (store is carplace) {
      return (store as carplace).title;
    } else if (store is cars) {
      return (store as cars).title;
    } else if (store is carpice) {
      return (store as carpice).title;
    }
    return ''; // Return a default value or handle the case where the type is not recognized
  }
  String getDES() {
    if (store is carplace) {
      return (store as carplace).description;
    } else if (store is cars) {
      return (store as cars).description;
    } else if (store is carpice) {
      return (store as carpice).description;
    }
    return ''; // Return a default value or handle the case where the type is not recognized
  }
  String getimage() {
    if (store is carplace) {
      return (store as carplace).image;
    } else if (store is cars) {
      return (store as cars).image;
    } else if (store is carpice) {
      return (store as carpice).image;
    }
    return ''; // Return a default value or handle the case where the type is not recognized
  }

  String getcity() {
    if (store is carplace) {
      return (store as carplace).city;
    } else if (store is cars) {
      return (store as cars).city;
    } else if (store is carpice) {
      return (store as carpice).city;
    }
    return ''; // Return a default value or handle the case where the type is not recognized
  }

  int getid() {
    if (store is carplace) {
      return (store as carplace).id;
    } else if (store is cars) {
      return (store as cars).id;
    } else if (store is carpice) {
      return (store as carpice).id;
    }
    return 10;
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(

    child: Scaffold(
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
      body: Stack(
        children: [
          HeaderContainer3(),
          scroll(context),
          

         // You can place the buttonArrow here, outside the Column
        ],
      ),
    ),
  );
  }

  
  scroll(BuildContext context) {
    final Size _size = MediaQuery.of(context).size ;
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,

        builder: (context, scrollController) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(30),
                  topRight: const Radius.circular(30)),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 35,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  if(store is carplace)
                  Text(
                    "كماليات السيارات",
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                      fontSize: 24, // Adjust the font size as needed
                    ),
                  )
                  else if (store is cars)
                    Text(
                      "معارض السيارات",
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontSize: 24, // Adjust the font size as needed
                      ),
                    )
                    else if (store is carpice)
                    Text(
                      "تجليس السيارات",
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontSize: 24, // Adjust the font size as needed
                      ),
                    )
                    else if (store is carcolor)
                    Text(
                      "دهان السيارات",
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                        fontSize: 24, // Adjust the font size as needed
                      ),
                    ),
                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.transparent, // Make the background transparent
                          backgroundImage: getimage() != null ? AssetImage(getimage()) : null, // Conditional image assignment
                        ),
                      ),

                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        getTitle(),
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: deepbrowncolor,fontSize: 29),
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: bluecolor,
                        child: Icon(

                          IconlyLight.heart,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                    ],

                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          height: Responsive.isDesktop(context)?55:40,
                          color: kSecondaryColor,
                          onPressed: () {},
                          child: Text(
                            "تواصل معنا",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                   Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          height: Responsive.isDesktop(context)?55:40,
                          color: kSecondaryColor,
                          onPressed: () {

                             _showPopup(context);
                          },
                          child: const Text(
                            "احجز موعدك",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  Text(
                    getDES(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: deepbrowncolor),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if(store is carplace)
                 Categories(),
                 if(store is cars)
                 Categories22(),
                  if(store is cars)
                    ProductSlider(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        });
  }




void _showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: Container(
          width: 1000, 
          height: 400,
          child: AlertDialog(
            title: Text('اختر التاريخ والوقت'),
            content: datetime(),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('اغلاق'),
              ),
            ],
          ),
        ),
      );
    },
  );
}

}