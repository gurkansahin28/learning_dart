import 'dart:math';

void main() {
  //---1. NESTED IF ELSE
  var intValue = Random().nextInt(3) + 1;
  print(intValue);
  if (intValue == 1) {
    print('The random number should be one!');
  } else {
    if (intValue == 2) {
      print('It should be two as the random number.');
    } else {
      print('It should be three!');
    }
  }
  //--------------------------------------------------------------------------
  //---2. TERNARY OPERATOR
  var boolValue = Random().nextBool();
  (boolValue)
      ? print('Case 1: The random value: $boolValue')
      : print('Case 2: The random boolean value is $boolValue');

  intValue = Random().nextInt(4);
  (intValue == 0)
      ? print('Case 0, integer value is $intValue')
      : (intValue == 1)
          ? print('Case 1: The integer value is $intValue')
          : (intValue == 2)
              ? print('Case 2; the integer value is $intValue')
              : print('Case 3 = The integer value must be tree! $intValue');

  //--------------------------------------------------------------------------
  //---3. SWITCH - CASE
  intValue = Random().nextInt(5);
  switch (intValue) {
    case (0 || 1 || 2):
      print("From the first case: The random number is $intValue");
      break;
    case (3 || 4):
      print('From the second case: The random number is $intValue');
      break;
    case (5):
      print('From the third case: The ramdom number is $intValue');
      break;
    default:
      throw FormatException('Something went wrong');
  }

  intValue = Random().nextInt(3) + 1;
  print(intValue);
  switch (intValue) {
    case 1:
      print(Traction.front.toString());
      break;
    case 2:
      print(Traction.back.toString());
      break;
    case 3:
      print(Traction.all.toString());
      break;
    default:
      throw FormatException('Do not play with me!');
  }

  intValue = Random().nextInt(100);
  switch (intValue) {
    case (< 11):
      print('Your final mark is $intValue. Very bad situation.');
      print('You should immediately consider some serious precautions.');
      break;
    case (> 10 && < 51):
      print('The final mark is $intValue.');
      print('It does not look good. You need to work a lot.');
      break;
    case (> 50 && < 71):
      print('It is $intValue as a final exam mark.');
      print('You will need to keep tight something next time.');
      break;
    case (> 70 && < 101):
      print('$intValue is nice mark.');
      print('Keep it high...');
      break;
    default:
      throw FormatException('Something wrong.');
  }
}

/***The End of MAIN********************************************************/
enum Traction { front, back, all }
