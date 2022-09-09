import 'dart:io';

import 'XO.dart';

void main() {
  XOG XO = XOG();
  stdout.write('one Player? Two Players?');
  String? Ans = stdin.readLineSync()!.toLowerCase();
  switch (Ans) {
    case 'one':
    case 'one player':
    case 'solo':
      //Single Game
      stdout.write('Welcome Let\'s Have Fun\n');
      XO.GameBoard();
      print('Choose(X OR O)');
      String? Answer = stdin.readLineSync()!.toLowerCase();
      switch (Answer) {
        case 'x':
          XO.CPUGame('O ', 'X ');
          break;

        case 'o':
          XO.CPUGame('X ', 'O ');
          break;
        default:
          Answer;
      }

      break;
    case 'two':
    case 'two players':
    case 'double':
      //Friendly Game

      XO.XOGame();
      break;
    default:
      print('Error');
  }
}
