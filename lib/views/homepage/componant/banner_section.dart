import 'package:auto_size_text/auto_size_text.dart';
import 'package:finalpro/views/chating/chats/chatsscreen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
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
            children: [
              Image.asset("assets/images/carr.png"),
            ],
          ),
        )
      ],
    );
  }
}

class MobBanner extends StatefulWidget {
  const MobBanner({Key? key}) : super(key: key);

  @override
  _MobBannerState createState() => _MobBannerState();
}

class _MobBannerState extends State<MobBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Image.asset(
              "assets/images/carr.png",
              height: 250,
              width: 400,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const AboutSection(),
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
        // ignore: prefer_const_constructors
        //it will adjust its size according to screeen
        const AutoSizeText(
          "خيارك الافضل لدينا",
          maxLines: 1,
          style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
        ),
     
       
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.withOpacity(0.3)),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
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
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                height: 55,
                color: kSecondaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatsScreen(),
                    ),
                  );
                },

                child: const Text(
                  "تواصل مع الخبراء",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
   
          ],
        )
      ],
    );
  }
}
