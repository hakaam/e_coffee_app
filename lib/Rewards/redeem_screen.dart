import 'package:cofee_shop_ui/models/cofee_model.dart';
import 'package:cofee_shop_ui/cart/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

class RedeemScreen extends StatefulWidget {
  @override
  _RedeemScreenState createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
  List<CoffeeeModel> cartItems = [
    CoffeeeModel('americano', 'images/americano.jpg',),
    CoffeeeModel('Cappuccino', 'images/mug_coffee_PNG16824 3.png',),
    CoffeeeModel('Mocha', 'images/mocha.PNG',),
    CoffeeeModel('Flat White', 'images/mug_coffee_PNG16828 3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Implement logic for back button
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Color(0xff001833),
                    ),
                    Text(
                      'Redeem',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff254038),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container()
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      return buildCartItem(cartItems[index]);
                    },
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCartItem(CoffeeeModel item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                item.imagePath,
                height: 80,
                width: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff254038),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Valid until 04.07.21',
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade400,
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(width: 25,),
              Container(
                padding: EdgeInsets.all(10),
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                    color: Color(0xff324A59),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    '1340 pts',

                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 10
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

class CoffeeeModel {
  final String name;
  final String imagePath;

  CoffeeeModel(this.name, this.imagePath,);
}
