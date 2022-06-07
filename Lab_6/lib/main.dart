import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(
  const Lab6(),
);

class Lab6 extends StatelessWidget {
  const Lab6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepOrangeAccent,
        ),
        primaryColor: Colors.deepOrangeAccent,
      ),
      home: const Home(),
      routes: {
        "0": (context) => Vpizza(),
        "1": (context) => Chpizza(),
        "2": (context) => Fries(),
        "3": (context) => Twitter(),
        "4": (context) => Facebook(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WOW Pizza"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "3");
            },
            icon: Image.asset("assets/twitter.png"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "4");
            },
            icon: Image.asset("assets/facebook.png"),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                CustomOutlinedButton(
                  child: const Text(
                    "Vegetable Pizza",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "0");
                  },
                ),
                CustomOutlinedButton(
                  child: const Text(
                    "Cheese Pizza",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "1");
                  },
                ),
                CustomOutlinedButton(
                  child: const Text(
                    "Fries",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "2");
                  },
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/meal.jpg",
                    height: 300,
                    width: 400,
                  ),
                  const Text(
                    "Hi, I'm the Pizza Assistant, what can I help you order?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

class Vpizza extends StatelessWidget {
  const Vpizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WOW Pizza"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "3");
            },
            icon: Image.asset("assets/twitter.png"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "4");
            },
            icon: Image.asset("assets/facebook.png"),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                CustomOutlinedButton(
                  child: const Text(
                    "Vegetable Pizza",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "0");
                  },
                ),
                CustomOutlinedButton(
                  child: const Text(
                    "Cheese Pizza",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "1");
                  },
                ),
                CustomOutlinedButton(
                  child: const Text(
                    "Fries",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "2");
                  },
                ),
              ],
            ),
            Center(
              child: Image.asset(
                "assets/Vpizza.png",
                height: 300,
                width: 400,
              )
            ),
          ],
        ),
      ),
    );
  }
}

class Chpizza extends StatelessWidget {
  const Chpizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WOW Pizza"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "3");
            },
            icon: Image.asset("assets/twitter.png"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "4");
            },
            icon: Image.asset("assets/facebook.png"),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                CustomOutlinedButton(
                  child: const Text(
                    "Vegetable Pizza",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "0");
                  },
                ),
                CustomOutlinedButton(
                  child: const Text(
                    "Cheese Pizza",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "1");
                  },
                ),
                CustomOutlinedButton(
                  child: const Text(
                    "Fries",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "2");
                  },
                ),
              ],
            ),
            Center(
              child: Image.asset(
                "assets/cheesepizza.png",
                height: 300,
                width: 400,
              )
            ),
          ],
        ),
      ),
    );
  }
}

class Fries extends StatelessWidget {
  const Fries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WOW Pizza"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "3");
            },
            icon: Image.asset("assets/twitter.png"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "4");
            },
            icon: Image.asset("assets/facebook.png"),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                CustomOutlinedButton(
                  child: const Text(
                    "Vegetable Pizza",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "0");
                  },
                ),
                CustomOutlinedButton(
                  child: const Text(
                    "Cheese Pizza",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "1");
                  },
                ),
                CustomOutlinedButton(
                  child: const Text(
                    "Fries",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "2");
                  },
                ),
              ],
            ),
            Center(
              child: Image.asset(
                "assets/Fpizza.png",
                height: 300,
                width: 400,
              )
            ),
          ],
        ),
      ),
    );
  }
}

class Twitter extends StatelessWidget {
  const Twitter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WOW Pizza"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/twitter.png"),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "4");
            },
            icon: Image.asset("assets/facebook.png"),
          ),
        ],
      ),
      body: WebView(
        initialUrl: "https://www.twitter.com",
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}

class Facebook extends StatelessWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WOW Pizza"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "3");
            },
            icon: Image.asset("assets/twitter.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/facebook.png"),
          ),
        ],
      ),
      body: WebView(
        initialUrl: "https://www.facebook.com",
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;

  CustomOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  final ButtonStyle _style = ButtonStyle(
    overlayColor: MaterialStateProperty.all(
      Colors.red[300],
    ),
    foregroundColor: MaterialStateProperty.all(
      Colors.orange,
    ),
    shape: MaterialStateProperty.all(
      const StadiumBorder(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: _style,
      onPressed: onPressed,
      child: child,
    );
  }
}

