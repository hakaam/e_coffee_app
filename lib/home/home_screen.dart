import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> simulateLoading() async {
    // Simulate a delay for the splash screen
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  void initState() {
    super.initState();
    simulateLoading().then((_) {
      // After the splash screen delay, navigate to another screen
      // Replace `NextScreen` with your desired screen
      Navigator.pushNamed(context, '/bottomnavbar');

    });
  }

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
                  image: AssetImage('images/background.png'),
                ),
              ),
            ),
            Positioned(
              bottom: 337,
              left: 100,
              child: Center(
                child: Column(
                  children: [
                    Image.asset('images/cup.png', scale: 1.1),
                    Text(
                      'Ordinary Coffee House',
                      style: TextStyle(
                        color: Color(0xffFFFAF6),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
