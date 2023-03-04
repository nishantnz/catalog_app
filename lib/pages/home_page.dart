import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/itemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    /*for the progress bar to show
    basically in the video he said that CatalogModel.items.length is null at the start
    so to see that
    */
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var itemsCatalog = CatalogModel.items;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Catalog App",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: itemsCatalog.isNotEmpty
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 17,
                      crossAxisSpacing: 17,
                      crossAxisCount: 2),
                  itemBuilder: ((context, index) {
                    var item = CatalogModel.items[index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      //elevation: 20,
                      child: GridTile(
                        header: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                          child: Text(
                            item.name,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        footer: Text(item.desc),
                        //!you can add gapless playback here afterwards
                        child: Image.network(item.image),
                      ),
                    );
                  }),
                  itemCount: CatalogModel.items.length,
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}
