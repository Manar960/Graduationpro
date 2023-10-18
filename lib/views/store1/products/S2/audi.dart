import 'dart:ui';

class audi {
  final String image, title, description;
  final int price, id;
  final Color color;
 
  audi(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.id,
      required this.color});
}
List<audi> audis = [
  audi(
      id: 1,
      title: "AUDI",
      price: 234,
      description: dummyText,
      image: "assets/images/audi2.png",
      color: Color(0xFF3D82AE)),
  audi(
      id: 2,
      title: "AUDI",
      price: 234,
      description: dummyText,
     image: "assets/images/audi2.png",
      color: Color(0xFFD3A984)),
  audi(
      id: 3,
      title: "AUDI",
      price: 234,
      description: dummyText,
      image: "assets/images/audi2.png",
      color: Color(0xFF989493)),
  
  
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";