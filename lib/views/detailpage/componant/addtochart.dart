import 'package:finalpro/views/store1/products/S1/Seating.dart';
import 'package:finalpro/views/store1/products/S1/Steering.dart';
import 'package:finalpro/views/store1/products/S1/mirrors.dart';
import 'package:finalpro/views/store1/products/S1/wheel.dart';
import 'package:finalpro/views/store1/products/S2/audi.dart';
import 'package:finalpro/views/store1/products/S2/bmw.dart';
import 'package:finalpro/views/store1/products/S2/marc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';

class AddToCart<T> extends StatelessWidget {
  const AddToCart({super.key, required this.product});
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
  final T product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: kPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: getcolor(),
              ),
            ),
            
            child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              getcolor(),
              BlendMode.srcIn,
            ),
            child: SvgPicture.asset("assets/icons/add_to_cart.svg"),
          )

          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                backgroundColor:getcolor(),
              ),
              child: Text(
                "Buy  Now".toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}