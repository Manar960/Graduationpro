  import 'package:finalpro/views/homepage/componant/model/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class emailform extends StatelessWidget {
  const emailform({
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
            decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.person,
                  color: kSecondaryColor,
                ),
                hintText: "ادخل اسمك",
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.withOpacity(0.3)),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.email,
                  color: kSecondaryColor,
                ),
                hintText: "الايميل",
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
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
                  Icons.subject,
                  color: kSecondaryColor,
                ),
                hintText: "الموضوع",
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
    
      ],
    );
  }
}
