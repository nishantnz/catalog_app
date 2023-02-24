class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  //by using {} we can create named construtor
  Item(
      {required this.id,
      this.name = "",
      this.desc = "",
      this.price = 0,
      this.color = "",
      this.image = ""});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
}
