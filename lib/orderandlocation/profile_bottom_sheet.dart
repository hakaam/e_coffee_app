import 'package:cofee_shop_ui/orderandlocation/profile2-bottom_sheet.dart';
import 'package:flutter/material.dart';

class ProfileModalBottomSheet extends StatefulWidget {
  @override
  State<ProfileModalBottomSheet> createState() =>
      _ProfileModalBottomSheetState();
}

class _ProfileModalBottomSheetState extends State<ProfileModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.36,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff324A59),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(22), // Updated padding value
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('images/profile.png'),
                    SizedBox(width: 12),
                    Text(
                      'Leslie Sheeran',
                      style: TextStyle(color: Color(0xffFFFFFF)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff839DAD),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset('images/call.png'),
                    ),
                    SizedBox(width: 12),

                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/chatscreen');


                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff839DAD),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset('images/message.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,

                  context: context,
                  builder: (BuildContext context) {
                    return Profile2ModalBottomSheet();
                  },
                );

              },
              child: Text(
                'Profile',
                style: TextStyle(color: Color(0xffFFFFFF)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
