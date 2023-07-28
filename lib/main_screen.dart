import 'package:flutter/material.dart';

import 'bottom_nav_bar/Bottom_Nav_bar.dart';
import 'detail_screen.dart';
import 'models/cofee_model.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
              child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good Morning',
                                style: TextStyle(color: Colors.grey.shade300),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Hakim',
                                style: TextStyle(
                                    color: Color(0xff324A59), fontSize: 15,
                                  fontWeight: FontWeight.bold

                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'images/Buy.png',
                                color: Color(0xff324A59),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.perm_identity_rounded,
                                color: Color(0xff324A59),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              SizedBox(height: 15,),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xff324A59),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Loyalty card',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '4/8',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 5,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Image.asset(
                                                'images/coffee-cup 1.png');
                                          }),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                  )
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  flex: 4,
                  child: Container(

                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        color: Color(0xff324A59),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text(
                            'Choose your coffee',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Expanded(
                          child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.1,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                            ),
                            itemCount: cofeeItems.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  // Navigate to the detail screen for the selected item
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailScreen(item: cofeeItems[index]),
                                    ),
                                  );
                                },
                                child: Card(
                                  child: Container(
                                    width: 400,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 25),
                                        Image.asset(
                                          cofeeItems[index].image,
                                          height: 70,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            cofeeItems[index].text,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Color(0xff254038),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          )),
        ));
  }
}
