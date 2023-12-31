import 'package:finalpro/views/store1/componant/size.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'car_model.dart';
import 'cardbody.dart';


class ProductSlider extends StatelessWidget {
  const ProductSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.getScreenPropotionHeight(300.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CardBody(
            width: SizeConfig.getScreenPropotionWidth(200.0),
            height: SizeConfig.getScreenPropotionHeight(300.0),
            index: index,
            onTap: () {
              // Navigator.push(
                // context,
                // MaterialPageRoute(
                //   // builder: (context) => ProductDetailsScreen(
                //   //   product: demoProducts[index],
                //   // ),
                // ),
              // );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 19,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    demoProducts[index].name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF707070),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    demoProducts[index].modelNo,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Center(
                  child: Hero(
                    tag: demoProducts[index].id,
                    child: Image.asset(
                      demoProducts[index].images[0],
                      width: SizeConfig.getScreenPropotionWidth(100),
                      height: SizeConfig.getScreenPropotionHeight(170),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              ],
            ),
          );
        },
        itemCount: demoProducts.length,
      ),
    );
  }
}