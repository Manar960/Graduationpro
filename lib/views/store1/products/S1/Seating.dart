import 'dart:ui';

class seating {
  final String image, title, description;
  final int price, id;
  final Color color;
 
  seating(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.id,
      required this.color});
}
List<seating> products4 = [
  seating(
      id: 1,
      title: "Mercedes",
      price: 234,
      description: dummyText,
      image: "assets/images/m.png",
      color: Color(0xFF3D82AE)),
  seating(
      id: 2,
      title: "AUDI",
      price: 234,
      description: dummyText,
      image: "assets/images/a.png",
      color: Color(0xFFD3A984)),
  seating(
      id: 3,
      title: "AUDI",
      price: 234,
      description: dummyText,
      image: "assets/images/aa.png",
      color: Color(0xFF989493)),
  seating(
      id: 4,
      title: "Hyundai",
      price: 234,
      description: dummyText,
      image: "assets/images/h.png",
      color: Color(0xFFE6B398)),
  
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";