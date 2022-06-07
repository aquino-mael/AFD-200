import 'package:flutter/material.dart';

import 'ui/screens/screens.dart';

class Lab8 extends StatelessWidget {
  const Lab8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),

      routes: {
        HomeScreen.screenName: (context) => const HomeScreen(),
        RoomsScreen.screenName: (context) => const RoomsScreen(),
      },
    );
  }
}
