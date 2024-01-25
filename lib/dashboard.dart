import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasks_management/splash_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 15, 155),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 92, 15, 155),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
            child: IconButton(
              icon: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(30),
                child: Container(
                  color: Colors.white,
                  height: 30,
                  width: 30,
                  child: const Icon(
                    Icons.person,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/");
              },
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
          child: IconButton(
            icon: const Icon(
              Icons.filter_list_rounded,
              color: Colors.white,
              size: 50,
            ),
            onPressed: () {},
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Ghulam",
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "6 Tasks are pending",
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Card(
              color: const Color.fromARGB(255, 139, 69, 196),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mobile App Development",
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      "Mike and Anita",
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 22),
                    ),
                    const SizedBox(height: 10),
                    // Expanded(
                    //   child: Stack(
                    //     clipBehavior: Clip.none, // Allow icons to overflow
                    //     children: [
                    //       Positioned(
                    //         left: 0,
                    //         child: ClipRRect(
                    //           borderRadius: BorderRadius.circular(30),
                    //           child: Container(
                    //             color: Colors.white,
                    //             height: 40,
                    //             width: 40,
                    //             child: const Icon(Icons.person),
                    //           ),
                    //         ),
                    //       ),
                    //       Positioned(
                    //         left: 15,
                    //         child: ClipRRect(
                    //           borderRadius: BorderRadius.circular(30),
                    //           child: Container(
                    //             color: Colors.white,
                    //             height: 40,
                    //             width: 40,
                    //             child: const Icon(Icons.person),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Stack(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadiusDirectional.circular(30),
                              child: Container(
                                color: Colors.white,
                                height: 40,
                                width: 40,
                                child: const Icon(Icons.person),
                              ),
                            ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadiusDirectional.circular(30),
                              child: Container(
                                color: Colors.white,
                                height: 40,
                                width: 40,
                                child: const Icon(Icons.person),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "New",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Monthly Review",
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(30),
                    child: Container(
                      color: Color.fromARGB(255, 194, 129, 235),
                      height: 50,
                      width: 50,
                      child: const Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Card(
                        color: Color.fromARGB(255, 194, 129, 235),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 10),
                          child: Container(
                            height: 150,
                            width: 100,
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                  text: "22 \n",
                                  style: GoogleFonts.lato(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                  children: [
                                    TextSpan(
                                      text: "Done",
                                      style: GoogleFonts.lato(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: const Color.fromARGB(255, 194, 129, 235),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 25),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: "10 \n",
                                style: GoogleFonts.lato(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                                children: [
                                  TextSpan(
                                    text: "Ongoing",
                                    style: GoogleFonts.lato(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      Card(
                        color: const Color.fromARGB(255, 194, 129, 235),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 25),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: "7 \n",
                                style: GoogleFonts.lato(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                                children: [
                                  TextSpan(
                                    text: "in progress",
                                    style: GoogleFonts.lato(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: const Color.fromARGB(255, 194, 129, 235),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35.0, vertical: 10),
                          child: Container(
                            height: 150,
                            width: 100,
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                  text: "12 \n",
                                  style: GoogleFonts.lato(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                  children: [
                                    TextSpan(
                                      text: "Waiting for review",
                                      style: GoogleFonts.lato(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 92, 15, 155),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: "",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromARGB(255, 16, 135, 233),
          unselectedItemColor: Color.fromARGB(162, 206, 159, 235),
        ),
      ),
    );
  }
}
