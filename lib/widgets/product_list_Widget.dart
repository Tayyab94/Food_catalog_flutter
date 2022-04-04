import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/catalog.dart';

class productList extends StatelessWidget {
  const productList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 16.0, mainAxisSpacing: 16.0),
      itemBuilder: (context, index) {
        final item = CatalogModel.productsList[index];
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: GridTile(
                child: Image.network(item.image),
                header: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  child: Text(
                    item.name,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                footer: Text(item.price.toString()),
              )),
        );
      },
      itemCount: CatalogModel.productsList.length,
    );
  }
}
