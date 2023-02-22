class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Iphone 13",
        desc: "Apple Iphone 12th Generation",
        price: 1000,
        color: "#E0E0E0",
        imageUrl:
            "https://ivenus.in/wp-content/uploads/2021/09/iphone-13-pink-select-2021-458x542.png"),
  ];
}

class Item {
  final num id;
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
