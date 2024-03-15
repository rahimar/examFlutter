class Fruit {
  String name;
  String color;
  double price;

  Fruit(this.name, this.color, this.price);

  @override
  String toString() {
    return 'Name: $name, Color: $color, Price: \$${price.toStringAsFixed(2)}';
  }


}

void main() {
  // Creating a list of fruits


  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 1.99},
    {'name': 'Banana', 'color': 'Yellow', 'price': 0.79},
    {'name': 'Orange', 'color': 'Orange', 'price': 0.99},

  ];

  // Printing the list of fruits
  print('List of Fruits:');
  fruits.forEach((fruit) => print(fruit));


  void displayFruitDetails(List<Map<String, dynamic>> fruits) {
    print('Fruit Details:');
    fruits.forEach((fruit) {
      print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price'].toStringAsFixed(2)}');
    });
  }

  displayFruitDetails(fruits);



  void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
    for (var fruit in fruits) {
      double originalPrice = fruit['price'];
      double discountedPrice = originalPrice - (originalPrice * (discountPercentage / 100));
      fruit['price'] = discountedPrice;
    }
  }

  double discountPercentage = 10.0; // 10% discount

  

  applyPriceDiscount(fruits, discountPercentage);

  print('\nAfter applying ${discountPercentage}% discount:');
  displayFruitDetails(fruits);
}

