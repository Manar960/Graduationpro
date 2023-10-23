class Chat {
  final String name, descrptions, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.descrptions = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Jenny Wilson",
    descrptions: "شركة هلا كار",
    image: "assets/images/halacar.jpg",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Esther Howard",
    descrptions: "شركة هلا كار",
    image: "assets/images/halacar.jpg",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Ralph Edwards",
    descrptions: "شركة معين",
    image: "assets/images/معين.jpg",
    time: "5d ago",
    isActive: false,
  ),
  Chat(
    name: "Jacob Jones",
    descrptions: "شركة هلا كار",
    image: "assets/images/معين.jpg",
    time: "5d ago",
    isActive: true,
  ),
  Chat(
    name: "Albert Flores",
    descrptions: "شركة منار",
    image: "assets/images/معين.jpg",
    time: "6d ago",
    isActive: false,
  ),
  Chat(
    name: "Jenny Wilson",
    descrptions: "شركة القدس",
    image: "assets/images/معين.jpg",
    time: "3m ago",
    isActive: false,
  ),

];