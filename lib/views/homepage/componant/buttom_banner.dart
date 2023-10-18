import 'package:auto_size_text/auto_size_text.dart';
import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class buttomBanner extends StatelessWidget {
  const buttomBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "assets/images/car7.png",
                 height: Responsive.isDesktop(context)
                        ? 200 // Adjust the desktop image height as needed
                        : 100, // Adjust the mobile and tablet image height as needed
                    width: Responsive.isDesktop(context)
                        ? 1230 // Adjust the desktop image width as needed
                        : 500,
              fit: BoxFit.cover,
            )),
       
       
      ],
    );
  }
}
