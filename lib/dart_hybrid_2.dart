import 'dart:io';
import 'dart:math';

class Lucky {
  int min = 0;
  int max = 0;

  Lucky() {
    if (Platform.environment.containsKey('MIN') &&
        Platform.environment.containsKey('MAX')) {
      min = int.parse(Platform.environment['MIN']!);
      max = int.parse(Platform.environment['MAX']!);
    } else {
      min = 1;
      max = 10;
      print(
          "Environment variables doesn't exist.\nUsing default values min=1,max=10");
    }

    // Validate if the values min and max are correct, maximum and minimun values
    // if they are not correct, we swap the values as the result wanted is a value
    // between min and max values
    if (max < min) {
      int temp = min;
      min = max;
      max = temp;
    }
  }

  int randomNumber() {
    int randomnum = min + Random().nextInt((max + 1) - min);
    return randomnum;
  }
}

class Printing {
  Printing();

  void printLine() {
    print('============================================');
  }

  void printTitle(String customTitle) {
    print('============================================');
    print('============== $customTitle  ==============');
    print('============================================');
  }
}
