
class carplace {
  final String image, title,city,description;
  final int id;
  
 

  carplace( {
    required this.id,
    required this.image,
    required this.title,
    required this.city,
    required this.description,
  

  });
}

List<carplace> carplaces = [
  carplace(
    id: 1,
    title: "هلا منار",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/halacar.jpg",
    
  ),
  carplace(
    id: 2,
    title: "معين",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/معين.jpg",
    
  ),
  carplace(

    id: 3,
    title: "أوتو كار",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image: "assets/images/autocar.jpg",
    
  ),
  carplace(
    id: 4,
    title: "عنتر",
    city:"نابلس",
    description:"أهلا وسهلا بك في متجرنا\nنقوم بتوفير قطع  غيار السيارات ومتطلباتها\nالعنوان:نابلس-شارع عمان\nرقم الهاتف:0568386140",
    image:
        "assets/images/anter.jpg",
        
  ),
  

 
];
