class PlayLogic{
  static int counter = 0;
  static List<String> boardStatus = ["","","",
                                     "","","",
                                     "","",""];
  static List<int> itemsOfWining = [];
  static String gameState = "";
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
        gameState = "X-win";
      }else if(checkWinner('O')){
        gameState = "O-win";
      }else if(counter == 9){
        gameState = "DRAW";
      }
    }
  }
  static bool checkWinner(String symbol) {
    for (int i = 0; i < 9; i += 3) {
      if (boardStatus[i] == symbol
          && boardStatus[i + 1] == symbol
          && boardStatus[i + 2] == symbol) {
        itemsOfWining = [i,i+1,i+2];
        return true;
      }
    }
    for(int i=0;i<3;i++){
      if(boardStatus[i] == symbol
          &&boardStatus[i+3] == symbol
          &&boardStatus[i+6] == symbol){
        itemsOfWining = [i,i+3,i+6];
        return true;
      }
    }
    if(boardStatus[0] == symbol
        &&boardStatus[4] == symbol
        &&boardStatus[8] == symbol){
      itemsOfWining = [0,4,8];
      return true;
    }
    if(boardStatus[2] == symbol
        &&boardStatus[4] == symbol
        &&boardStatus[6] == symbol){
      itemsOfWining = [2,4,6];
      return true;
    }
    return false;
  }
  static void initBoard(){
    boardStatus = ["","","",
      "","","",
      "","",""];
    itemsOfWining = [];
    counter = 0;
    gameState = "";
  }
}