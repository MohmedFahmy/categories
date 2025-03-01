import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class BodySplash extends StatelessWidget {
  const BodySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                'https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg',
              ),
            ),
          ),
          SizedBox(height: 100),

          SpinKitPouringHourGlassRefined(color: Colors.brown, size: 100),
        ],
      ),
    );
  }
}
