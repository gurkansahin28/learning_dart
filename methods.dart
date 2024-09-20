import 'dart:math';
/*** METHODS IN DART *********************************************************
 * 1. instance methods
 * 2. static methods
 * 3. getters and setters
 * 4. abstract methods
 ***************************************************************************/

void main() {
  //---1. Instance Methods
  print(Calculator().add(7, 9));
  print(Calculator().add(7, 9).toInt());
  print(Calculator().divide(5, 11));
  print(Calculator().multiply(8, 4));
  print(Calculator().square(11));
  print(Calculator().subtract(3, 5));

  //---2. Static Method
  print(StaticMethod.randomInt(5));

  //---3. Setters and Getters
  SetGetMethods setGetMethods = SetGetMethods();
  //setters
  setGetMethods.name = 'Gurkan';
  setGetMethods.age = 55;
  setGetMethods.height = 1.79;
  //getters
  print(setGetMethods.displayInfo());
  print(setGetMethods.name);
  print(setGetMethods.age);
  print(setGetMethods.height);

  //---4. Abstract Method
  Student student = Student();
  student.displayInfo();
}

/*** The End of Main *******************************************************/
/***CLASS AND METHOD DEFINITIONS********************************************/
//---1. Instance Method
class Calculator {
  Calculator();
  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) => a / b;
  double square(double a) => a * a;
}

//---------------------------------------------------------------------------
//---2. Static Method
class StaticMethod {
  StaticMethod();
  static int randomInt(int limit) {
    return Random().nextInt(limit);
  }
}

//---------------------------------------------------------------------------
//---3. Setters and Getters
class SetGetMethods {
  //---variables
  late String _name;
  late int _age;
  late double _height;
  //---default constructor
  SetGetMethods();
  //---setters
  set name(String name) => this._name = name;
  set age(int age) => this._age = age;
  set height(double height) => this._height = height;
  //---getters
  String get name => this._name;
  int get age => this._age;
  double get height => this._height;
  //---methods
  String displayInfo() {
    return 'The name is $_name and age is $_age. You are $_height cm tall.';
  }
}

//----------------------------------------------------------------------------
//---4. Abstract methods are defined in a abstract class and
//must be overriden in subclasses.
abstract class IdealPerson {
  String name = 'Ideality';
  IdealPerson();
  void displayInfo() {
    print('The ideal person created!');
  }
}

class Student extends IdealPerson {
  @override
  void displayInfo() {
    print('A ideal student killed!');
  }
}

/**************************************************************************
*****SPECIAL FUNCTIONS*****************************************************
**************************************************************************/
void doHeaderMain(
    {String? fillerChar = '*',
    int? howManyChars = 7,
    String? title = 'MAIN TITLE'}) {
  String titleLineStart = List.filled(howManyChars!, fillerChar).join();
  String titleLineEnd = List.filled(howManyChars, fillerChar).join();
  String linedTitle =
      '\n' + titleLineStart + ' ${title!.toUpperCase()} ' + titleLineEnd + '\n';
  print(linedTitle);
}
//-----------------------------------------------------------------------------

void doHeaderSub(
    {String? fillerChar = '-',
    int? howManyChars = 7,
    String? title = 'sub title'}) {
  String titleLineStart = List.filled(howManyChars!, fillerChar).join();
  String titleLineEnd = List.filled(howManyChars, fillerChar).join();
  String linedTitle =
      '\n' + titleLineStart + ' ${title!} ' + titleLineEnd + '\n';
  print(linedTitle);
}
//-----------------------------------------------------------------------------
