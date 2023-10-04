import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  List<String> myList = [];
  String _savedResult = '';

  @override
  void initState() {
    super.initState();
    loadData();
    getResult();
  }

  Future<void> loadData() async {
    myList = await authController.getListFromPrefs();
    print(myList);
  }

  void getResult() async {
    String result = await authController.getResult();
    setState(() {
      _savedResult = result;
    });
    print("Res $result");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Result:',
          style: theme.textTheme.bodyLarge?.copyWith(fontSize: 20.fSize),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          for (String item in myList) Text(item),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(_savedResult),
          )
        ],
      )),
    );
  }
}
