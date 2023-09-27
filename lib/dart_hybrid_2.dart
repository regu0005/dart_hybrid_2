import 'dart:io';
import 'dart:math';

class Lucky {
  int min = 0;
  int max = 0;

  Lucky() {
    min = int.parse(Platform.environment['MIN']!);
    max = int.parse(Platform.environment['MAX']!);

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
