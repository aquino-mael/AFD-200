import 'package:flutter/material.dart';

class NewItem {
  bool isExpanded;
  final Widget header;
  final String selection;
  final String body;

  NewItem({
    this.isExpanded = false,
    required this.header,
    required this.selection,
    required this.body,
  });
}

class RoomsScreen extends StatefulWidget {
  static const String screenName = "/rooms_screen";

  const RoomsScreen({Key? key}) : super(key: key);

  @override
  State<RoomsScreen> createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {
  List<NewItem> items = <NewItem>[
    NewItem(
      header: Image.asset(
        "assets/1bed.jpg",
        width: 200,
        height: 100,
      ),
      selection: "King Room",
      body: "A room with a king-sized bed.",
    ),
    NewItem(
      header: Image.asset(
        "assets/2beds.jpg",
        width: 200,
        height: 100,
      ),
      selection: "Double Room",
      body: "A room assigned to two people.",
    ),
    NewItem(
      header: Image.asset(
        "assets/3beds.jpg",
        width: 200,
        height: 100,
      ),
      selection: "Family Room",
      body: "A room assigned to three or four people.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Rooms List",
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        physics: const BouncingScrollPhysics(),
        child: ExpansionPanelList(
          expansionCallback: ((index, isExpanded) {
            setState(() {
              items[index].isExpanded = !items[index].isExpanded;
            });
          }),
          children: items.map<ExpansionPanel>((item) {
            return ExpansionPanel(
              canTapOnHeader: true,
              isExpanded: item.isExpanded,
              headerBuilder: (context, expanded) {
                return ListTile(
                  leading: item.header,
                  title: Text(
                    item.selection,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                );
              },
              body: Text(
                item.body,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            );
          }).toList(),
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange)
          ),
          onPressed: () {},
          child: const Text(
            "Next",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
