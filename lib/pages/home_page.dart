import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 10;
    String name = "Tayyab";
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Catalog"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $name this is Your Day=> $days "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
