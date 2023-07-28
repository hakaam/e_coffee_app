import 'package:flutter/material.dart';
class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/take away-delivery-Restaurant-Coffee break-coffee time.png'),
             SizedBox(height: 20,),
              Text('Order Success ',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff324A59),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text('Your order has been placed successfully.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,

                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              SizedBox(height: 7,),
              Center(
                child: Text('For more details, go to my orders.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,

                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              SizedBox(height: 60,),
              Center(
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/trackorder');
                      },
                      child: Text(
                        "Track My Order",
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
    );
  }
}
