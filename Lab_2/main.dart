import 'dart:io';

void main(List<String> arguments)
{
  print("=" * 30);
  print('Pizza Prices:\n\tSmall\t: \$5 USD\n\tMedium\t: \$7 USD\n\tLarge\t: \$10 USD');
  print("=" * 30);

  print("Please enter your pizza size:");
  var pizzaSize = stdin.readLineSync()?.toLowerCase();

  print("How many $pizzaSize pizzas do you want?");
  var qty = int.tryParse(stdin.readLineSync() ?? '');

  while(qty == null) {
    print("Invalid quantity, please, How many $pizzaSize pizzas do you want?");
    qty = int.tryParse(stdin.readLineSync() ?? '');
  }

  var price = 0.0;
  var total = 0.0;

  if (pizzaSize == "small") {
    price = 5;
    total = price * qty;
  } else if (pizzaSize == "medium") {
    price = 7;
    total = price * qty;
  } else if (pizzaSize == "large") {
    price = 10;
    total = price * qty;
  } else {
    throw 'Invalid pizza size input. Please run this program again!!!';
  }

  print("Your total payment is: $total");
}