import 'package:cofee_shop_ui/models/cofee_model.dart';
import 'package:flutter/material.dart';

import 'cart/cart_screen.dart';

class DetailScreen extends StatefulWidget {
  final CoffeeModel item;

  DetailScreen({super.key, required this.item});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int quantity = 1;
  double totalAmount = 3.00;
  String selectedShot = 'Single';
  String selectedSize = 'Small';
  String selectedIce = 'Regular';

  void incrementQuantity() {
    setState(() {
      quantity++;
      totalAmount = quantity * 3.00;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
        totalAmount = quantity * 3.00;
      });
    }
  }

  void selectShot(String shot) {
    setState(() {
      selectedShot = shot;
    });
  }

  void selectSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  void selectIce(String ice) {
    setState(() {
      selectedIce = ice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Implement logic for back button
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Color(0xff324A59),
                      ),
                      Text(
                        'Details',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff324A59),
                        ),
                      ),
                      Image.asset('images/Buy.png',
                        color: Color(0xff324A59),


                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,

                        borderRadius: BorderRadius.circular(20)

                    ),
                    child: Image.asset(
                      widget.item.image,
                      height: 150,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.item.text,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 33,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.grey),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: decrementQuantity,
                              child: Icon(
                                Icons.remove,
                                color: Color(0xff324A59),
                                size: 14,
                              ),
                            ),
                            Text(
                              quantity.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff324A59),
                                  fontSize: 10),
                            ),
                            InkWell(
                              onTap: incrementQuantity,
                              child: Icon(
                                Icons.add,
                                color: Color(0xff324A59),
                                size: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shot',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => selectShot('Single'),
                            child: Container(
                              width: 80,
                              height: 35,
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey.shade400),
                                  color: selectedShot == 'Single'
                                      ? Colors.green
                                      : Colors.white),
                              child: Center(
                                child: Text(
                                  'Single',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: selectedShot == 'Single'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () => selectShot('Double'),
                            child: Container(
                              width: 80,
                              height: 35,
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey.shade400),
                                  color: selectedShot == 'Double'
                                      ? Colors.green
                                      : Colors.white),
                              child: Center(
                                child: Text(
                                  'Double',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                    color: selectedShot == 'Double'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => selectSize('Small'),
                            child: Image.asset(
                              'images/Group.png',
                              color: selectedSize == 'Small'
                                  ? Colors.green
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () => selectSize('Medium'),
                            child: Image.asset(
                              'images/Groupp.png',
                              color: selectedSize == 'Medium'
                                  ? Colors.green
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Size',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => selectIce('Regular'),
                            child: Image.asset(
                              'images/Vector.png',
                              color: selectedIce == 'Regular'
                                  ? Colors.green
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () => selectIce('Less Ice'),
                            child: Image.asset(
                              'images/Vectorr.png',
                              color: selectedIce == 'Less Ice'
                                  ? Colors.green
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () => selectIce('No Ice'),
                            child: Image.asset(
                              'images/Vectorrr.png',
                              color: selectedIce == 'No Ice'
                                  ? Colors.green
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ice',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => selectIce('Full Ice'),
                            child: Image.asset('images/Rectangle 2579.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () => selectIce('Medium Ice'),
                            child: Image.asset('images/ice2.PNG'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () => selectIce('No Ice'),
                            child: Image.asset('images/ice3.PNG'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Amount',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff324A59),
                        ),
                      ),
                      Text(
                        '\$$totalAmount',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff324A59),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/cartscreen');
                          },
                          child: Text(
                            "Checkout",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff324A59),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
