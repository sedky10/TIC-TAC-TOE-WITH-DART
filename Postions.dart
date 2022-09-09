abstract class Positions {
  List<List<String?>> matrix =
      List.generate(5, (A) => List.generate(5, (B) => '  '));
  void GameBoard() {
    matrix[0][1] = '|';
    matrix[0][3] = '|';
    matrix[1][0] = '--';
    matrix[1][1] = '+';
    matrix[1][2] = '--';
    matrix[1][3] = '+';
    matrix[1][4] = '--';
    matrix[2][1] = '|';
    matrix[2][3] = '|';
    matrix[3][0] = '--';
    matrix[3][1] = '+';
    matrix[3][2] = '--';
    matrix[3][3] = '+';
    matrix[3][4] = '--';
    matrix[4][1] = '|';
    matrix[4][3] = '|';

    for (int i = 0; i < 5; i++) {
      print(matrix[i].join());
    }
  }

  void Movement(String? M, int? Pos) {
    switch (Pos) {
      case 1:
        matrix[0][0] = M;
        break;
      case 2:
        matrix[0][2] = M;
        break;
      case 3:
        matrix[0][4] = M;
        break;
      case 4:
        matrix[2][0] = M;
        break;
      case 5:
        matrix[2][2] = M;
        break;
      case 6:
        matrix[2][4] = M;
        break;
      case 7:
        matrix[4][0] = M;
        break;
      case 8:
        matrix[4][2] = M;

        break;
      case 9:
        matrix[4][4] = M;
        break;

      default:
        print('Wrong Number');
    }
  }

  void checkWinner() {
    //TopRow
    if (matrix[0][0] == matrix[0][2] &&
        matrix[0][0] == matrix[0][4] &&
        (matrix[0][0] == 'X ' || matrix[0][0] == 'O ')) {
      return print('${matrix[0][0]} is A Winner ');
    }
    // MidRow
    else if (matrix[2][0] == matrix[2][2] &&
        matrix[2][0] == matrix[2][4] &&
        (matrix[2][0] == 'X ' || matrix[2][0] == 'O ')) {
      return print('${matrix[2][0]} is A Winner ');
    }
    //botRow
    else if (matrix[4][0] == matrix[4][2] &&
        matrix[4][0] == matrix[4][4] &&
        (matrix[4][0] == 'X ' || matrix[4][0] == 'O ')) {
      return print('${matrix[4][0]} is A Winner ');
    }
    //Rightcol
    else if (matrix[0][4] == matrix[2][4] &&
        matrix[0][4] == matrix[4][4] &&
        (matrix[0][4] == 'X ' || matrix[0][4] == 'O ')) {
      return print('${matrix[0][4]} is A Winner ');
    }
    //leftcol
    else if (matrix[0][0] == matrix[2][0] &&
        matrix[0][0] == matrix[4][0] &&
        (matrix[0][0] == 'X ' || matrix[0][0] == 'O ')) {
      return print('${matrix[0][0]} is A Winner ');
    }
    //midcol
    else if (matrix[0][2] == matrix[2][2] &&
        matrix[0][2] == matrix[4][2] &&
        (matrix[0][2] == 'X ' || matrix[0][2] == 'O ')) {
      return print('${matrix[0][2]} is A Winner ');
    }
    //cross1
    else if (matrix[0][0] == matrix[2][2] &&
        matrix[0][0] == matrix[4][4] &&
        (matrix[0][0] == 'X ' || matrix[0][0] == 'O ')) {
      return print('${matrix[0][0]} is A Winner ');
    }
    //cross2
    else if (matrix[0][4] == matrix[2][2] &&
        matrix[0][4] == matrix[4][0] &&
        (matrix[0][4] == 'X ' || matrix[0][4] == 'O ')) {
      return print('${matrix[0][4]} is A Winner ');
    } else {
      return;
    }
  }
}















// (matrix[0][0] == matrix[0][2] && matrix[0][4] != matrix[0][0]) &&
//         (matrix[2][0] == matrix[2][2] && matrix[2][0] != matrix[2][4]) &&
//         (matrix[4][0] == matrix[4][2] && matrix[4][4] != matrix[4][0]) &&
//         (matrix[0][0] == matrix[0][2] && matrix[0][4] != matrix[0][0]) &&
//         (matrix[0][2] == matrix[2][2] && matrix[0][2] != matrix[2][4]) &&
//         (matrix[0][4] == matrix[2][4] && matrix[0][4] != matrix[4][4]) &&
//         (matrix[0][0] == matrix[2][2] && matrix[0][0] != matrix[4][4]) &&
//         (matrix[0][4] == matrix[2][2] && matrix[0][4] != matrix[4][0])