import 'package:cofee_shop_ui/Rewards/rewards_screen.dart';
import 'package:cofee_shop_ui/main_screen.dart';
import 'package:flutter/material.dart';

import '../CardScreen.dart';
import '../constants/colors.dart';
import '../orderandlocation/order_screen.dart';



class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int pageIndex = 0;

  List pages = [MainScreen(), RewardsScreen(), OrderScreen()];

  @override
  Widget build(BuildContext context) {
    Color scaffoldColor = Color(0xff324A59); // Set an initial value

    switch (pageIndex) {
      case 0:
        scaffoldColor = Color(0xff324A59);
        break;
      case 1:
        scaffoldColor = Colors.white;
        break;
      case 2:
        scaffoldColor = Colors.white;
        break;
    }
    return Scaffold(
      backgroundColor: scaffoldColor,

      body: pages[pageIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 5, 20, 20),
        child: builMyNavBar(context),
      ),
    );
  }

  Container builMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(left: 6, right: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: pageIndex == 0 ? Colors.white : Colors.white),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: Image.asset(
                  'images/hommmm.png',
                  color: pageIndex == 0 ? Color(0xff254038) : Colors.white ,
                )),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(left: 6, right: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: pageIndex == 1 ? Colors.grey.shade300 : Colors.white),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                enableFeedback: false,
                icon:Image.asset(
                  'images/gift.png',
                  color: pageIndex == 1 ? mainColor : Colors.grey.shade300,
                )),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(left: 6, right: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: pageIndex == 2 ? Colors.grey.shade300 : Colors.white),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                enableFeedback: false,
                icon:Image.asset(
                  'images/order.png',
                  color: pageIndex == 2 ? mainColor : Colors.grey.shade300,
                )),
          ),
        ],
      ),
    );
  }
}