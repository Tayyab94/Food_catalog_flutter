import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/drawar.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 10;
    String name = "Tayyab";
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
      body: Center(
        child: Container(
          child: Text("Welcome $name this is Your Day=> $days "),
        ),
      ),
      drawer: MyDrawar(),
    );
  }
}
