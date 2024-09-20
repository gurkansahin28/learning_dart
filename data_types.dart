import 'dart:math';

void main() {
  //---1. integer variable
  int age;
  age = 55;
  print(age);

  int pointX = 45;
  print(pointX);
  print(pointX.runtimeType);
  print(pointX.toDouble());
  print(pointX.toDouble().runtimeType);

  int depth = (67.34).toInt();
  print(depth);

  //---2. double variable
  double record = 8.2721;
  print(record.runtimeType);
  print(record);
  print(record.toInt());

  //---3. num keryword to  hold integer and double
  num countingResult = 92;
  print(countingResult.runtimeType);
  print(countingResult);

  num pi = 3.14159265359;
  print(pi.runtimeType);
  print(pi);
  print(pi.toInt());

  num createAnum() {
    return Random().nextInt(5);
  }

  var randNum = createAnum();
  print(randNum.runtimeType);
  print(randNum);

  num throwAnum() => Random().nextDouble() * 10;
  print(throwAnum().runtimeType);
  print(throwAnum());

  //---4. very useful var keyword
  var width = 12;
  print(width.runtimeType);
  print(width);

  var height = 732.43;
  print(height.runtimeType);
  print(height);

  var message = 'Hello';
  print(message.runtimeType);
  print(message);

  var toDoList = ['wash dishes', 'vacuum sitting room', 'train coding'];
  print(toDoList.runtimeType);
  print(toDoList);

  var myGlossary = {
    'puzzle': 'flutter itself',
    'design': 'my major subject',
    'hobby': 'letter works'
  };
  print(myGlossary.runtimeType);
  print(myGlossary);

  var mypencilBox = PencilCase(3, 6, true);
  print(mypencilBox.runtimeType);
  mypencilBox.printInfo();

  //---5. the String value
  String greeting = 'Good days';
  print(greeting.runtimeType);
  print(greeting);

  //---6. constant values in many forms
  const double PI = 3.14159265359;
  print(PI.runtimeType);
  print(PI);
  //PI = 3.00;

  const int Pi = 3;
  print(Pi.runtimeType);
  print(Pi);

  const String defaultGreeting = 'Hello';
  print(defaultGreeting.runtimeType);
  //defaultGreeting = 'I mean Mello';
  print(defaultGreeting);

  //---7. a list including many different kinds of values
  int randomInt = Random().nextInt(10);
  List<dynamic> trash = [
    'broken pocket knife',
    20,
    'overused toothbrush',
    3.13,
    false,
    {print('I am an overloaded function')},
    '333 ml botle',
    {(randomInt <= 5) ? print('lesser than 6') : print('greather than 5')}
  ];
  //print(trash);
  print(trash[7].runtimeType);

  //---8. enumarated list items
  final petValues = Pet.values;
  print(petValues.runtimeType);
  print(petValues);
  print(Pet.elephant);
  print(Pet.hippo);
  print(Pet.lion.index);
  print(Pet.hippo == petValues[1]);
}

/***The End of MAIN******************************************************/
class PencilCase {
  int howManyPencils;
  int howManyColoreds;
  bool eraser;
  PencilCase(this.howManyPencils, this.howManyColoreds, this.eraser);

  void printInfo() {
    print('Pencils: $howManyPencils, '
        'colored pencils: $howManyColoreds. '
        'Is there any eraser: ${(eraser) ? 'yes' : 'no'}');
  }
}

//--------------------------------------------------------------------------
enum Pet { lion, hippo, elephant }
//--------------------------------------------------------------------------
