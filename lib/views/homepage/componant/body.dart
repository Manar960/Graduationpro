import 'package:finalpro/views/store1/homepage.dart';
import 'package:finalpro/views/homepage/componant/buttom_banner.dart';
import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:finalpro/views/homepage/componant/model/top.dart';
import 'package:finalpro/views/homepage/componant/Stores.dart';
import 'package:finalpro/views/homepage/componant/services_card.dart';
import 'package:finalpro/views/homepage/componant/title.dart';
import 'package:flutter/material.dart';


import '../../../constants.dart';


class BodyContainer extends StatelessWidget {
  const BodyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(kPadding),
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        children: [
          ServicesCard(),

           SizedBox(
            height: 40,
          ),
              TitleWithMoreBtn(
              title: "المتميزون",
              press: () {
                Navigator.pushNamed(context, 'stores');
              },

            ),
          Responsive(
            desktop: ProductCard(
              crossAxiscount: _size.width < 650 ? 2 : 3,
              aspectRatio: _size.width < 650 ? 0.85 : 1.2,
            ),
            tablet: ProductCard(
              crossAxiscount: _size.width < 825 ? 2 : 3,
              aspectRatio: _size.width < 825 ? 0.85 : 1.1,
            ),
            mobile: ProductCard(
              crossAxiscount: _size.width < 690 ? 2 : 3,
              aspectRatio: _size.width < 560 ? 0.85 : 0.5,
            ),
          ),

          SizedBox(
            height: 40,
          ),
          buttomBanner(),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.crossAxiscount = 3,
    this.aspectRatio = 0.3,
  }) : super(key: key);
  final int crossAxiscount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxiscount,
        childAspectRatio: aspectRatio,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,

      ),
    itemBuilder: (context, index) => Storse<topplace>(
  press: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen<topplace>(store: topplaces[index]),
      ),
    );
  },
  product: topplaces[index],
),

      itemCount: topplaces.length,
    );
  }
}
