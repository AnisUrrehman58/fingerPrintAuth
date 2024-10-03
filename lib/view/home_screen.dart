import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home Screen',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: SizedBox.expand(  // Full screen cover
          child: Lottie.asset('assets/Animation - 1726923543125.json',repeat: true,fit: BoxFit.cover),
        ),
      ),
    );
  }
}
