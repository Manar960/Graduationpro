import 'package:flutter/material.dart';

class carpice {
  final String image, title,city,description;
  final int id;

  carpice({
    required this.id,
    required this.image,
    required this.title,
    required this.city,
    required this.description,


  });
}
 
List<carpice> carpices = [
  carpice(
    id: 1,
    title: "هلا بتول",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/halacar.jpg",
    
  ),
  carpice(
    id: 2,
    title: "معين",
    city:"رام الله",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/معين.jpg",
    
  ),
  carpice(

    id: 3,
    title: "أوتو كار",
    city:"القدس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/autocar.jpg",
   
  ),
  carpice(
    id: 4,
    title: "عنتر",
    city:"الخليل",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image:
        "assets/images/anter.jpg",
        
  ),
  carpice(
    id: 5,
    title: "السويدي",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/السويدي.jpg",
  ),
 
];
