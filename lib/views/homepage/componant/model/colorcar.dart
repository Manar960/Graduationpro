import 'package:flutter/material.dart';

class carcolor {
  final String image, title,city,description;
  final int id;

  carcolor({
    required this.id,
    required this.image,
    required this.title,
    required this.city,
    required this.description

  });
}

List<carcolor> carcolors = [
  carcolor(
    id: 1,
    title: "هلا منار",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/halacar.jpg",
  ),
  carcolor(
    id: 2,
    title: "معين",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/معين.jpg",
  ),
  carcolor(

    id: 3,
    title: "أوتو كار",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/autocar.jpg",
  ),
  carcolor(
    id: 4,
    title: "عنتر",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image:
    "assets/images/anter.jpg",
  ),
  carcolor(
    id: 5,
    title: "السويدي",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/السويدي.jpg",
  ),


];
