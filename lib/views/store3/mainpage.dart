import 'dart:ui';
import 'package:finalpro/constants.dart';
import 'package:finalpro/timedatepiker.dart';
import 'package:finalpro/views/homepage/componant/model/carpice.dart';
import 'package:finalpro/views/homepage/componant/model/carplace.dart';
import 'package:finalpro/views/homepage/componant/model/cars.dart';
import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:finalpro/views/homepage/componant/model/top.dart';
import 'package:finalpro/views/store3/beforafter.dart';
import 'package:finalpro/views/store3/heder.dart';
import 'package:finalpro/views/store3/srevicecard.dart';
import 'package:finalpro/views/store3/catecury1.dart';
import 'package:finalpro/views/stores/componants/rate.dart';
import 'package:flutter/material.dart';
import 'package:finalpro/views/homepage/componant/menu.dart';
import 'package:iconly/iconly.dart';


class mainpage<T> extends StatelessWidget {
  const mainpage({Key? key,required this.store});

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
                  SizedBox(height: 20,),
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
                        width: 5,
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
                Center(
               child:Text(
                    "علاماتنا التجارية",
                    style: Theme.of(context).textTheme.headline5,
                  ),),
                  const SizedBox(
                    height: 20,
                  ),
                  Categories3(),
                   const SizedBox(
                    height: 20,
                  ),
              Container(
               child:Column(
                    children: [
                 ServicesCards(),
                ],  
                ),
    ),
                 const SizedBox(
                    height: 20,
                  ),
                
                    Center(
               child:Text(
                    "قبل و بعد",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  
                  ),
                  const SizedBox(
                    height: 8,
                  ),
           horizontalWidgetBasedOnScreenType(context),
           const SizedBox(
                    height: 10,
                  ),
                  Center(
               child:Text(
                    "قيمنا",
                    style: Theme.of(context).textTheme.headline5,
                  ),),
                  const SizedBox(
                    height: 8,
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