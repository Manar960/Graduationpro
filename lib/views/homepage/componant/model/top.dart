import 'package:flutter/material.dart';

class topplace {
  final String image, title,city,description;
  final int id;

  topplace({
    required this.id,
    required this.image,
    required this.title,
    required this.city,
    required this.description

  });
}

List<topplace> topplaces = [
  topplace(
    id: 1,
    title: "هلا رهف",
    city:"نابلس",
    description:"hhhhhhhhhhhhhhhhhh",
    image: "assets/images/halacar.jpg",
  ),
  topplace(
    id: 2,
    title: "معين",
    city:"نابلس",
    description:"",
    image: "assets/images/معين.jpg",
  ),
  topplace(

    id: 3,
    title: "أوتو كار",
    city:"نابلس",
    description:"",
    image: "assets/images/autocar.jpg",
  ),
  topplace(
    id: 4,
    title: "عنتر",
    city:"نابلس",
    description:"",
    image:
        "assets/images/anter.jpg",
  ),
  topplace(
    id: 5,
    title: "السويدي",
    city:"نابلس",
    description:"",
    image: "assets/images/السويدي.jpg",
  ),
  topplace(
    id: 6,
    title: "العاصي",
    city:"نابلس",
    description:"",
    image: "assets/images/العاصي.jpg",
  ),
  
];
