import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            () => Navigator.pushNamed(context, "/home"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              //Parametro do Boxdecoration para criar uma cor polida
                color: Color.fromARGB(255, 255, 186, 92),
                //Parametro do BoxDecoration para criar um degrade
                //Obviamente, o degrade precisa  de mais de uma cor!
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 247, 80, 8),
                  Color.fromARGB(255, 247, 199, 8),
                ])),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 90.0,
                  right: 60.0,
                ),
                child: Image.asset("images/pizza.png"),
              ),
              SizedBox(height: 20.0),
              Text(
                "Ma'que Pizza",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 26.0,
                ),
              ),
            ],
          )
        ],
      ),
    ); ;
  }
}



