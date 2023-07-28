import 'package:flutter/material.dart';

class RewardsScreen extends StatefulWidget {
  const RewardsScreen({super.key});

  @override
  State<RewardsScreen> createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Rewards',
                    style: TextStyle(color: Color(0xff001833),
                      fontWeight: FontWeight.bold

                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    width: double.infinity,
                    height: 100,
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
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      itemBuilder:
                                          (BuildContext context, int index) {
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
                SizedBox(
                  height: 12,
                ),
                Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xff324A59),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'My Points:',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      '2750',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: (){


                                    Navigator.pushNamed(context, '/redeemscreen');



                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(13)),
                                    child: Text(
                                      'Redeem drinks',
                                      style: TextStyle(
                                        color: Color(0xffA2CDE9),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    )),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'History Rewards',
                  style: TextStyle(color: Color(0xff324A59),
                    fontWeight: FontWeight.normal,
                    fontSize: 16

                  ),
                ),
                SizedBox(height: 17,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Americano',
                          style: TextStyle(
                              color: Color(0xff324A59)


                          ),

                        ),
                        Text('24 June | 12:30 PM',
                          style: TextStyle(
                              color: Colors.grey.shade300


                          ),

                        ),



                      ],

                    ),
                    Text('+ 12 Pts',
                      style: TextStyle(
                          color: Color(0xff324A59),
                        fontWeight: FontWeight.bold


                      ),
                    )


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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cafe Latte',
                          style: TextStyle(
                              color: Color(0xff324A59)


                          ),

                        ),
                        Text('22 June | 08:30 AM',
                          style: TextStyle(
                              color: Colors.grey.shade300


                          ),

                        ),



                      ],

                    ),
                    Text('+ 12 Pts',
                      style: TextStyle(
                          color: Color(0xff324A59),
                          fontWeight: FontWeight.bold


                      ),
                    )


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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Green Tea Latte',
                          style: TextStyle(
                              color: Color(0xff324A59)


                          ),

                        ),
                        Text('16 June | 10:48 AM',
                          style: TextStyle(
                              color: Colors.grey.shade300


                          ),

                        ),



                      ],

                    ),
                    Text('+ 12 Pts',
                      style: TextStyle(
                          color: Color(0xff324A59),
                          fontWeight: FontWeight.bold


                      ),
                    )


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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Flat White',
                          style: TextStyle(
                              color: Color(0xff324A59)


                          ),

                        ),
                        Text('12 May | 11:25 AM',
                          style: TextStyle(
                              color: Colors.grey.shade300


                          ),

                        ),



                      ],

                    ),
                    Text('+ 12 Pts',
                      style: TextStyle(
                          color: Color(0xff324A59),
                          fontWeight: FontWeight.bold


                      ),
                    )


                  ],



                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Divider(
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
