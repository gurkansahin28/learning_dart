import 'dart:io';
import 'dart:math';

//---GUESS THE NUMBER-----------------------
//---using ternary operator-----------------
void main() {
  int? guess;
  bool wasKnown = false;
  var random = Random().nextInt(100);

  do {
    print("Guess a number:");
    guess = int.parse(stdin.readLineSync()!);
    // Here, ? and ! are for null safety checking
    (guess > random)
        ? stdout.write("it is greater than it! ")
        : (guess < random)
            ? stdout.write("it is smaller than it! ")
            : wasKnown = true;
  } while (!wasKnown);
}
