import 'dart:ui';

class bmw {
  final String image, title, description;
  final int price, id;
  final Color color;
 
  bmw(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.id,
      required this.color});
}
List<bmw> bmws = [
  bmw(
      id: 1,
       title: "BMW",
      price: 234,
      description: dummyText,
      image: "assets/images/bm.png",
      color: Color(0xFF3D82AE)),
  bmw(
      id: 2,
      title: "BMW",
      price: 234,
      description: dummyText,
      image: "assets/images/bm.png",
      color: Color(0xFFD3A984)),
  bmw(
      id: 3,
      title: "BMW",
      price: 234,
      description: dummyText,
      image: "assets/images/bm2.png",
      color: Color.fromARGB(255, 233, 206, 199)),
 
  
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";