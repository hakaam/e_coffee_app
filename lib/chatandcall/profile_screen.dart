import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              SizedBox(
                height: 40,

              ),
              Text(
                'Profile',
                textAlign: TextAlign.center,

                style: TextStyle(color: Color(0xff324A59),
                  fontWeight: FontWeight.bold

                ),
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Container(
                      height: 40,
                      width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffF7F8FB),
                    borderRadius: BorderRadius.circular(40)
                    
                    
                  ),
                  child: Icon(Icons.person,size:
                    20,
                    color: Colors.grey,
                    // color: Color(0xff324A59),
                  ),
                  
                ),
                title: Text('Full name',
                  style: TextStyle(
                    color: Colors.grey.shade300

                  ),

                ),
                subtitle: Text('Anderson ',
                  style: TextStyle(
                    color: Color(0xff324A59)

                  ),

                ),
                trailing: Image.asset('images/Edit.png'),

              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffF7F8FB),
                      borderRadius: BorderRadius.circular(40)


                  ),
                  child: Icon(Icons.phone,size:
                  20,
                    color: Colors.grey,
                  ),

                ),
                title: Text('Phone Number',
                  style: TextStyle(
                      color: Colors.grey.shade300

                  ),
                ),
                subtitle: Text('+60134589525',
                  style: TextStyle(
                      color: Color(0xff324A59)

                  ),

                ),
                trailing: Image.asset('images/Edit.png'),

              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffF7F8FB),
                      borderRadius: BorderRadius.circular(40)


                  ),
                  child: Icon(Icons.email_outlined,size:
                  20,
                    color: Colors.grey,
                  ),

                ),
                title: Text('Email',
                  style: TextStyle(
                      color: Colors.grey.shade300

                  ),
                ),
                subtitle: Text('Anderson@email.com ',
                  style: TextStyle(
                      color: Color(0xff324A59)

                  ),

                ),
                trailing: Image.asset('images/Edit.png'),

              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffF7F8FB),
                      borderRadius: BorderRadius.circular(40)


                  ),
                  child: Icon(Icons.location_on,size:
                  20,
                    color: Colors.grey
                  ),

                ),
                title: Text('Address',
                  style: TextStyle(
                      color: Colors.grey.shade300

                  ),
                ),
                subtitle: Text('3 Addersion Court Chino Hills, HO56824, United State',
                  style: TextStyle(
                      color: Color(0xff324A59)

                  ),

                ),
                trailing: Image.asset('images/Edit.png'),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
