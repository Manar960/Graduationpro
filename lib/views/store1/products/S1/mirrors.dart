import 'dart:ui';

class mirrors {
  final String image, title, description;
  final int price, id;
  final Color color;
 
  mirrors(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.id,
      required this.color});
}
List<mirrors> products2 = [
  mirrors(
      id: 1,
      title: "AUDI",
      price: 234,
      description: dummyText,
      image: "assets/images/audi2.png",
      color: Color(0xFF3D82AE)),
  mirrors(
      id: 2,
      title: "BMW",
      price: 234,
      description: dummyText,
      image: "assets/images/bm.png",
      color: Color(0xFFD3A984)),
  mirrors(
      id: 3,
      title: "BMW",
      price: 234,
      description: dummyText,
      image: "assets/images/bm2.png",
      color: Color(0xFF989493)),
  mirrors(
      id: 4,
      title: "Mercedes",
      price: 234,
      description: dummyText,
      image: "assets/images/marcL.png",
      color: Color(0xFFE6B398)),
  mirrors(
      id: 5,
      title: "Hyundai",
      price: 234,
      description: dummyText,
      image: "assets/images/ss.png",
      color: Color(0xFFFB7883)),
  
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";