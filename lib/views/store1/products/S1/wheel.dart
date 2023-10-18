import 'dart:ui';
import 'package:finalpro/constants.dart';
class wheels {
  final String image, title, description;
  final int price, id;
  final Color color;
 
  wheels(
      {required this.image,
      required this.title,
      required this.price,
      required this.id,
      required this.color,
      required this.description});
}
List<wheels> products1 = [
  wheels(
      id: 1,
      title: "BMW",
      price: 234,
      description:dummyText,
      image: "assets/images/bmw.png",
      color: bluecolor),
  wheels(
      id: 2,
      title: "Audi",
      price: 234,
      description:dummyText,
      image: "assets/images/audi.png",
      color: Color(0xFFD3A984)),
  wheels(
      id: 3,
      title: "Fait",
      price: 234,
      description:dummyText,
      image: "assets/images/fiat.png",
      color: Color(0xFF989493)),
  wheels(
      id: 4,
      title: "Hyundai",
      price: 234,
      description:dummyText,
      image: "assets/images/honda.png",
      color: orangecolor),
  wheels(
      id: 5,
      title: "Mercedes",
      price: 234,
      description:dummyText,
      image: "assets/images/merc.png",
      color: orangecolor),

];


String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";