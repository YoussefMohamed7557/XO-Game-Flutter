import 'package:flutter/material.dart';
import 'package:x_o_game_flutter/GameBoard.dart';

void main(){
  runApp(MyApp());
}
class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:  GameBoard.routeName,
      routes: {
        GameBoard.routeName : (context)=> GameBoard()
      },
    );
  }
}
