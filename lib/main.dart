import 'package:containers/view/counter_screen.dart';
import 'package:containers/view/instagram_homepage.dart';
import 'package:containers/view/instagram_loginpage.dart';
import 'package:containers/view/instagram_signuppage.dart';
import 'package:containers/view/listView_demo.dart';
import 'package:containers/view/listview_screen.dart';
import 'package:containers/view/todo_task_Screen.dart';
//import 'package:containers/umarwb_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(UmarWhattsappScreen());
}

class UmarWhattsappScreen extends StatelessWidget {
  const UmarWhattsappScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: UmarwbScreen(),
      //home: ListViewScreen(),
      //home: ListViewDemo(),
      //home: InstagramLogin(),
      home: InstagramSignuppage(),
      //home: InstagramHomePage(),
      //home: ColorSlectionScreen(),
      //home: TodoUmarTaskScreen(),
      //home: CounterScreen(),
    );
  }
}
