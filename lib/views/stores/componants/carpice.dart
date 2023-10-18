import 'package:finalpro/views/homepage/componant/body.dart';
import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:flutter/material.dart';

class carpice5 extends StatelessWidget {
  const carpice5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Responsive(
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
    );
  }
}
