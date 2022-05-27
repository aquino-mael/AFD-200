import 'package:flutter/material.dart';

void main() => runApp(
  const BottomNavigationBarLab7(),
);

class BottomNavigationBarLab7 extends StatefulWidget {
  const BottomNavigationBarLab7({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarLab7> createState() => _BottomNavigationBarLab7State();
}

class _BottomNavigationBarLab7State extends State<BottomNavigationBarLab7> {

  final _tabs = const [
    HomeScreen(),
    AlarmScreen(),
    BusinessScreen(),
    SchoolScreen(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Bottom Navigation Bar",
          ),
        ),

        body: _tabs[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          iconSize: 30,
          selectedFontSize: 19.0,
          unselectedFontSize: 14.0,
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.access_alarm,
              ),
              label: "Alarm",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
              ),
              label: "Business",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
              ),
              label: "School",
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home"),
    );
  }
}

class AlarmScreen extends StatelessWidget {
  const AlarmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Alarm"),
    );
  }
}

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Business"),
    );
  }
}

class SchoolScreen extends StatelessWidget {
  const SchoolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("School"),
    );
  }
}
