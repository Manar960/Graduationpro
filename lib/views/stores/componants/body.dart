
import 'package:finalpro/views/stores/componants/catecury.dart';
import 'package:flutter/material.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
final Size _size = MediaQuery.of(context).size;    // it enable scrolling on small device
    return SingleChildScrollView(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         Categories(),
       
             SizedBox(
          height: 20,
        ),
     

     
        ],
      ),
    );
  }
}
