import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 1500,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: index % 13 == 0
                            ? Colors.lightBlue
                            : index % 2 == 0
                                ? Colors.orange
                                : Colors.yellow,
                        width: 10),
                    image: DecorationImage(
                        image: AssetImage("pic3.jpeg"), fit: BoxFit.cover)),
                height: 150,
                width: 150,
                child: Center(
                  child: Text(
                    "Umar $index",
                    style: TextStyle(
                        fontSize: 50,
                        color: index == 1500 || index == 0
                            ? Colors.brown
                            : Colors.blueGrey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          }
          //Text("Umar", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

          ),
    );
  }
}
