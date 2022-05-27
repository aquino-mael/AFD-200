import 'package:flutter/material.dart';

void main() => runApp(const Lab5());

class Lab5 extends StatelessWidget {
  const Lab5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Android ATC Pizza Place",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            PizzaCard(
              image: NetworkImage(
                "https://www.simplyrecipes.com/thmb/VguL9lzK0kaemIt0esv9KLanb3I=/648x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Vegetarian-Pizza-LEAD-2-090a64ecfa0043f8bca06cc87ce910af.jpg",
              ),
              pizzaName: "Vegetable Pizza",
            ),
            SizedBox(
              height: 16.0,
            ),
            PizzaCard(
              image: NetworkImage(
                "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2022%2F02%2F15%2Fclassic-cheese-pizza-FT-RECIPE0422.jpg",
              ),
              pizzaName: "Cheese Pizza",
            ),
            SizedBox(
              height: 16.0,
            ),
            PizzaCard(
              image: NetworkImage(
                "https://thumbs.dreamstime.com/b/batatas-fritas-em-uma-caixa-amarela-isolada-no-fundo-branco-141638257.jpg",
              ),
              pizzaName: "Box Of Fries",
            ),
          ],
        ),
      ),
    );
  }
}

class PizzaCard extends StatelessWidget {
  final ImageProvider image;
  final String pizzaName;

  const PizzaCard({
    Key? key,
    required this.image,
    required this.pizzaName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image(image: image),
            ),
            Text(
              pizzaName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 20.0
              ),
            ),
          ],
        ),
      ),
    );
  }
}

