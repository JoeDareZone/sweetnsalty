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
    );
  }
}
