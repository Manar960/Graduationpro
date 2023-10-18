import 'dart:ui';

class steering {
  final String image, title, description;
  final int price, id;
  final Color color;
 
  steering(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.id,
      required this.color});
}
List<steering> products5 = [
  steering(
      id: 1,
      title: "BMW E36",
      price: 234,
      description: dummyText,
      image: "assets/images/bmwe36.png",
      color: Color(0xFF3D82AE)),
  steering(
      id: 2,
      title: "BMW",
      price: 234,
      description: dummyText,
      image: "assets/images/bmw2.png",
      color: Color(0xFFD3A984)),
  steering(
      id: 3,
      title: "AUDI S1",
      price: 234,
      description: dummyText,
      image: "assets/images/audisa1.png",
      color: Color(0xFF989493)),
  steering(
      id: 4,
      title: "AUDI B8",
      price: 234,
      description: dummyText,
      image: "assets/images/audib8.png",
      color: Color(0xFFE6B398)),
  steering(
      id: 5,
      title: "Hyundai",
      price: 234,
      description: dummyText,
      image: "assets/images/honda.jpg",
      color: Color(0xFFFB7883)),
  steering(
    id: 6,
    title: "Mercedes",
    price: 234,
    description: dummyText,
    image: "assets/images/marc.jpg",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";