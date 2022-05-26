import 'myLib.dart';

double? extraPerHr;

void main() {
  var william = new Employee('Manager', "Brazil", 5000, 7);

  if(william.salary >=4000) {
    extraPerHr = 10;
  } else {
    extraPerHr = 20;
  }

  double totalSalary = william.salary + (william.overtimeHr * extraPerHr!);

  print("Total salary = \$$totalSalary USD");
}

