import 'package:dart_hybrid_2/dart_hybrid_2.dart';

void main(List<String> arguments) {
  print('============================================');

  print('============== Dart Hybrid 2  ==============');

  print('============================================');

  Lucky lucky = Lucky();
  int result = lucky.randomNumber();

  print('');
  print("The lucky number between ${lucky.min} and ${lucky.max} is: $result");
  print('');

  print('============================================');
}
