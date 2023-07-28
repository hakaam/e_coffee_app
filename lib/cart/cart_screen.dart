import 'package:cofee_shop_ui/models/cofee_model.dart';
import 'package:cofee_shop_ui/cart/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CoffeeeModel> cartItems = [
    CoffeeeModel('americano', 'images/americano.jpg', '\$3.00'),
    CoffeeeModel('Cappuccino', 'images/ccc.PNG', '\$3.00'),
    CoffeeeModel('Mocha', 'images/mocha.PNG', '\$3.00'),
    CoffeeeModel('Flat White', 'images/flat.PNG', '\$3.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: IconButton(
                        onPressed: () {
                          // Implement logic for back button
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Color(0xff324A59),
                      ),
                    ),
                    Text(
                      'My Cart',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff324A59),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        key: Key(cartItems[index].name),
                        direction: DismissDirection.horizontal,
                        onDismissed: (direction) {
                          setState(() {
                            cartItems.removeAt(index);
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Item removed from cart.'),
                            ),
                          );
                        },
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        secondaryBackground: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        child: buildCartItem(cartItems[index]),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                buildTotalPrice(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCartItem(CoffeeeModel item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Image.asset(
                item.imagePath,
                height: 80,
                width: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff324A59),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Single | iced | medium | full iced',
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'x1',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff324A59),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                item.price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff324A59),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTotalPrice() {
    double totalPrice = 0;
    for (var item in cartItems) {
      totalPrice += double.parse(item.price.replaceAll('\$', ''));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Total Price',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '\$${totalPrice.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xff324A59),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return CustomModalBottomSheet();
              },
            );
          },
          child: Container(
            height: 50,
            width: 160,
            decoration: BoxDecoration(
              color: Color(0xff324A59),
              borderRadius: BorderRadius.circular(190),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/Buy.png', color: Colors.white),
                  Text(
                    'Checkout',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CoffeeeModel {
  final String name;
  final String imagePath;
  final String price;

  CoffeeeModel(this.name, this.imagePath, this.price);
}
