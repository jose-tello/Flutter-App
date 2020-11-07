import 'dart:ui';

import 'package:flutter/material.dart';

class ShopInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(flex: 6, child: _PomegranadePreview()),
        Expanded(flex: 2, child: _PomegranadeInfo()),
      ],
    ));
  }
}

class _PomegranadePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [_PinkGranadineBackground(), _BuyInfo(), _AddToCart()],
    );
  }
}

class _AddToCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 15,
        left: 230,
        child: Container(
          width: 150,
          height: 70,
          color: Colors.green[300],
        ));
  }
}

class _BuyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 50,
      child: Container(
        width: 180,
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.deepPurple[50], width: 4),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Pomegranate ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('(Anaar)')
              ],
            ),
            Row(
              children: [
                Text(
                  '\$199  ',
                ),
                Text('\$259',
                    style: TextStyle(decoration: TextDecoration.lineThrough))
              ],
            ),
            Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: EdgeInsets.all(5),
            )
            )
          ],
        ),
      ),
    );
  }
}

class _PinkGranadineBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              // Lower this
              children: [
                Image.asset("assets/Back arrow icon.png"),
                Spacer(),
                Image.asset("assets/Lens icon.png"),
                Container(width: 60),
                Image.asset("assets/Store icon.png"),
              ],
            ),
            margin: EdgeInsets.only(left: 25, top: 60, right: 25, bottom: 0),
          ),
          Align(
            alignment: Alignment.topCenter,
            child:
                Container(child: Image.asset("assets/Pomegranate image.png")),
          ),
        ],
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
    return Container(
      child: Column(
        children: [
          Text("UNIT", style: TextStyle(fontWeight: FontWeight.bold)),
          Container(height: 20),
          Row(
          children: [
            Text("4 units", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(" (0.9-1.2 kg)"),
          ]
          ),
          Container(height: 20),
          Container(
            decoration: BoxDecoration(image: DecorationImage(
              image: AssetImage("assets/Round red rectangle.png"),
              alignment: Alignment.topLeft
              )),
            child: Container(
              child: Row(
              children:
              [
                Image.asset("assets/Money bag icon.png"),
                Container(width: 15),
                Text('Price for club members: \$199', style: TextStyle(color: Colors.red)),
                Container(width: 160),
                Image.asset("assets/Forward arrow icon.png"),
                Image.asset("assets/Forward arrow icon.png")
              ]
            ),
            margin: EdgeInsets.only(left: 10, top: 10, right: 0, bottom: 10)
            )
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        ),
    
    margin: EdgeInsets.only(left: 40, top: 60, right: 0, bottom: 0),
    alignment: Alignment.topCenter,

    );
  }
}