import 'package:dart_hybrid_2/dart_hybrid_2.dart';

void main(List<String> arguments) {
  Printing myPrinter = Printing();
  myPrinter.printTitle('Dart Hybrid 2');

  // 1. First part: Accesing to the class Lucky and printing the random number generated

  Lucky lucky = Lucky();
  int result = lucky.randomNumber();

  print(
      "\nThe lucky number between ${lucky.min} and ${lucky.max} is: $result\n");

  myPrinter.printLine();

  // 2. Second part: Reading the arguments received from the command line

  if (arguments.isNotEmpty) {
    var argument = '';

    for (argument in arguments) {
      var argumentLowerCase = argument.toLowerCase();
      var argumentFixed =
          "${argumentLowerCase[0].toUpperCase()}${argumentLowerCase.substring(1)}";

      // Get the lucky number for this argument (name)
      int argumentLuckyNumber = lucky.randomNumber();

      print('Hello $argumentFixed. Your lucky number is $argumentLuckyNumber');
    }
  } else {
    print('\nNo arguments\n');
  }

  myPrinter.printLine();
}
