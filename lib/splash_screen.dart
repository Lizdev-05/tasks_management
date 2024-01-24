import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: Center(
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
                      bottomLeft: Radius.circular(
                          MediaQuery.of(context).size.width / 2),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width / 2),
                    ),
                  ),
                  child: Image.asset("images/task_man.png"),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Text(
                  "Manage your daily tasks",
                  style: GoogleFonts.lato(
                    fontSize: 46,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                    color: const Color.fromARGB(255, 39, 38, 38),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Text(
                  "Team and project management with solution providing App",
                  // textAlign: TextAlign.start,
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                    color: const Color.fromARGB(255, 39, 38, 38),
                  ),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    child: Container(
                        child: GestureDetector(
                      onTap: () {
                        // Handle on tap
                        Navigator.of(context).pushNamed("/dashboard");
                      },
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.lato(
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none,
                          color: const Color.fromARGB(255, 39, 38, 38),
                        ),
                      ),
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
