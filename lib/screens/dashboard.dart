import 'package:ai_virtual_classroom/screens/fragments/student_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedPage = 0;
  static final List<Widget> pages = <Widget>[
    StudentHomePage(),
    const Text("Payment"),
    const Text("Features"),
  ];

  void onPageClicked(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: pages[selectedPage],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(0, 232, 173, 35),
          elevation: 0,
          currentIndex: selectedPage,
          onTap: onPageClicked,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.5),
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(0, 232, 173, 35),
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.payment),
                activeIcon: Icon(Icons.payment),
                label: "Payment"),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                activeIcon: Icon(Icons.dashboard),
                label: "Features"),
          ],
        ));
  }
}
