import 'package:flutter/material.dart';
import 'package:x_o_game_flutter/GameBoard.dart';
import 'package:x_o_game_flutter/LoginScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 28,
            color: Colors.black
          )
        ),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent)
        )
      ),
      initialRoute:  LoginScreen.routeName,
      routes: {
        GameBoard.routeName : (context)=> GameBoard(),
        LoginScreen.routeName : (context) => LoginScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
