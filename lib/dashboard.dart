import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              onPressed: () {},
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
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
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
          ],
        ),
      ),
    );
  }
}
