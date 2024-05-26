import 'package:flutter/material.dart';
import 'package:flutter/material.dart ';
import 'package:x_o_game_flutter/BoardButton.dart';
import 'package:x_o_game_flutter/ColorsAsset.dart';
import 'package:x_o_game_flutter/PlayLogic.dart';

class GameBoard extends StatefulWidget {
  static const routeName = "GameBoard";

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
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
                Text("${PlayLogic.player1score}",style:Theme.of(context).textTheme.headline1 ),
              ],),
              Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                Text("player2 (O)",style:Theme.of(context).textTheme.headline1 ),
                Text("${PlayLogic.player2score}",style:Theme.of(context).textTheme.headline1 ),
              ],)
            ],
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(text: PlayLogic.boardStatus[0],
                  onPressed: () {
                  PlayLogic.onButtonClicked(0);
                  setState(() {});
                  }, buttonColor:  PlayLogic.boardStatus[0]==""?ColorsAsset.unClickedColor:ColorsAsset.clickedColor,),
                BoardButton(text: PlayLogic.boardStatus[1],
                  onPressed: () {  PlayLogic.onButtonClicked(1);
                  setState(() {}); },
                  buttonColor : PlayLogic.boardStatus[1]==""?ColorsAsset.unClickedColor:ColorsAsset.clickedColor,),
                BoardButton(text:  PlayLogic.boardStatus[2], onPressed: () {  PlayLogic.onButtonClicked(2);setState(() {}); }, buttonColor : PlayLogic.boardStatus[2]==""?ColorsAsset.unClickedColor:ColorsAsset.clickedColor,)
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(text:  PlayLogic.boardStatus[3], onPressed: () {  PlayLogic.onButtonClicked(3);setState(() {}); }, buttonColor : PlayLogic.boardStatus[3]==""?ColorsAsset.unClickedColor:ColorsAsset.clickedColor,),
                BoardButton(text:  PlayLogic.boardStatus[4], onPressed: () {  PlayLogic.onButtonClicked(4); setState(() {});}, buttonColor : PlayLogic.boardStatus[4]==""?ColorsAsset.unClickedColor:ColorsAsset.clickedColor,),
                BoardButton(text:  PlayLogic.boardStatus[5], onPressed: () {  PlayLogic.onButtonClicked(5);setState(() {}); }, buttonColor : PlayLogic.boardStatus[5]==""?ColorsAsset.unClickedColor:ColorsAsset.clickedColor,)
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(text:  PlayLogic.boardStatus[6], onPressed: () {  PlayLogic.onButtonClicked(6); setState(() {});}, buttonColor : PlayLogic.boardStatus[6]==""?ColorsAsset.unClickedColor:ColorsAsset.clickedColor,),
                BoardButton(text:  PlayLogic.boardStatus[7], onPressed: () {  PlayLogic.onButtonClicked(7); setState(() {});}, buttonColor : PlayLogic.boardStatus[7]==""?ColorsAsset.unClickedColor:ColorsAsset.clickedColor,),
                BoardButton(text:  PlayLogic.boardStatus[8], onPressed: () {  PlayLogic.onButtonClicked(8); setState(() {});}, buttonColor : PlayLogic.boardStatus[8]==""?ColorsAsset.unClickedColor:ColorsAsset.clickedColor,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
