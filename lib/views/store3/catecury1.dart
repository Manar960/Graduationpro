
import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:flutter/material.dart';




class Categories3 extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories3> {
 int selectedIndex = 0;

  bool isProductCard1Visible = true; 
  bool isProductCard2Visible = false;
  bool isProductCard3Visible = false;
  bool isProductCard4Visible = false;
  @override
  void initState() {
    super.initState();
    isProductCard1Visible = true;
  }

  @override
  Widget build(BuildContext context) {
   final Size _size = MediaQuery.of(context).size;

    return Column(
      children: [
 
        Visibility(
          visible: isProductCard1Visible,
          child: const Responsive(
            desktop: CircleButtonList(
              imagePaths: [
                'assets/images/kialogo.png',
                'assets/images/hondalogo.png',
                'assets/images/fiatlogo.png',
                 'assets/images/mercedeslogo.png',
                  'assets/images/bmw-logo.png',
                   'assets/images/mercedeslogo.png',
                  'assets/images/bmw-logo.png',
                 
              ],
            ),
                  tablet: CircleButtonList(
              imagePaths: [
               'assets/images/kialogo.png',
                'assets/images/hondalogo.png',
                'assets/images/fiatlogo.png',
                 'assets/images/mercedeslogo.jpg',
                  'assets/images/bmw-logo.jpg',
                   'assets/images/mercedeslogo.png',
                  'assets/images/bmw-logo.png',
              ],
            ),
                  mobile: CircleButtonList(
              imagePaths: [
                'assets/images/kialogo.png',
                'assets/images/hondalogo.png',
                'assets/images/fiatlogo.png',
                 'assets/images/mercedeslogo.png',
                  'assets/images/bmw-logo.png',
              ],
            ),
          ),
        ),
        // Visibility(
        //   visible: isProductCard2Visible,
        //   child: Responsive(
        //     desktop: ProductCard(
        //       aspectRatio: _size.width < 650 ? 0.85 : 1.2,
        //       products:p1s ,

        //     ),
        //     tablet: ProductCard(
        //       aspectRatio: _size.width < 825 ? 0.85 : 1.1,
        //       products:p1s ,
        //     ),
        //     mobile: ProductCard(
        //       aspectRatio: _size.width < 560 ? 0.85 : 0.5,
        //       products:p1s ,
        //     ),
        //   ),
        // ),
        // Visibility(
        //   visible: isProductCard3Visible,
        //   child: Responsive(
        //     desktop: ProductCard(
        //       aspectRatio: _size.width < 650 ? 0.85 : 1.2,
        //       products:p1s ,
        //     ),
        //     tablet: ProductCard(
        //       aspectRatio: _size.width < 825 ? 0.85 : 1.1,
        //       products:p1s ,
        //     ),
        //     mobile: ProductCard(
        //       aspectRatio: _size.width < 560 ? 0.85 : 0.5,
        //       products:p1s ,
        //     ),
        //   ),
        // ),
        // Visibility(
        //   visible: isProductCard4Visible,
        //   child: Responsive(
        //     desktop: ProductCard(
        //       aspectRatio: _size.width < 650 ? 0.85 : 1.2,
        //       products:p1s,
        //     ),
        //     tablet: ProductCard(
        //       aspectRatio: _size.width < 825 ? 0.85 : 1.1,
        //       products:p1s,

        //     ),
        //     mobile: ProductCard(
        //       aspectRatio: _size.width < 560 ? 0.85 : 0.5,
        //      products:products5,

        //     ),
        //   ),
        // ),
      ],
    );
    

  }

 
}
class CircleButton extends StatelessWidget {
  final String imagePath;
  final double padding;
  final double imageSize;

  const CircleButton({Key? key, required this.imagePath, this.padding = 10, this.imageSize = 100.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        // Handle button tap here
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: ClipOval(
          child: Container(
            width: imageSize,
            height: imageSize,
            color: Color.fromARGB(255, 249, 243, 243),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, 
            ),
          ),
        ),
      ),
    );
  }
}


class CircleButtonList extends StatelessWidget {
  final List<String> imagePaths;

  const CircleButtonList({Key? key, required this.imagePaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double listWidth = MediaQuery.of(context).size.width;
    if (Responsive.isDesktop(context)) {
          listWidth = 800; 
             }

    return Center(
      child: Container(
        width: listWidth,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: imagePaths.map((imagePath) {
              return CircleButton(imagePath: imagePath);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
