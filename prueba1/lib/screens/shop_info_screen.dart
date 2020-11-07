import 'package:flutter/material.dart';

class ShopInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 6,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.pink,
              //borderRadius: 
            ),
            
          ),
        ),

        Expanded(
          flex: 3,
          child: Container(),
        ),
      ],
    ));
  }
}
