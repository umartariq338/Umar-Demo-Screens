import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  addCount() async {
    count = count + 2;

    var umar = await SharedPreferences.getInstance();
    umar.setInt("count", count);
    setState(() {});
  }

  getCount() async {
    var umar = await SharedPreferences.getInstance();
    var data = umar.getInt("count");
    if (data != null) {
      count = data;
      setState(() {});
    }
  }

  MinusCount() async {
    count = count - 2;

    var umar = await SharedPreferences.getInstance();
    umar.setInt("count", count);
    setState(() {});
  }

  SubtractCount() async {
    var umar = await SharedPreferences.getInstance();
    var data = umar.getInt("count");
    if (data != null) {
      count = data;
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();

    getCount();
  }

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
                // CounterScreen.clear();
                setState(() {});
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: count > 10 ? Colors.brown : Colors.cyan,
      floatingActionButton: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                backgroundColor: Colors.yellow,
                onPressed: () async {
                  addCount();
                },
              ),
              Lottie.asset(
                'images/TimeCounter.json',
                height: 220,
              ),
              FloatingActionButton(
                  child: Icon(Icons.remove),
                  backgroundColor: Colors.green,
                  onPressed: () async {
                    MinusCount();
                  }),
            ],
          ),
          Spacer(),
          FloatingActionButton(
            child: Icon(Icons.clear),
            backgroundColor: Colors.red,
            onPressed: () {
              _showUmarDialog();
              //CounterScreen.clear();
              //setState(() {});
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(
              fontSize: count > 10 ? 500 : 200,
              color: (count > 10) ? Colors.green : Colors.black),
        ),
      ),
    );
  }
}
