import 'package:flutter/material.dart';
import 'package:flutter/material.dart ';
class GameBoard extends StatelessWidget {
  static const routeName = "GameBoard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("XO Game"),
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
                Text("player1 (X)"),
                Text("0"),
              ],),
              Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                Text("player2 (O)"),
                Text("0"),
              ],)
            ],
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: ElevatedButton(onPressed: () {}, child: Text(""))),
                Expanded(
                    child: ElevatedButton(onPressed: () {}, child: Text(""))),
                Expanded(
                    child: ElevatedButton(onPressed: () {}, child: Text(""))),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: ElevatedButton(onPressed: () {}, child: Text(""))),
                Expanded(
                    child: ElevatedButton(onPressed: () {}, child: Text(""))),
                Expanded(
                    child: ElevatedButton(onPressed: () {}, child: Text(""))),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: ElevatedButton(onPressed: () {}, child: Text(""))),
                Expanded(
                    child: ElevatedButton(onPressed: () {}, child: Text(""))),
                Expanded(
                    child: ElevatedButton(onPressed: () {}, child: Text(""))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
