import 'package:flutter/material.dart';

import 'bottom_nav_bar/Bottom_Nav_bar.dart';
class F extends StatefulWidget {
  const F({super.key});

  @override
  State<F> createState() => _FState();
}

class _FState extends State<F> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),


    );
  }
}
