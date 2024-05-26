import 'package:flutter/material.dart';
import 'package:x_o_game_flutter/ColorsAsset.dart';

class BoardButton extends StatelessWidget {
  Color buttonColor = ColorsAsset.unClickedColor;
  String text ;
  Function() onPressed ;
  BoardButton({this.text = "",required this.onPressed,required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: ElevatedButton(
        onPressed: (){
          onPressed();
        },
        child: Text(
          text,
          style: TextStyle(
              fontSize: 38, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: ContinuousRectangleBorder()),
      ),
    ));
  }
}