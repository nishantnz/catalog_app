class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;
  //by using {} we can create named construtor
  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageUrl});
}

final prdts = [
  Item(
      id: "1",
      name: "Iphone",
      desc: "Apple Iphone 12th Generation",
      price: 1000,
      color: "#34243",
      imageUrl:
          "https://www.google.com/imgres?imgurl=https%3A%2F%2Fitronics.in%2Fwp-content%2Fuploads%2F2021%2F09%2Fiphone-13-pink-select-2021.png&imgrefurl=https%3A%2F%2Fitronics.in%2Fiphone%2Fiphone-13%2F&tbnid=DI1piENG4x_EXM&vet=12ahUKEwj3tN3nxaT9AhWA43MBHX65BW0QMygAegUIARC5Ag..i&docid=3PEZxJ_q1hWNyM&w=470&h=556&q=iphone&ved=2ahUKEwj3tN3nxaT9AhWA43MBHX65BW0QMygAegUIARC5Ag")
];
