import 'dart:math';

double _doubleInRange(Random source, num start, num end) {
  return source.nextDouble() * (end - start) + start;
}

class Coffee {
  String name;
  String image;
  double price;
  Coffee({
    required this.name,
    required this.image,
    required this.price,
  });
}

final _names = [
  'Caramel Cold Drink',
  'Iced  Coffee',
  'Peccan Latte',
  'Capuchina',
  'Americano'
];

List<Coffee> generateRandomCoffees() {
  final random = Random();
  return List.generate(
    _names.length,
    (index) => Coffee(
      name: _names[index],
      image: "assets/${index + 1}.png",
      price: _doubleInRange(random, 3, 7),
    ),
  );
}


