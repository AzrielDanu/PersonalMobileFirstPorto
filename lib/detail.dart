import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Detail About Me',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            // ===== ABOUT ME =====
            Text(
              'About Me',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "I'm a student at SMK Wikrama Vocational High School and currently in 12th grade. Here I am as a web developer, specifically a frontend developer, but besides frontend, I can also create basic backend foundations, and in addition, I can make simple programs for mobile devices.",
              style: GoogleFonts.poppins(
                fontSize: 16,
                height: 1.6,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 30),

            // ===== HISTORY =====
            Text(
              'History',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "I am a vocational high school student who has already built several web and mobile applications. I once worked in a company as a Frontend Developer using JavaScript, Vue.js, and Nuxt.js, managing states with Pinia for efficient data flow.",
              style: GoogleFonts.poppins(
                fontSize: 16,
                height: 1.6,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 30),

            // ===== SKILLS =====
            Text(
              'Skills',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildSkillChip('HTML'),
                _buildSkillChip('CSS'),
                _buildSkillChip('JavaScript'),
                _buildSkillChip('Laravel'),
                _buildSkillChip('Vue.js'),
                _buildSkillChip('Nuxt.js'),
                _buildSkillChip('MySQL'),
                _buildSkillChip('Flutter'),
                _buildSkillChip('Dart'),
              ],
            ),
            const SizedBox(height: 50),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Back to Home',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget helper untuk skill badge
  Widget _buildSkillChip(String skill) {
    return Chip(
      label: Text(
        skill,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
