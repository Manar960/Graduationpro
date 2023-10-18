import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
class ServicesCards<T> extends StatelessWidget {
  const ServicesCards({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    // Create a variable to check if it's a desktop


    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center vertically
        children: [
          Services2(
            image: "assets/images/pic.png",
            title: "كماليات السيارات",
            title2: "السلام عليكم",
          ),
          Services2(
            image: "assets/images/pic2.png",
            title: "تجليس السيارات",
            title2: "السلام عليكم",
          ),
          Services2(
            image: "assets/images/pic3.png",
            title: "تصليح السيارات",
            title2: "نص النص النص النص السلام عليكم",
          ),
        ],
      ),
    );
  }
}

class Services2 extends StatelessWidget {
  const Services2({
    Key? key,
    required this.image,
    required this.title,
    required this.title2,
  }) : super(key: key);

  final String image, title, title2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(kPadding / 2),
          width: Responsive.isDesktop(context) ? 800 : 450,
          height: Responsive.isDesktop(context) ? 200 : 180,
          color: Colors.grey,

          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  image,
                  height: 170,
                  width: Responsive.isDesktop(context) ? 300 : 140,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        title2,
                        style: TextStyle(
                          color: const Color.fromARGB(137, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
