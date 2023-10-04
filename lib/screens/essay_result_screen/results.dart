import 'package:ai_virtual_classroom/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  List<String> myList = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    myList = await authController.getListFromPrefs();
    print(myList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text('My List:'),
          for (String item in myList) Text(item),
        ],
      )),
    );
  }
}
