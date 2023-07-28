import 'package:flutter/material.dart';

import '../cart/modal_bottom_sheet.dart';
import 'profile_bottom_sheet.dart';

class TrackMyOrder extends StatefulWidget {
  @override
  State<TrackMyOrder> createState() => _TrackMyOrderState();
}

class _TrackMyOrderState extends State<TrackMyOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(

          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/map.png'),
                ),
              ),
            ),
            Positioned(
              bottom: 350,
              right: 130,
              child: Image.asset('images/p2.PNG'),
            ),
            Positioned(
              top: 55,
              right: 239,
              child: Image.asset('images/p1.PNG'),
            ),
            Positioned(
              bottom: 360,
              right: 130,
              child: Image.asset('images/Path 2.png'),
            ),
            Positioned(
              top: 390,
              left: 270,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return ProfileModalBottomSheet();
                    },
                  );
                },
                child: Image.asset('images/Target.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
