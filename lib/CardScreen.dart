import 'package:flutter/material.dart';

import 'orderandlocation/profile_bottom_sheet.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
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
                child: Text('modal bottom sheet'),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
