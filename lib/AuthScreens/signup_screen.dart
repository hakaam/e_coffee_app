import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text('Sign up',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff254038),


                    ),

                  ),
                  SizedBox(height: 10,),
                  Text('Create an account here',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,


                    ),

                  ),
                  SizedBox(height: 15,),



                  TextField(
                    style: TextStyle(
                      color: Colors.grey[100],
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(Icons.person_2_outlined,size: 15,),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 35,
                            width: 1,
                            color: Colors.grey.shade300, // Color of the separator
                            margin: const EdgeInsets.only(right: 15),
                          ),
                        ],
                      ),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300
                        ),
                      ),


                    ),
                  ),
                  SizedBox(height: 15,),



                  TextField(
                    style: TextStyle(
                      color: Colors.grey[100],
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(Icons.phone_android,size: 15,),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 35,
                            width: 1,
                            color: Colors.grey.shade300, // Color of the separator
                            margin: const EdgeInsets.only(right: 15),
                          ),
                        ],
                      ),
                      hintText: 'Mobile Number',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300
                        ),
                      ),


                    ),
                  ),
                  SizedBox(height: 15,),



                  TextField(
                    style: TextStyle(
                      color: Colors.grey[100],
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(Icons.email_outlined,size: 15,),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 35,
                            width: 1,
                            color: Colors.grey.shade300, // Color of the separator
                            margin: const EdgeInsets.only(right: 15),
                          ),
                        ],
                      ),
                      hintText: 'Email address',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300
                        ),
                      ),


                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    style: TextStyle(

                    ),
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.lock_outline,
                              size: 15,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 35,
                            width: 1,
                            color: Colors.grey.shade300, // Color of the separator
                            margin: const EdgeInsets.only(right: 15),
                          ),
                        ],
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 10,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        child: Icon(
                          _isPasswordVisible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          size: 15,
                        ),
                      ),
                      labelStyle: TextStyle(
                          color: Colors.redAccent

                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18,),
                  Center(
                    child: Text(
                      'By signing up you agree with our Terms of Use',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff254038),
                      ),
                    ),
                  ),
                  SizedBox(height: 130,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/signin');



                      },
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color(0xff254038),
                                borderRadius: BorderRadius.circular(50)


                            ),
                            child: Center(
                              child: Icon(Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),


                          )
                      ),
                    ),


                  ),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/signin');

                    },
                    child: RichText(
                      textAlign: TextAlign.end,

                      text: TextSpan(

                        children: <TextSpan>[
                          TextSpan(text: 'Already a  member? ',  style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,


                          ),),
                          TextSpan(text: 'Sign in ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff254038),


                            ),

                          ),
                        ],
                      ),
                    ),
                  )



                ],
              ),
            )),
      ),
    );
  }
}
