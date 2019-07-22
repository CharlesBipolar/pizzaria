import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/splash_sceen.dart';

//Se quisermos, podemos criar rotas para facilitar a navegação entre páginas

var rotas = <String, WidgetBuilder> {
  "/splash" : (BuildContext context) => SplashScreenPage(),
  "/home" : (BuildContext context) => HomePage(),
};

void main () => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Color.fromARGB(255, 128, 128, 128),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: "Pizzaria Ma'que Pizza",
      home: SplashScreenPage(),
      routes: rotas,
    );
  }
}
