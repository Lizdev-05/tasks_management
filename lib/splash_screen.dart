import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 162, 188, 210),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(42),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft:
                        Radius.circular(MediaQuery.of(context).size.width / 2),
                    bottomRight:
                        Radius.circular(MediaQuery.of(context).size.width / 2),
                  ),
                ),
                child: Image.asset("images/task_man.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
