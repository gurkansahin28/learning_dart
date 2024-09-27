class Person {
  String name;
  int age;
  Person({required this.name, required this.age});
}

//--------------------------------------------------------------------
void main(List<dynamic> args) {
  var aCount = 3;
  //print((aCount is String) ? 'sring typed' : 'different');
  checkTheTypeOfTheValue(aCount);
  print(aCount.runtimeType);
  Person person = Person(name: 'Gurkan', age: 55);
  checkTheTypeOfTheValue(person);
}

/***The End of MAIN*************************************************/
void checkTheTypeOfTheValue(dynamic value) {
  print((value is String)
      ? 'string typed'
      : (value is int)
          ? 'integer typed'
          : (value is double)
              ? 'double typed'
              : value.runtimeType);
}
//------------------------------------------------------------------
