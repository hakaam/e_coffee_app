class CoffeeModel {
  final String text;
  final String image;

  CoffeeModel({required this.text, required this.image});
}

List<CoffeeModel> cofeeItems = [
  CoffeeModel(
    text: 'Americano',
    image: 'images/amer.PNG',
  ),
  CoffeeModel(
    text: 'Cappuccino',
    image: 'images/ccc.PNG',
  ),
  CoffeeModel(
    text: 'Mocha',
    image: 'images/mocha.PNG',
  ),
  CoffeeModel(
    text: 'Flat White',
    image: 'images/flat.PNG',
  ),
];