import 'package:flutter/material.dart';

class ColorSlectionScreen extends StatefulWidget {
  const ColorSlectionScreen({super.key});

  @override
  State<ColorSlectionScreen> createState() => _ColorSlectionScreenState();
}

class _ColorSlectionScreenState extends State<ColorSlectionScreen> {
  //var selectedColor = Colors.red;

  var list = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.pink,
    Colors.cyan,
    Colors.orange,
    Colors.brown,
    Colors.purple,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.pink,
    Colors.cyan,
    Colors.orange,
    Colors.brown,
    Colors.purple,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.pink,
    Colors.cyan,
    Colors.orange,
    Colors.brown,
    Colors.purple,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            for (int i = 0; i < list.length; i++)
              InkWell(
                onTap: () {
                  selectedIndex = i;
                  setState(() {});
                },
                child: Container(
                  height: selectedIndex == i ? 400 : 250,
                  width: selectedIndex == i ? 400 : 250,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 10,
                          color: Colors.blue,
                          blurRadius: 10,
                        )
                      ],
                      color: list[i],
                      border: Border.all(
                          color: selectedIndex == i
                              ? Colors.black
                              : Colors.transparent,
                          width: 5)),
                  child: Center(
                    child: Text(
                      "Umar Tariq",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
