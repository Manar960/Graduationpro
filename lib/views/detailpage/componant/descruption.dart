import 'package:finalpro/views/store1/products/S1/Seating.dart';
import 'package:finalpro/views/store1/products/S1/Steering.dart';
import 'package:finalpro/views/store1/products/S1/mirrors.dart';
import 'package:finalpro/views/store1/products/S1/wheel.dart';
import 'package:finalpro/views/store1/products/S2/audi.dart';
import 'package:finalpro/views/store1/products/S2/bmw.dart';
import 'package:finalpro/views/store1/products/S2/marc.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';

// ignore: camel_case_types
class Description<T> extends StatelessWidget {
  const Description({super.key, required this.product});
String getDES() {
  if (product is mirrors) {
    return (product as mirrors).description;
  } else if (product is wheels) {
    return (product as wheels).description;
  } else if (product is steering) {
    return (product as steering).description;
  } else if (product is seating) {
    return (product as seating).description;
  } else if (product is audi) {
    return (product as audi).description;
  }
  else if (product is bmw) {
    return (product as bmw).description;
  }
  else if (product is marc) {
    return (product as marc).description;
  }
  return ''; 
}
  final T product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      child: Text(
        getDES(),
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}