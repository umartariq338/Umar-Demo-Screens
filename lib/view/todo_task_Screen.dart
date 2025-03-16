import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoUmarTaskScreen extends StatefulWidget {
  const TodoUmarTaskScreen({super.key});

  @override
  State<TodoUmarTaskScreen> createState() => _TodoUmarTaskScreenState();
}

class _TodoUmarTaskScreenState extends State<TodoUmarTaskScreen> {
  List todoUmarList = [];

  var controller = TextEditingController();

  Future<void> _showUmarDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Do You Want to Delet?',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are You sure you want to Clear Umar Counter Screen?'),
              ],
            ),
          ),
          actions: <Widget>[
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancal"),
            ),
            MaterialButton(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                setState(() {});
                todoUmarList.clear();
                Navigator.pop(context);
              },
              child: Text(
                "Delet",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    //getUmarTodo();
  }

  List UmarTodoList = [];

  addUmarTodo() async {
    UmarTodoList.add(controller.text);
    controller.clear();

    var pref = await SharedPreferences.getInstance();
    pref.setString("UmarTodo", jsonEncode(UmarTodoList));
    setState(() {});
  }

  getUmarTodo() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString(
      "UmarTodo",
    );
    if (data != null) {
      UmarTodoList = jsonDecode(data);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lightBlue,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF701ebd),
              Color(0xFF873bcc),
              Color(0xFFfe4a97),
              Color(0xFFe17763),
              Color(0xFF68998c),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                Text(
                  "Todo Umar App",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 100,
                ),
                if (todoUmarList.isNotEmpty)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          _showUmarDialog();
                        },
                        child: Icon(
                          Icons.clear,
                          color: Colors.white,
                        ),
                        height: 60,
                        minWidth: 60,
                        color: Colors.red,
                      )
                    ],
                  ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextField(
                      onSubmitted: (c) {
                        //addUmarTodo();
                      },
                      controller: controller,
                      decoration: InputDecoration(
                          hintText: "Enter Your Text",
                          border: OutlineInputBorder()),
                    )),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      onPressed: () {
                        //addUmarTodo();
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      height: 60,
                      minWidth: 60,
                      color: Colors.green,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                todoUmarList.isEmpty
                    ? Text(
                        "No Text Added",
                        style: TextStyle(fontSize: 30),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: todoUmarList.length,
                        itemBuilder: (context, Index) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(child: Text(todoUmarList[Index])),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setState(() {});
                                        todoUmarList.removeAt(Index);
                                      },
                                      child: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      height: 40,
                                      minWidth: 40,
                                      color: Colors.yellow,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade300),
                          );
                        },
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
