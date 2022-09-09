import 'dart:io';
import 'dart:math';

import 'Postions.dart';

class XOG extends Positions {
  void CPUGame(String? F, String? V) async {
    while (true) {
      print('Choose Ur Move Number 1:9');
      int? ans = int.parse(stdin.readLineSync()!);

      Movement(V, ans);
      GameBoard();
      checkWinner();
      Random rand = new Random();
      int? R = rand.nextInt(9) + 1;
      await CPUMove(R);

      Movement(F, R);
      GameBoard();
      checkWinner();
    }
  }

  void XOGame() {
    while (true) {
      print('Player X Choose UR Move Number');
      int? ans = int.parse(stdin.readLineSync()!);
      Movement('X ', ans);
      GameBoard();
      checkWinner();
      print('Player O Choose UR Move Number');
      int? os = int.parse(stdin.readLineSync()!);

      Movement('O ', os);
      GameBoard();
      checkWinner();
    }
  }
}

Future<int?> CPUMove(int? Randum) {
  return Future.delayed(Duration(seconds: 3), () => Randum);
}
//تداخل الاماكن 
//توقف اللعبة بعد الفوز