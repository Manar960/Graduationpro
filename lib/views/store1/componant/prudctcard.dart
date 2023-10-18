import 'package:finalpro/views/detailpage/Detailpage.dart';
import 'package:finalpro/views/store1/componant/itemcard.dart';
import 'package:finalpro/views/store1/products/S1/Seating.dart';
import 'package:finalpro/views/store1/products/S1/Steering.dart';
import 'package:finalpro/views/store1/products/S1/mirrors.dart';
import 'package:finalpro/views/store1/products/S1/wheel.dart';
import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:finalpro/views/store1/products/S2/bmw.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["عجلات", "مرايات", "مقاعد", "ستيرنج"];
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
        Visibility(
          visible: isProductCard4Visible,
          child: Responsive(
            desktop: ProductCard4(
              crossAxiscount: _size.width < 650 ? 2 : 3,
              aspectRatio: _size.width < 650 ? 0.85 : 1.2,
            ),
            tablet: ProductCard4(
              crossAxiscount: _size.width < 825 ? 2 : 3,
              aspectRatio: _size.width < 825 ? 0.85 : 1.1,
            ),
            mobile: ProductCard4(
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
       MaterialPageRoute(builder: (context) => Detailsproduct(product: products1[index],)), 
      );
      },
      product: products1[index],
    ),
    itemCount: products1.length,
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
        builder: (context) => Detailsproduct(product: products2[index],),
      ),
    );
  },
  product: products2[index],
),
    itemCount: products2.length,
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
              MaterialPageRoute(builder: (context) => Detailsproduct(product: products4[index],)), 
            );
          },
          product: products4[index],
        ),
        itemCount: products4.length,
      ),
    );
  }
}
class ProductCard4 extends StatelessWidget {
  const ProductCard4({
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
              MaterialPageRoute(builder: (context) => Detailsproduct(product: products5[index],)), 
            );
          },
          product: products5[index],
        ),
        itemCount: products5.length,
      ),
    );
  }
}

