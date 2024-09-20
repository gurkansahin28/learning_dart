void main() {
  //---1.
  print(Default().runtimeType);
  //---2.
  Simpliest simpliest = Simpliest();
  print(simpliest.runtimeType);
  //---3.
  DoSth();
  //---4.
  DoSthWithParam('gurkan');
  //---5.
  DoSthWithThisParam('ece');
  //---6.
  DoSthWithThisParams('gurkan', 55);
  //---7.
  DoSthWithOptParam();
  //---8.
  DoSthWithOptParams('Deli Osman');
  DoSthWithOptParams('Deli Dumrul', 'Don\'t panic!', 340);
  //---9.
  DoSthWithNamedParams(name: 'Korkut Ata', message: 'Many respects');
  //---10.
  DoSthWithNamedParamsOptValue(name: 'Boğaç', age: 782);
  DoSthWithNamedParamsOptValue(
      name: 'Lokman', age: 943, message: 'You are the best');
  //---11.
  DoSthWithNamedParamsFullOptValues();
  DoSthWithNamedParamsFullOptValues(name: 'gurkan');
  DoSthWithNamedParamsFullOptValues(message: 'Don\'t hesitate!');
  DoSthWithNamedParamsFullOptValues(age: 55);
  DoSthWithNamedParamsFullOptValues(
      name: 'Delifirca', age: 155, message: 'Look to yourself better!');
  //---12.
  Map<String, dynamic> aFewValues = {
    'name': 'Gurkan',
    'surname': 'Sahin',
    'age': 55
  };
  DoSthWithMappedValues doSthWithMappedValues =
      DoSthWithMappedValues(aFewValues);
  print(doSthWithMappedValues.getInfo());

  DoSthWithRequiredValues doSthWithRequiredValues =
      DoSthWithRequiredValues(name: 'Gurkan', age: 55, isLazzy: true);
  doSthWithRequiredValues.displayInfo();
}

/**The End of MAIN******************************************************** */
/***CLASSES*****************************************************************/
//---1. simpliest class
class Default {}

//---2. A class with default constructor
class Simpliest {
  Simpliest();
}

//---3. A class constructor with curly brackets
class DoSth {
  DoSth() {
    print("I do this!");
  }
}

//---4. A class constructor with a positional parameter
class DoSthWithParam {
  DoSthWithParam(String name) {
    print('I am $name');
  }
}

//---5. A class constructor with a positional parameter registering via 'this'
class DoSthWithThisParam {
  String name;
  DoSthWithThisParam(this.name) {
    print(name);
  }
}

//---6. A class constructor with positional parameters registering via 'this'
class DoSthWithThisParams {
  String name;
  int age;
  DoSthWithThisParams(this.name, this.age) {
    print('$name --- $age');
  }
}

//---7. A class constructor with optional positional parameters
class DoSthWithOptParam {
  DoSthWithOptParam([String message = 'Hello!']) {
    print('$message');
  }
}

//---8. A class constructor mixed with required and optional paramaters
class DoSthWithOptParams {
  DoSthWithOptParams(String name, [String message = 'Hi!', int age = 55]) {
    print('$message to you $name who aged $age');
  }
}

//---9. A class constructor with named parameters
class DoSthWithNamedParams {
  DoSthWithNamedParams({required String name, required String message}) {
    print('$message to you $name');
  }
}

//---10. A class constructor with named parameters via optional value
class DoSthWithNamedParamsOptValue {
  DoSthWithNamedParamsOptValue(
      {required String name, required age, String message = 'What\'s up!'}) {
    print('$message $name who aged $age');
  }
}

//---11. A class constructor with named parameters full of optional values
class DoSthWithNamedParamsFullOptValues {
  DoSthWithNamedParamsFullOptValues(
      {String name = 'anyone',
      int age = 32,
      String message = 'Enjoy yourself!'}) {
    print('$message dear $name who aged $age');
  }
}

//---12. A class constructor getting map returning list
class DoSthWithMappedValues {
  Map<dynamic, dynamic> valuesMap;

  DoSthWithMappedValues(this.valuesMap);

  List getInfo() {
    return valuesMap.entries.toList();
  }
}

//---13. A class constructor requiring the variables
class DoSthWithRequiredValues {
  String name;
  int age;
  bool isLazzy;
  DoSthWithRequiredValues(
      {required this.name, required this.age, required this.isLazzy});
  void displayInfo() {
    print('Hello $name! You are $age and are you lazzy: $isLazzy');
  }
}
