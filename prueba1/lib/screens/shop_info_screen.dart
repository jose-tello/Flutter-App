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
      children: [
        _PinkGranadineBackground(),
        _BuyInfo(),
        _AddToCart()
      ],
    );
  }
}

class _AddToCart extends StatelessWidget {
  const _AddToCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 15,
        left: 270,
        child: Container(
          width: 150,
          height: 90,
          color: Colors.green[300],
        ));
  }
}

class _BuyInfo extends StatelessWidget {
  const _BuyInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 50,
        child: Container(
          width: 220,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.deepPurple[50], width: 4),
          ),
        ));
  }
}

class _PinkGranadineBackground extends StatelessWidget {
  const _PinkGranadineBackground({
    Key key,
  }) : super(key: key);

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
    return Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('UNIT'),
          ],
        ));
  }
}
