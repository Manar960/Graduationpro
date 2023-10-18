import 'package:finalpro/views/detailpage/Detailpage.dart';
import 'package:finalpro/views/store1/componant/itemcard.dart';
import 'package:finalpro/views/store1/products/S2/audi.dart';
import 'package:finalpro/views/store1/products/S2/bmw.dart';
import 'package:finalpro/views/store1/products/S2/marc.dart';
import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

// We need satefull widget for our categories

class Categories22 extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories22> {
  List<String> categories = ["BMW", "Audi", "MARCEDES"];
  // By default our first item will be selected
 int selectedIndex = 0;

  // Create variables to track the visibility of different ProductCard widgets
  bool isProductCard1Visible = true; // Set this to true by default
  bool isProductCard2Visible = false;
  bool isProductCard3Visible = false;
  bool isProductCard4Visible = false;
  @override
  void initState() {
    super.initState();

    // Set the default visibility state in the initState method
    isProductCard1Visible = true;
  }

  @override
  Widget build(BuildContext context) {
   final Size _size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kPadding),
          child: SizedBox(
            height: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              // Adjust the left padding as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) => buildCategory(index),
              ),
            ),
          ),
        ),
        Visibility(
          visible: isProductCard1Visible,
          child: Responsive(
            desktop: ProductCard1(
              crossAxiscount: _size.width < 650 ? 2 : 3,
              aspectRatio: _size.width < 650 ? 0.85 : 1.2,
            ),
            tablet: ProductCard1(
              crossAxiscount: _size.width < 825 ? 2 : 3,
              aspectRatio: _size.width < 825 ? 0.85 : 1.1,
            ),
            mobile: ProductCard1(
              crossAxiscount: _size.width < 690 ? 2 : 3,
              aspectRatio: _size.width < 560 ? 0.85 : 0.5,
            ),
          ),
        ),
        Visibility(
          visible: isProductCard2Visible,
          child: Responsive(
            desktop: ProductCard2(
              crossAxiscount: _size.width < 650 ? 2 : 3,
              aspectRatio: _size.width < 650 ? 0.85 : 1.2,
            ),
            tablet: ProductCard2(
              crossAxiscount: _size.width < 825 ? 2 : 3,
              aspectRatio: _size.width < 825 ? 0.85 : 1.1,
            ),
            mobile: ProductCard2(
              crossAxiscount: _size.width < 690 ? 2 : 3,
              aspectRatio: _size.width < 560 ? 0.85 : 0.5,
            ),
          ),
        ),
        Visibility(
          visible: isProductCard3Visible,
          child: Responsive(
            desktop: ProductCard3(
              crossAxiscount: _size.width < 650 ? 2 : 3,
              aspectRatio: _size.width < 650 ? 0.85 : 1.2,
            ),
            tablet: ProductCard3(
              crossAxiscount: _size.width < 825 ? 2 : 3,
              aspectRatio: _size.width < 825 ? 0.85 : 1.1,
            ),
            mobile: ProductCard3(
              crossAxiscount: _size.width < 690 ? 2 : 3,
              aspectRatio: _size.width < 560 ? 0.85 : 0.5,
            ),
          ),
        ),
      
      ],
    );
    

  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
          setState(() {
          selectedIndex = index;
          isProductCard1Visible = index == 0;
          isProductCard2Visible = index == 1;
          isProductCard3Visible = index == 2;
          isProductCard4Visible = index == 3;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: selectedIndex == index ? bluecolor : deepbrowncolor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kPadding / 4), //top padding 5
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}

class ProductCard1 extends StatelessWidget {
  const ProductCard1({
    Key? key,
    this.crossAxiscount = 3,
    this.aspectRatio = 0.3,
  }) : super(key: key);
  final int crossAxiscount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
  padding: EdgeInsets.all(30.0), // Adjust the padding as needed
  child: GridView.builder(
    shrinkWrap: true,
    physics: ScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxiscount,
      childAspectRatio: aspectRatio,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
    ),
    itemBuilder: (context, index) => ItemCard(
      press: () {
        Navigator.push(
       context, 
       MaterialPageRoute(builder: (context) => Detailsproduct(product: bmws[index],)),
      );
      },
      product: bmws[index],
    ),
    itemCount: bmws.length,
  ),
);
  }
}

class ProductCard2 extends StatelessWidget {
  const ProductCard2({
    Key? key,
    this.crossAxiscount = 3,
    this.aspectRatio = 0.3,
  }) : super(key: key);
  final int crossAxiscount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: EdgeInsets.all(30.0), // Adjust the padding as needed
  child: GridView.builder(
    shrinkWrap: true,
    physics: ScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxiscount,
      childAspectRatio: aspectRatio,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
    ),
    itemBuilder: (context, index) => ItemCard(
  press: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Detailsproduct(product: audis[index],),
      ),
    );
  },
  product: audis[index],
),
    itemCount: audis.length,
  ),
);
  }
}
class ProductCard3 extends StatelessWidget {
  const ProductCard3({
    Key? key,
    this.crossAxiscount = 3,
    this.aspectRatio = 0.3,
  }) : super(key: key);
  final int crossAxiscount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(30.0), // Adjust the padding as needed
      child: GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxiscount,
          childAspectRatio: aspectRatio,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => ItemCard(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Detailsproduct(product: marcs[index],)), // Replace 'LoginScreen' with the actual name of your login screen class
            );
          },
          product: marcs[index],
        ),
        itemCount: marcs.length,
      ),
    );
  }
}

