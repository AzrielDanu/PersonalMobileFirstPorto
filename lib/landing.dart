import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portofolio/detail.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  'assets/images/gweh.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
              child: Column(
                children: [
                  Text(
                    'Azriel Danu Rahman',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 35, left: 35),
                    child: Text(
                      'Vocational High School Student at SMK Wikrama Bogor',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        letterSpacing: 3,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10)
                  ),
                  side: BorderSide(
                    color: Colors.black
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 20)
                ),
                child: Text('Detail About Me', style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold),),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(20),
            //   child: Container(
            //     width: 320,
            //     height: 360,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.all(Radius.circular(10)),
            //       color: Color.fromARGB(255, 219, 221, 224),
            //     ),
            //     child: Center(
            //       child: Column(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.only(top: 30),
            //             child: Text(
            //               'About Me',
            //               style: GoogleFonts.poppins(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.black,
            //               ),
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            //             child: Text(
            //               'Im a student SMK Wikrama Vocatonal highschool im in 12th grade, Vocational High School Student at SMK Wikrama Bogor, Here I am as a web developer, specifically a frontend developer, but besides frontend, I can also create basic backend foundations, and in addition, I can make simple programs for mobile devices.',
            //               textAlign: TextAlign.center,
            //               style: GoogleFonts.poppins(fontSize: 15),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
