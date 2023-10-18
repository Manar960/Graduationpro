import 'package:flutter/material.dart';

class cars {
  final String image, title,city,description;
  final int id;

  cars({
    required this.id,
    required this.image,
    required this.title,
    required this.city,
    required this.description,

  });
}

List<cars> cares = [
  cars(
    id: 1,
    title: "هلا عبير",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/m1.jpeg",

  ),
  cars(
    id: 2,
    title: "معين",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/m2.jpeg",

  ),
  cars(

    id: 3,
    title: "أوتو كار",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/m3.jpeg",

  ),
  cars(
    id: 4,
    title: "عنتر",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image:
    "assets/images/m4.jpg",

  ),
  cars(
    id: 5,
    title: "السويدي",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/m5.jpg",
  
  ),
 

];
