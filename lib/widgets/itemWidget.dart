import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item}) : assert(item != null);
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.deepPurple,
      //shape: StadiumBorder(),
      elevation: 10,
      child: ListTile(
        onTap: () {
          print(item.name);
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
