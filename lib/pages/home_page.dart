import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/drawar.dart';
import 'package:flutter_app/widgets/item_widget.dart';

import '../widgets/product_list_Widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");

    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];

    // List<Item> list =
    //     List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    CatalogModel.productsList =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    int days = 10;
    String name = "Tayyab";

    // to Generate Dumy List
    // final dumyList = List.generate(10, (index) => CatalogModel.products[1]);

    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Food Catalog",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.productsList != null ||
                CatalogModel.productsList.isNotEmpty)
            ? productList()
            : Container(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawar(),
    );
  }
}
