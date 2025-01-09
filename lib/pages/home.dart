import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
                    size: 22.0,
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
            height: 200.0,
            margin: EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 16.0), // Margin around the box
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  offset: Offset(0, 1), // Shadow position
                  blurRadius: 6, // Blur radius
                ),
              ],
              image: DecorationImage(
                image: AssetImage('assets/credit-card.png'), // Background image
                fit: BoxFit.cover, // Fit the image to cover the box
              ),
            ),
            child: Center(
              child: Text(
                'Emil Costa (646)-777-2000',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(1, 1), // Slight shadow for readability
                      blurRadius: 2,
                      color: Colors.black.withValues(alpha: 0.3),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
