import 'package:flutter/material.dart';
import 'package:flutter/material.dart ';
import 'package:x_o_game_flutter/BoardButton.dart';
class GameBoard extends StatelessWidget {
  static const routeName = "GameBoard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("XO Game",style:Theme.of(context).textTheme.headline1 ),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                Text("player1 (X)",style:Theme.of(context).textTheme.headline1 ),
                Text("0",style:Theme.of(context).textTheme.headline1 ),
              ],),
              Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                Text("player2 (O)",style:Theme.of(context).textTheme.headline1 ),
                Text("0",style:Theme.of(context).textTheme.headline1 ),
              ],)
            ],
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(),
                BoardButton(),
                BoardButton()
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(),
                BoardButton(),
                BoardButton()
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(),
                BoardButton(),
                BoardButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
