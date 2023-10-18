import 'dart:ui';

class marc {
  final String image, title, description;
  final int price, id;
  final Color color;
 
  marc(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.id,
      required this.color});
}
List<marc> marcs = [
  marc(
      id: 1,
       title: "Mercedes",
      price: 234,
      description: dummyText,
      image: "assets/images/marcL.png",
      color: Color(0xFF3D82AE)),
  marc(
      id: 2,
       title: "Mercedes",
      price: 234,
      description: dummyText,
       image: "assets/images/marcL.png",
      color: Color(0xFFD3A984)),
  marc(
      id: 3,
       title: "Mercedes",
      price: 234,
      description: dummyText,
       image: "assets/images/marcL.png",
      color: Color(0xFF989493)),
  marc(
      id: 4,
      title: "Mercedes",
      price: 234,
      description: dummyText,
      image: "assets/images/marcL.png",
      color: Color(0xFFE6B398)),
  
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";