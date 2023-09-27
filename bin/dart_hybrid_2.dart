import 'package:dart_hybrid_2/dart_hybrid_2.dart';

void main(List<String> arguments) {
  print('============================================');

  print('============== Dart Hybrid 2  ==============');

  print('============================================');

  // 1. First part: Accesing to the class Lucky and printing the random number generated
  Lucky lucky = Lucky();
  int result = lucky.randomNumber();

  print('');
  print("The lucky number between ${lucky.min} and ${lucky.max} is: $result");
  print('');

  print('============================================');

  // 2. Second part: Reading the arguments received from the command line
  if (arguments.isNotEmpty) {
    var argument = '';

    for (argument in arguments) {
      var argumentLowerCase = argument.toLowerCase();
      var argumentFixed =
          "${argumentLowerCase[0].toUpperCase()}${argumentLowerCase.substring(1)}";
      print('Argument: $argumentFixed');
    }
  } else {
    print('No arguments');
  }

  print('============================================');
}
