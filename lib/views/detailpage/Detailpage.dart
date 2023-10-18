import 'dart:ui';

import 'package:finalpro/constants.dart';
import 'package:finalpro/views/detailpage/componant/addtochart.dart';
import 'package:finalpro/views/detailpage/componant/button.dart';
import 'package:finalpro/views/detailpage/componant/color.dart';
import 'package:finalpro/views/detailpage/componant/descruption.dart';
import 'package:finalpro/views/detailpage/componant/mainfeater.dart';
import 'package:finalpro/views/store1/products/S1/Seating.dart';
import 'package:finalpro/views/store1/products/S1/Steering.dart';
import 'package:finalpro/views/store1/products/S1/mirrors.dart';
import 'package:finalpro/views/store1/products/S1/wheel.dart';
import 'package:finalpro/views/store1/products/S2/audi.dart';
import 'package:finalpro/views/store1/products/S2/bmw.dart';
import 'package:finalpro/views/store1/products/S2/marc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Detailsproduct <T>extends StatelessWidget {
  const Detailsproduct({super.key, required this.product});

  final T product;
Color getcolor(){
if(product is mirrors){
return (product as mirrors).color; }
else if(product is steering){
return (product as steering).color; }
else if(product is seating){
return (product as seating).color; }
else if(product is wheels){
return (product as wheels).color; }
else if(product is bmw){
return (product as bmw).color; }
else if(product is audi){
return (product as audi).color; }
else if(product is marc){
return (product as marc).color; }

return Colors.black;

}

Object? getproduct(){
if(product is mirrors){
return (product as mirrors); }
else if(product is steering){
return (product as steering); }
else if(product is seating){
return (product as seating); }
else if(product is wheels){
return (product as wheels); }
else if(product is bmw){
return (product as bmw); }
else if(product is audi){
return (product as audi); }
else if(product is marc){
return (product as marc); }
return "";


}

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // each product have a color
      backgroundColor: getcolor(),
      appBar: AppBar(
        backgroundColor: getcolor(),
        elevation: 0,
        leading: buttonArrow(context),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg",color: Colors.white,),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"),
            onPressed: () {},
          ),
          const SizedBox(width: kPadding / 2)
        ],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kPadding,
                      right: kPadding,
                    ),
                    // height: 500,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        const ColorAndSize(),
                        const SizedBox(height: kPadding / 2),
                        Description(product: getproduct()),
                        const SizedBox(height: kPadding / 2),
                        const CounterWithFavBtn(),
                        const SizedBox(height: kPadding / 2),
                        AddToCart(product: getproduct())
                      ],
                    ),
                  ),
                  pagedetail(product: getproduct())
                ],
              ),
            )
          ],
        ),
      ),
    );

    
  }
  
  buttonArrow(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  
  }

