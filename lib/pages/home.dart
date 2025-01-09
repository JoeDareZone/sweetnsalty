import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kBoxShadow = [
  BoxShadow(
    color: Colors.black.withValues(alpha: 0.3),
    offset: Offset(0, 2),
    blurRadius: 4,
  ),
];

const kTextColor = Color(0xFF7C767A);
const kCardHeight = 200.0;
const kCardMargin = 25.0;
const kPopcornSize = 35.0;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',
            style: GoogleFonts.taviraj(
              fontSize: 28.0,
            )),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              width: 36.0,
              height: 36.0,
              decoration: BoxDecoration(
                color: Color(0xFF3C3D3E),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    offset: Offset(0, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  print('Plus icon pressed');
                },
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 26.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: kCardHeight,
            margin: const EdgeInsets.symmetric(
                horizontal: kCardMargin, vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: kBoxShadow,
              image: const DecorationImage(
                image: AssetImage('assets/credit-card.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Emil Costa',
                            style: GoogleFonts.taviraj(fontSize: 22.0)),
                        Text('(646)-777-2000',
                            style: TextStyle(
                                color: kTextColor,
                                fontSize: 18.0,
                                letterSpacing: -2.0)),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset('assets/popcorn-logo.png',
                            width: kPopcornSize, height: kPopcornSize),
                        SizedBox(width: 4.0),
                        Text('Popcorn',
                            style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -1.0)),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset('assets/chip.png',
                        width: kPopcornSize, height: kPopcornSize),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
