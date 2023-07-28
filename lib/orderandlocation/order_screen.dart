import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text('My Order'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
               SizedBox(height: 10,),
            TabBar(
              controller: _tabController,
              tabs: [
                Tab(
                  icon: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Ongoing'),
                    ),
                  ),
                ),
                Tab(
                  icon: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('History'),
                    ),
                  ),
                ),
              ],
              unselectedLabelColor: Color(0xFFD8D8D8),
              labelColor: Color(0xFF001833),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              indicatorColor: Color(0xFF001833),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  OngoingScreen(),
                  HistoryScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class OngoingScreen extends StatelessWidget {
  const OngoingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('24 June | 12:30 PM', style: TextStyle(
                color: Colors.grey.shade300

              ),),
              Text('\$3.00', style: TextStyle(
                  color: Color(0xff324A59)

              ),),



            ],



          ),
          SizedBox(height: 10,),
          Row(

            children: [
              Image.asset('images/bb.png'),
              SizedBox(width: 15,),

              Text('Americano',  style: TextStyle(
                  color: Color(0xff324A59),
                  fontSize: 11,
                  fontWeight: FontWeight.normal

              ),),
              SizedBox(width: 15,),





            ],



          ),
          SizedBox(height: 10,),

          Row(

            children: [
              Image.asset('images/Location.png'),
              SizedBox(width: 15,),

              Text('3 Addersion Court Chino Hills, HO56824, United State',
                style: TextStyle(
                  color: Color(0xff324A59),
                  fontSize: 11,
                  fontWeight: FontWeight.normal

              ),),
              SizedBox(width: 15,),





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
              Text('24 June | 12:30 PM', style: TextStyle(
                  color: Colors.grey.shade300

              ),),
              Text('\$3.00', style: TextStyle(
                  color: Color(0xff324A59)

              ),),



            ],



          ),
          SizedBox(height: 10,),
          Row(

            children: [
              Image.asset('images/bb.png'),
              SizedBox(width: 15,),

              Text('Cafe Latte',  style: TextStyle(
                  color: Color(0xff324A59),
                  fontSize: 11,
                  fontWeight: FontWeight.normal

              ),),
              SizedBox(width: 15,),





            ],



          ),
          SizedBox(height: 10,),

          Row(

            children: [
              Image.asset('images/Location.png'),
              SizedBox(width: 15,),

              Text('3 Addersion Court Chino Hills, HO56824, United State',
                style: TextStyle(
                    color: Color(0xff324A59),
                    fontSize: 11,
                    fontWeight: FontWeight.normal

                ),),
              SizedBox(width: 15,),





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
              Text('24 June | 12:30 PM', style: TextStyle(
                  color: Colors.grey.shade300

              ),),
              Text('\$3.00', style: TextStyle(
                  color: Color(0xff324A59)

              ),),



            ],



          ),
          SizedBox(height: 10,),
          Row(

            children: [
              Image.asset('images/bb.png'),
              SizedBox(width: 15,),

              Text('Flat White',  style: TextStyle(
                  color: Color(0xff324A59),
                  fontSize: 11,
                  fontWeight: FontWeight.normal

              ),),
              SizedBox(width: 15,),





            ],



          ),
          SizedBox(height: 10,),

          Row(

            children: [
              Image.asset('images/Location.png'),
              SizedBox(width: 15,),

              Text('3 Addersion Court Chino Hills, HO56824, United State',
                style: TextStyle(
                    color: Color(0xff324A59),
                    fontSize: 11,
                    fontWeight: FontWeight.normal

                ),),
              SizedBox(width: 15,),





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
    );
  }
}

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(

        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('24 June | 12:30 PM', style: TextStyle(
                  color: Colors.grey.shade300

              ),),
              Text('\$3.00', style: TextStyle(
                  color: Colors.grey.shade300
              ),),



            ],



          ),
          SizedBox(height: 10,),
          Row(

            children: [
              Image.asset('images/bb.png'),
              SizedBox(width: 15,),

              Text('Americano',  style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 11,
                  fontWeight: FontWeight.normal

              ),),
              SizedBox(width: 15,),





            ],



          ),
          SizedBox(height: 10,),

          Row(

            children: [
              Image.asset('images/Location.png'),
              SizedBox(width: 15,),

              Text('3 Addersion Court Chino Hills, HO56824, United State',
                style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 11,
                    fontWeight: FontWeight.normal

                ),),
              SizedBox(width: 15,),





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
              Text('24 June | 12:30 PM', style: TextStyle(
                  color: Colors.grey.shade300

              ),),
              Text('\$3.00', style: TextStyle(
                  color: Colors.grey.shade300

              ),),



            ],



          ),
          SizedBox(height: 10,),
          Row(

            children: [
              Image.asset('images/bb.png'),
              SizedBox(width: 15,),

              Text('Cafe Latte',  style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 11,
                  fontWeight: FontWeight.normal

              ),),
              SizedBox(width: 15,),





            ],



          ),
          SizedBox(height: 10,),

          Row(

            children: [
              Image.asset('images/Location.png'),
              SizedBox(width: 15,),

              Text('3 Addersion Court Chino Hills, HO56824, United State',
                style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 11,
                    fontWeight: FontWeight.normal

                ),),
              SizedBox(width: 15,),





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
              Text('24 June | 12:30 PM', style: TextStyle(
                  color: Colors.grey.shade300

              ),),
              Text('\$3.00', style: TextStyle(
                  color: Colors.grey.shade300

              ),),



            ],



          ),
          SizedBox(height: 10,),
          Row(

            children: [
              Image.asset('images/bb.png'),
              SizedBox(width: 15,),

              Text('Flat White',  style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 11,
                  fontWeight: FontWeight.normal

              ),),
              SizedBox(width: 15,),





            ],



          ),
          SizedBox(height: 10,),

          Row(

            children: [
              Image.asset('images/Location.png'),
              SizedBox(width: 15,),

              Text('3 Addersion Court Chino Hills, HO56824, United State',
                style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 11,
                    fontWeight: FontWeight.normal

                ),),
              SizedBox(width: 15,),





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
    );
  }
}

