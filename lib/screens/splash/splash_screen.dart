import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //   Timer(
    //       const Duration(seconds: 3),
    //       () => Navigator.pushReplacement(
    //           context,
    //           MaterialPageRoute(
    //             builder: (context) => const HomeScreen(),
    //           )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Image.asset(
              'assets/icons/cloudy.png',
              scale: 3,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            Text(
              'Weather App',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
