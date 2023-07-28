import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _SiginInScreenState();
}

class _SiginInScreenState extends State<OtpScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Verification',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff254038),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter the OTP code wen sent you',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: PinCodeTextField(
                  cursorColor: Colors.red,
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    selectedColor: Colors.blue,
                    inactiveColor:Colors.grey.shade300,
                  ),
                  onChanged: (value) {
                    // Handle OTP value changes
                    print(value);
                  },
                  onCompleted: (value) {
                    // Handle completed OTP input
                    print("Completed: $value");
                  },
                ),
              ),
            ),
                SizedBox(height: 15,),
                Center(
                  child: Text(
                    'Resend in 00:30',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),

                SizedBox(height: 150,),





                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/homescreen');
                    },
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color(0xff254038),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),

              ],
            ),
          )),
    );
  }
}
