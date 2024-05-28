import 'package:flutter/material.dart';
import 'package:x_o_game_flutter/BoardButton.dart';
import 'package:x_o_game_flutter/ColorsAsset.dart';
import 'package:x_o_game_flutter/PlayLogic.dart';

class GameBoard extends StatefulWidget {
  static const routeName = "GameBoard";
  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  late BuildContext pageContext;
  int player1score = 0;
  int player2score = 0;
  late GameBoardArgs args;
  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)?.settings.arguments as GameBoardArgs;
    pageContext = context;
    return Scaffold(
      appBar: AppBar(
        title:Row(children: [Spacer(flex: 3,),Text("XO Game", style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600)),Spacer(flex: 5,)],) ,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${args.player1Name} (X)",
                      style: Theme.of(context).textTheme.headline1),
                  Text("${player1score}",
                      style: Theme.of(context).textTheme.headline1),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${args.player2Name} (O)",
                      style: Theme.of(context).textTheme.headline1),
                  Text("${player2score}",
                      style: Theme.of(context).textTheme.headline1),
                ],
              )
            ],
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(
                  text: PlayLogic.boardStatus[0],
                  onPressed: () {
                    PlayLogic.onButtonClicked(0);
                    setState(() {});
                    checkGameState();
                  },
                  buttonColor: PlayLogic.boardStatus[0] == ""
                      ? ColorsAsset.unClickedColor
                      : ColorsAsset.clickedColor,
                  textColor: PlayLogic.itemsOfWining.contains(0)
                      ? ColorsAsset.winnerColor
                      : Colors.white,
                ),
                BoardButton(
                  text: PlayLogic.boardStatus[1],
                  onPressed: () {
                    PlayLogic.onButtonClicked(1);
                    setState(() {});
                    checkGameState();
                  },
                  buttonColor: PlayLogic.boardStatus[1] == ""
                      ? ColorsAsset.unClickedColor
                      : ColorsAsset.clickedColor,
                  textColor: PlayLogic.itemsOfWining.contains(1)
                      ? ColorsAsset.winnerColor
                      : Colors.white,
                ),
                BoardButton(
                  text: PlayLogic.boardStatus[2],
                  onPressed: () {
                    PlayLogic.onButtonClicked(2);
                    setState(() {});
                    checkGameState();
                  },
                  buttonColor: PlayLogic.boardStatus[2] == ""
                      ? ColorsAsset.unClickedColor
                      : ColorsAsset.clickedColor,
                  textColor: PlayLogic.itemsOfWining.contains(2)
                      ? ColorsAsset.winnerColor
                      : Colors.white,
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(
                  text: PlayLogic.boardStatus[3],
                  onPressed: () {
                    PlayLogic.onButtonClicked(3);
                    setState(() {});
                    checkGameState();
                  },
                  buttonColor: PlayLogic.boardStatus[3] == ""
                      ? ColorsAsset.unClickedColor
                      : ColorsAsset.clickedColor,
                  textColor: PlayLogic.itemsOfWining.contains(3)
                      ? ColorsAsset.winnerColor
                      : Colors.white,
                ),
                BoardButton(
                  text: PlayLogic.boardStatus[4],
                  onPressed: () {
                    PlayLogic.onButtonClicked(4);
                    setState(() {});
                    checkGameState();
                  },
                  buttonColor: PlayLogic.boardStatus[4] == ""
                      ? ColorsAsset.unClickedColor
                      : ColorsAsset.clickedColor,
                  textColor: PlayLogic.itemsOfWining.contains(4)
                      ? ColorsAsset.winnerColor
                      : Colors.white,
                ),
                BoardButton(
                  text: PlayLogic.boardStatus[5],
                  onPressed: () {
                    PlayLogic.onButtonClicked(5);
                    setState(() {});
                    checkGameState();
                  },
                  buttonColor: PlayLogic.boardStatus[5] == ""
                      ? ColorsAsset.unClickedColor
                      : ColorsAsset.clickedColor,
                  textColor: PlayLogic.itemsOfWining.contains(5)
                      ? ColorsAsset.winnerColor
                      : Colors.white,
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(
                  text: PlayLogic.boardStatus[6],
                  onPressed: () {
                    PlayLogic.onButtonClicked(6);
                    setState(() {});
                    checkGameState();
                  },
                  buttonColor: PlayLogic.boardStatus[6] == ""
                      ? ColorsAsset.unClickedColor
                      : ColorsAsset.clickedColor,
                  textColor: PlayLogic.itemsOfWining.contains(6)
                      ? ColorsAsset.winnerColor
                      : Colors.white,
                ),
                BoardButton(
                  text: PlayLogic.boardStatus[7],
                  onPressed: () {
                    PlayLogic.onButtonClicked(7);
                    setState(() {});
                    checkGameState();
                  },
                  buttonColor: PlayLogic.boardStatus[7] == ""
                      ? ColorsAsset.unClickedColor
                      : ColorsAsset.clickedColor,
                  textColor: PlayLogic.itemsOfWining.contains(7)
                      ? ColorsAsset.winnerColor
                      : Colors.white,
                ),
                BoardButton(
                  text: PlayLogic.boardStatus[8],
                  onPressed: () {
                    PlayLogic.onButtonClicked(8);
                    setState(() {});
                    checkGameState();
                  },
                  buttonColor: PlayLogic.boardStatus[8] == ""
                      ? ColorsAsset.unClickedColor
                      : ColorsAsset.clickedColor,
                  textColor: PlayLogic.itemsOfWining.contains(8)
                      ? ColorsAsset.winnerColor
                      : Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void checkGameState() {
    switch (PlayLogic.gameState) {
      case "X-win":
        notifyWinner(pageContext,
            "${args.player1Name} win this match and get 10 points ", "${args.player1Name} win ");
        player1score += 10;
        break;
      case "O-win":
        notifyWinner(pageContext,
            "${args.player2Name} win this match and get 10 points ", "${args.player2Name} win ");
        player2score += 10;
        break;
      case "DRAW":
        notifyWinner(
            pageContext,
            "the game finished without winner, so the board will be restarted",
            "Draw !");
        break;
    }
  }

  void notifyWinner(
      BuildContext context, String contentText, String contentTitle) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              actions: [
                TextButton(
                    onPressed: () {
                      PlayLogic.initBoard();
                      setState(() {});
                      Navigator.of(context).pop();
                    },
                    child: Center(
                      child: Text('ok'),
                    ))
              ],
              title: Center(child: Text(contentTitle)),
              contentPadding: EdgeInsets.all(20),
              content: Text(contentText),
            ));
  }
}

class GameBoardArgs {
  String player1Name;
  String player2Name;
  GameBoardArgs({required this.player1Name,required this.player2Name});
}
