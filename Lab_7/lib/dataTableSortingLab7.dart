import 'package:flutter/material.dart';

void main() => runApp(
  const DataTableSortingLab7(),
);

class DataTableSortingLab7 extends StatefulWidget {
  const DataTableSortingLab7({Key? key}) : super(key: key);

  @override
  State<DataTableSortingLab7> createState() => _DataTableSortingLab7State();
}

class _DataTableSortingLab7State extends State<DataTableSortingLab7> {
  bool _sortAscending = true;
  int? _sortColumn;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Data Table Lab"),
        ),

        body: Center(
          child: DataTable(
            sortAscending: _sortAscending,
            sortColumnIndex: _sortColumn,
            columns: <DataColumn>[
              DataColumn(
                onSort: (sortColumnIndex, isAscending) {
                  setState(() {
                    _sortColumn = sortColumnIndex;
                    _sortAscending = isAscending;

                    cars.sort(
                            (a, b) => isAscending
                            ? a.carMake.compareTo(b.carMake)
                            : b.carMake.compareTo(a.carMake)
                    );
                  });
                },
                label: const Text("Car maker"),
              ),
              DataColumn(
                onSort: (sortColumnIndex, isAscending) {
                  setState(() {
                    _sortColumn = sortColumnIndex;
                    _sortAscending = isAscending;

                    cars.sort(
                            (a, b) => isAscending
                            ? a.model.compareTo(b.model)
                            : b.model.compareTo(a.model)
                    );
                  });
                },
                label: const Text("Model"),
              ),
              DataColumn(
                numeric: true,
                onSort: (sortColumnIndex, isAscending) => setState(() {
                  _sortColumn = sortColumnIndex;
                  _sortAscending = isAscending;

                  cars.sort((a, b) => isAscending
                      ? a.price.compareTo(b.price)
                      : b.price.compareTo(a.price)
                  );
                }),
                label: const Text("Price"),
              ),
            ],
            rows: cars.map<DataRow>(
                  (currentCar) => DataRow(
                cells: [
                  DataCell(
                    Text(currentCar.carMake),
                  ),
                  DataCell(
                    Text(currentCar.model),
                  ),
                  DataCell(
                    Text("${currentCar.price}"),
                  ),
                ],
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}

List<Car> cars = List.generate(
    4,
    (index) => Car(
      carMake: "Honda",
      model: "${2010 + index}",
      price: 6000.0 * (index + 1)
    )
);

class Car {
  final String carMake;
  final String model;
  final double price;

  Car({
    required this.carMake,
    required this.model,
    required this.price,
  });
}