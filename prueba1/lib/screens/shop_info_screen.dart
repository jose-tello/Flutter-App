import 'dart:ui';

import 'package:flutter/material.dart';

class ShopInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(flex: 6, child: _PomegranadePreview()),
        Expanded(flex: 2, child: _BuyInfo()),
        Expanded(flex: 2, child: _PomegranadeInfo()),
      ],
    ));
  }
}


class _BuyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Container(
           decoration: BoxDecoration(
           color: Colors.black,
           border: Border.all(color: Colors.deepPurple[50], width: 10),
      ),
  )
    ],
    );
  }
}

class _PomegranadePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(  // Lower this
            children:[
            Image.asset("assets/Back arrow icon.png"),
            Spacer(),
            Image.asset("assets/Lens icon.png"),
            Container(width: 60),
            Image.asset("assets/Store icon.png"),
            ],
            ),
            margin: EdgeInsets.only(left: 25, top: 60, right: 25, bottom: 0),
          ),
          Container(child: Image.asset("assets/Pomegranate image.png")),
          ],
          mainAxisSize: MainAxisSize.min,
      ),

      decoration: BoxDecoration(
          color: Colors.pink.shade100,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          )),
    );
  }
}

class _PomegranadeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('UNIT'),
        ],)
    );
  }
}