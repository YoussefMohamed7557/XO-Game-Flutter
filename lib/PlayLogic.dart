class PlayLogic{
  static int counter = 0;
  static int player1score = 0;
  static int player2score = 0;
  static List<String> boardStatus = ["","","",
                                     "","","",
                                     "","",""];
  static void onButtonClicked(int index){
    if(boardStatus[index].isEmpty){
      if(counter%2 == 0){
        //player 1 turn (X)
        boardStatus[index] = 'X';
      }else{
        //player2 turn (O)
        boardStatus[index] = 'O';
      }
      counter++;
      if(checkWinner('X')){
        player1score+=10;
        print("X win");
        initBoard();
      }else if(checkWinner('O')){
        player2score+=10;
        print("O win");
        initBoard();
      }else if(counter == 9){
        print("Draw !");
        initBoard();
      }
    }
  }
  static bool checkWinner(String symbol) {
    for (int i = 0; i < 9; i += 3) {
      if (boardStatus[i] == symbol
          && boardStatus[i + 1] == symbol
          && boardStatus[i + 2] == symbol) {
        return true;
      }
    }
    for(int i=0;i<3;i++){
      if(boardStatus[i] == symbol
          &&boardStatus[i+3] == symbol
          &&boardStatus[i+6] == symbol){
        return true;
      }
    }
    if(boardStatus[0] == symbol
        &&boardStatus[4] == symbol
        &&boardStatus[8] == symbol){
      return true;
    }
    if(boardStatus[2] == symbol
        &&boardStatus[4] == symbol
        &&boardStatus[6] == symbol){
      return true;
    }
    return false;
  }
  static void initBoard(){
    boardStatus = ["","","",
      "","","",
      "","",""];
    counter = 0;
  }
}