import 'package:flutter/material.dart';

class ShopInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(flex: 8, child: _PomegranadePreview()),
        Expanded(flex: 2, child: _PomegranadeInfo()),
      ],
    ));
  }
}

class _PomegranadePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              )),
        ),
        _BuyInfo()
      ],
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
        child: Row(
          children: [
            Container(
              width: 220,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.deepPurple[200], width: 4),
              ),
            ),
            Positioned(
                bottom: -10,
                left: 50,
                child: Container(
                  width: 150,
                  height: 90,
                  color: Colors.green[300],
                ))
          ],
        ));
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
