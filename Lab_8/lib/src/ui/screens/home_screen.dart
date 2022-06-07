import 'package:flutter/material.dart';

import 'screens.dart';

class HomeScreen extends StatefulWidget {
  static const String screenName = "/home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime checkInDate = DateTime.now();
  DateTime checkOutDate = DateTime.now().add(
    const Duration(days: 7),
  );

  int adults = 1;
  int childrens = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Android ATC Hotel",
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: OverflowBar(
          alignment: MainAxisAlignment.center,
          overflowDirection: VerticalDirection.down,
          overflowAlignment: OverflowBarAlignment.center,
          overflowSpacing: 16.0,
          children: [
            Image.asset(
              "assets/entrance.jpg",
              alignment: Alignment.topCenter,
            ),

            CheckDateWidget(
              text: "Check-in Date",
              date: checkInDate,
              onChangeDate: (dateTime) => setState(() {
                checkInDate = dateTime;
              }),
            ),
            CheckDateWidget(
              text: "Check-out Date",
              date: checkOutDate,
              onChangeDate: (dateTime) => setState(() {
                checkOutDate = dateTime;
              }),
            ),

            PersonCount(
              personTypeName: "Adults",
              personCount: adults,
              onChangePersonCount: (newCount) => setState(() {
                adults = newCount.toInt();
              }),
            ),
            PersonCount(
              personTypeName: "Childrens",
              personCount: childrens,
              onChangePersonCount: (newCount) => setState(() {
                childrens = newCount.toInt();
              }),
            ),

            CheckboxGroup(
              groupTitle: "Extras: ",
              buttonsLabel: const <String>[
                "Breakfast (10 USD/Day)",
                "Internet WiFi (5 USD/Day)",
                "Parking (5 USD/Day)",
                "Swimming Pool (10x USD/Day)",
              ],
              onChanged: (value) {},
            ),
            RadioGroup(
              groupTitle: "View: ",
              buttonsLabel: const <String>[
                "City View",
                "Sea View",
              ],
              onChanged: (selectedRadio) {},
              selectedRadio: null,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RoomsScreen.screenName);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                textStyle: MaterialStateProperty.all(const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )),
              ),
              child: const Text(
                "Check Rooms and Rates",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

abstract class ButtonsGroup<T extends Widget> extends StatelessWidget {
  final String groupTitle;
  final List<String> buttonsLabel;

  const ButtonsGroup({
    Key? key,
    required this.groupTitle,
    required this.buttonsLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          groupTitle,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
        ...renderLabels(),
      ],
    );
  }

  List<T> renderLabels();
}

class CheckboxGroup extends ButtonsGroup<CheckboxListTile> {
  final void Function(bool? selectedRadio) onChanged;

  const CheckboxGroup({
    super.key,
    required super.groupTitle,
    required super.buttonsLabel,
    required this.onChanged,
  });

  @override
  List<CheckboxListTile> renderLabels() {
    return buttonsLabel
        .map<CheckboxListTile>(
          (label) => CheckboxListTile(
            title: Text(
              label,
            ),
            controlAffinity: ListTileControlAffinity.leading,
            value: false,
            onChanged: onChanged,
          ),
        )
        .toList();
  }
}

class RadioGroup extends ButtonsGroup<RadioListTile> {
  final void Function(int? selectedRadio) onChanged;
  final int? selectedRadio;

  const RadioGroup({
    super.key,
    required super.groupTitle,
    required super.buttonsLabel,
    required this.onChanged,
    required this.selectedRadio,
  });

  @override
  List<RadioListTile> renderLabels() {
    return buttonsLabel
        .map<RadioListTile>(
          (label) => RadioListTile<int>(
            title: Text(
              label,
            ),
            controlAffinity: ListTileControlAffinity.leading,
            value: buttonsLabel.indexOf(label),
            onChanged: onChanged,
            groupValue: selectedRadio,
          ),
        )
        .toList();
  }
}

class CheckDateWidget extends StatelessWidget {
  final String text;
  final DateTime date;
  final void Function(DateTime result) onChangeDate;

  const CheckDateWidget(
      {Key? key,
      required this.text,
      required this.date,
      required this.onChangeDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
              style: const TextStyle(
                fontSize: 20,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
              text: "$text: ",
              children: [
                TextSpan(
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                  text: date.isNull
                      ? ""
                      : "${date.day.toString().padLeft(2, "0")} - ${date.month.toString().padLeft(2, "0")} - ${date.year} ",
                ),
              ]),
        ),
        IconButton(
          icon: const Icon(
            Icons.date_range,
            color: Colors.orange,
          ),
          onPressed: () async {
            final result = await showDatePicker(
                context: context,
                initialDate: date,
                firstDate: DateTime.now(),
                lastDate: DateTime(DateTime.now().year + 1));

            if (result == null || result == date) return;

            onChangeDate(result);
          },
        ),
      ],
    );
  }
}

class PersonCount extends StatelessWidget {
  final String personTypeName;
  final int personCount;
  final void Function(double newCount) onChangePersonCount;

  const PersonCount({
    Key? key,
    required this.personTypeName,
    required this.personCount,
    required this.onChangePersonCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 20,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
            text: "$personTypeName: ",
            children: [
              TextSpan(
                text: "$personCount",
              )
            ],
          ),
        ),
        Expanded(
          child: Slider(
            min: 1,
            max: 6,
            divisions: 6,
            value: personCount.toDouble(),
            onChanged: onChangePersonCount,
          ),
        ),
      ],
    );
  }
}

extension Nullable on Object? {
  bool get isNull => this == null;
}
