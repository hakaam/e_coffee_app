import 'package:cofee_shop_ui/Rewards/redeem_screen.dart';
import 'package:cofee_shop_ui/Rewards/rewards_screen.dart';
import 'package:cofee_shop_ui/chatandcall/call_screen.dart';
import 'package:cofee_shop_ui/chatandcall/chat_screen.dart';
import 'package:cofee_shop_ui/chatandcall/profile_screen.dart';
import 'package:cofee_shop_ui/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AuthScreens/forgot_passsword.dart';
import 'AuthScreens/otp_screen.dart';
import 'AuthScreens/signInScreen.dart';
import 'AuthScreens/signup_screen.dart';
import 'CardScreen.dart';
import 'bottom_nav_bar/Bottom_Nav_bar.dart';
import 'cart/cart_screen.dart';
import 'f.dart';
import 'main_screen.dart';
import 'on_board/on_board_screen.dart';
import 'orderandlocation/order_sccess_screen.dart';
import 'orderandlocation/order_screen.dart';
import 'orderandlocation/track_my_order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/onboard': (context) => OnboardingScreen(),
        '/signin': (context) => SiginInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/forgotpassword': (context) => ForgotPasswordScreen(),
        '/otp': (context) => OtpScreen(),
        '/orderscreen': (context) => OrderScreen(),
        '/cardscreen': (context) => CardScreen(),
        '/bottomnavbar': (context) => BottomNav(),
        '/cartscreen': (context) => CartScreen(),
        '/mainScreen': (context) => MainScreen(),
        '/orderScreen': (context) => OrderSuccessScreen(),
        '/trackorder': (context) => TrackMyOrder(),
        '/chatscreen': (context) => ChatScreen(),
        '/callscreen': (context) => CallScreen(),
        '/profilescreen': (context) => ProfileScreen(),
        '/rewardsscreen': (context) => RewardsScreen(),
        '/redeemscreen': (context) => RedeemScreen(),
        '/homescreen': (context) => HomeScreen(),

      },
      home:OnboardingScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
