import 'package:flutter/material.dart';

import '../../../constants.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // now we make service section attractive and good
    return Wrap(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Services(
          image: "assets/images/pic.png",
          title: "كماليات السيارات",
          title2: "السلام عليكم",
        ),
        Services(
          image: "assets/images/pic2.png",
          title: "تجليس السيارات",
          title2: "السلام عليكم",
        ),
        Services(
          image: "assets/images/pic3.png",
          title: "تصليح السيارات",
          title2: "السلام عليكم",
        ),
      ],
    );
  }
}

class Services extends StatelessWidget {
  const Services({
    Key? key,
    required this.image,
    required this.title, required this.title2,
  }) : super(key: key);
  final String image, title,title2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          padding: EdgeInsets.all(kPadding / 2),
          width: 300,
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      image,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
