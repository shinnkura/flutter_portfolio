import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        // color: Color.fromARGB(255, 252, 252, 252),
        color: bgColor,
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage("assets/images/icon.jpg"),
            ),
            Spacer(),
            Text(
              "中岡 新蔵",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "FlutterとCoffeeを愛する\nエンジニア",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
                color: Colors.white.withOpacity(0.64),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
