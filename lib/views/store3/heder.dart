import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:finalpro/views/stores/componants/banner_section.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../constants.dart';
import 'package:finalpro/views/homepage/componant/menu.dart';




class Header2 extends StatelessWidget {
  const Header2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Row(
      children: [
   

        if (!Responsive.isDesktop(context))
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu))),

        Text(
          "Wheels Well",
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
              color: kSecondaryColor),
        ),
        Spacer(),
        //menu
        if (Responsive.isDesktop(context)) HeaderWebMenu(),
        Spacer(),


      ],
    );
  }
}


class BannerSection3 extends StatelessWidget {
  const BannerSection3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: AboutSection(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: Column(
            
          ),
        )
      ],
    );
  }
}

class MobBanner2 extends StatefulWidget {
  const MobBanner2({Key? key}) : super(key: key);

  @override
  _MobBannerState createState() => _MobBannerState();
}

class _MobBannerState extends State<MobBanner2> {
  @override
  Widget build(BuildContext context) {
    
    return Column(
      
      children: [
      
        AboutSection(),
      ],
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.withOpacity(0.3)),
          ),
          child: TextFormField(
            decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.adjust_rounded,
                  color: kSecondaryColor,
                ),
                hintText: "ابحث عن المتاجر",
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      
      ],
    );
  }
}

class HeaderContainer3 extends StatelessWidget {
  const HeaderContainer3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Positioned(
          top: 50,
           bottom: 400,
            right: 5,
            left: 5,
         child: Lottie.asset(
            'assets/images/image.json',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(kPadding),
                constraints: BoxConstraints(maxWidth: kMaxWidth),
                child: Column(
                  children: [
                    Header2(),
                    SizedBox(
                      height: 20,
                    ),
                    Responsive.isDesktop(context)
                        ? BannerSection2()
                        : MobBanner2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
