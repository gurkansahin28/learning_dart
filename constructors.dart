//---CONSTRUCTORS-----

void main() {
  doHeaderMain(title: 'A very simple constructor');
  print("""
class Simple {
  Simple() {
    print('A very simple constructor was created!');
  }
}
""");
  Simple();
  //--------------------------------------------------------------------------
  doHeaderMain(title: 'a very basic constructor');
  print("""
class One {
  String name = 'gurkan';
  One() {
    print('A one created!');
  }
}
""");
  One();
  One one = One();
  print(one.name);
  //---parameterized constructor----------------------------------------------
  doHeaderMain(title: 'a simple parameterized constructor');
  print("""
class ElseOne {
  late String name;
  late int age;
  ElseOne(String name, int age) {
    this.name = name;
    this.age = age;
  }
}
""");
  ElseOne elseOne = ElseOne('Korkut', 245);
  print('${elseOne.name} ${elseOne.age}');
  //---creating and invoking its object, after defining the default class------
  doHeaderMain(title: 'default constructor');
  doHeaderSub(title: 'using positional parameters');
  print("""
class Anyone {
  String name;
  int age;
  Anyone(this.name, this.age);
}
""");
  Anyone anyone = Anyone('Kennan', 120);
  print('${anyone.name} ${anyone.age}');
  //---defining and using named constructor -----------------------------------
  doHeaderMain(title: 'named constructor');
  doHeaderSub(title: 'that seems like a method');
  print("""
class Person {
  String name;
  late int age;
  Person.fromBirthYear(this.name, int birthYear) {
    age = DateTime.now().year - birthYear;
  }
}
""");
  Person person = Person.fromBirthYear('gurkan', 1969);
  print(person.age);
  //---defining and using named constructor avoding code duplication----------
  doHeaderMain(title: 'Redirecting named constructor');
  doHeaderSub(title: 'used to avoid code dublication');
  print("""
class Someone {
  String name;
  int age;
  Someone(this.name, this.age);
  Someone.fromBirthYear(String name, int birthYear)
      : this(name, DateTime.now().year - birthYear);
}
""");
  Someone someone = Someone.fromBirthYear('ece', 2007);
  print(someone.age);

  //---constant constructor--------------------------------------------------
  doHeaderMain(title: 'Constant constructor');
  print("""
class Me {
  final String name;
  final String surname;
  const Me(this.name, this.surname);
}
""");
  Me me = Me('gurkan', 'sahin');
  print('${me.name} ${me.surname}');

  //---factory constructors for creating objects from different sources-------
  doHeaderMain(title: 'Factory constructor');
  doHeaderSub(title: 'used to create objects from different sources');
  print("""
  class Anybody {
  String name;
  int age;
  factory Anybody(String name, int age) {
    if (age < 0) {
      throw ArgumentError('The time arrow shold turn to negative direction');
    }
    return Anybody._internal(name, age);
  }
  Anybody._internal(this.name, this.age);
}
""");
  //---Anybody anybody = Anybody('Spock', -12); //---throws error
  //print(anybody.age);
  Anybody anywho = Anybody('Kirk', 240);
  print(anywho.age);
}

/********************* The End of Main ********************************** */
//---CONSTRUCTOR DEFINITIONS IN THEIR CLASSES--------------------------------
//---very simple contructor
class Simple {
  Simple() {
    print('A very simple constructor was created!');
  }
}

//----------------------------------------------------------------------------
//---using a very basic constructor
class One {
  String name = 'gurkan';
  One() {
    print('A one, named ${name} created!');
  }
}

//---------------------------------------------------------------------------
//---simple parameterized constructor
class ElseOne {
  late String name;
  late int age;
  ElseOne(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

//---------------------------------------------------------------------------
//---using the default constructor with positional parameters
class Anyone {
  String name;
  int age;
  Anyone(this.name, this.age);
}

//----------------------------------------------------------------------------
//---using named constructors
class Person {
  String name;
  late int age;
  Person.fromBirthYear(this.name, int birthYear) {
    age = DateTime.now().year - birthYear;
  }
}

//----------------------------------------------------------------------------
//---using named construction avoding code duplication
class Someone {
  String name;
  int age;
  Someone(this.name, this.age);
  Someone.fromBirthYear(String name, int birthYear)
      : this(name, DateTime.now().year - birthYear);
}

//----------------------------------------------------------------------------
//---constant constructor
class Me {
  final String name;
  final String surname;
  const Me(this.name, this.surname);
}

//----------------------------------------------------------------------------
//---factory constructor
class Anybody {
  String name;
  int age;
  factory Anybody(String name, int age) {
    if (age < 0) {
      throw ArgumentError('The time arrow shold turn to negative direction');
    }
    return Anybody._internal(name, age);
  }
  Anybody._internal(this.name, this.age);
}

//----------------------------------------------------------------------------
//---factory constructor more complex
class Somebody {
  String name;
  int age;
  static final Map<String, Somebody> _cache = {};
  //factory constructor
  factory Somebody(String name, int age) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final somebody = Somebody._internal(name, age);
      _cache[name] = somebody;
      return somebody;
    }
  }
  Somebody._internal(this.name, this.age);
}
//----------------------------------------------------------------------------

//------SPECIAL FUNCTIONS-----------------------------------------------------
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
