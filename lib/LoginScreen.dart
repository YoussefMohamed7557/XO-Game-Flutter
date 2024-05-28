import 'package:flutter/material.dart';
import 'package:x_o_game_flutter/GameBoard.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "LoginScreen";
  String player1Name = "";
  String player2Name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Welcome"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(labelText: "Player 1 name"),
              style: TextStyle(fontSize: 18,color: Colors.black),
              onChanged: (value) {
                player1Name = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(labelText: "Player 2 name"),
              style: TextStyle(fontSize: 18,color: Colors.black),
              onChanged: (value) {
                player2Name = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, GameBoard.routeName,arguments: GameBoardArgs(player1Name: player1Name, player2Name: player2Name));
              },
              child: Text(
                "Lets Play ..",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: ContinuousRectangleBorder()),
            ),
          )
        ],
      ),
    );
  }
}
