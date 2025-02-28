import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  var menu = ["Biryani", "chicken Korma", "Sallaad", "Caster", "Soap"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                menu[index],
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            );
          }),
    );
  }
}
