//---source: https://api.flutter.dev/flutter/dart-core/List-class.html

void main(List<dynamic> args) {
  //-----------------------------------------------------------------------
  //---1. Declaring an empty growable list
  //---using '=[]'
  doHeaderMain(title: '1. Declaring an empty growable list using \'=[]\'');
  List<int> growableList = [];
  print(growableList);

  //-----------------------------------------------------------------------
  doHeaderMain(title: '2. Declaring and initializing a list with vaules');
  List<String> fixedList = ["I am not ", "a hero ", "who is stupid!"];
  print(fixedList);

  //-----------------------------------------------------------------------
  //---THE LIST CONSTRUCTORS
  doHeaderMain(title: '3. Using list constructors');
  doHeaderSub(title: 'a) using named constructor \'List.empty\'');
  List<int> emptyGrowableList = List.empty(growable: true);
  print(emptyGrowableList);
  List<int> emptyFixedList = List.empty(growable: false);
  print(emptyFixedList);
  //---
  doHeaderSub(title: 'b) using named constructor \'List.filled\'');
  List<String> filledList = List.filled(5, 'undefined');
  print(filledList);
  //---
  doHeaderSub(title: 'c) using named constructor \'List.generate\'');
  List<int> generatedList = List.generate(7, (int index) {
    return index * index;
  });
  print(generatedList);
  //---
  doHeaderSub(title: 'd) using named constructor \'List.unmodifiable\'');
  List<String> unmodifiableList =
      List.unmodifiable(['Turkey', 'USA', 'Mexico']);
  print(unmodifiableList);
  try {
    unmodifiableList[0] = 'China';
  } catch (e) {
    print('An assigment error $e');
  }
  //---
  doHeaderSub(title: 'e) using named constructor \'List.from\'');
  List<int> numbers = [1, 2, 3];
  List<int> copyNumbers = List.from(numbers);
  print(copyNumbers);

  doHeaderSub(title: 'f) using named constructor \'List.of\'');
  List<String> fruits = ['apple', 'mango', 'banana'];
  List<String> copyFruits = List.of(fruits);
  print(copyFruits);

  //-----------------------------------------------------------------------
  //---THE LIST PROPERTIES
  doHeaderMain(title: 'The list properties');
  List<dynamic> rawList = ['rusty old injector', 3.14, false, 6.022e23, null];
  print('the list length: ${rawList.length}');
  print('the reversed list: ${rawList.reversed}');
  print('the first item of the list: ${rawList.first}');
  print('the hash code of the list: ${rawList.hashCode}');
  print('is the list empty?: ${rawList.isEmpty}');
  print('is the list not empty?: ${rawList.isNotEmpty}');
  print('iterator: ${rawList.iterator}');
  print('the last item of the list: ${rawList.last}');
  print('the runtime type of the list: ${rawList.runtimeType}');
  print('first or null: ${rawList.firstOrNull}');
  print('displaying the list as indexed: ${rawList.indexed}');
  print('last or null: ${rawList.lastOrNull}');
  print('the none null items of the list: ${rawList.nonNulls}');
  print('single or null: ${rawList.singleOrNull}');
  List<int> singleElementList = [7];
  print('display the single itemized list: ${singleElementList.single}');
  //-----------------------------------------------------------------------

  //---OPERATORS
  //--- operator +
  //-----------------------------------------------------------------------
  //--- operator ==
  //-----------------------------------------------------------------------
  //--- operator []
  //-----------------------------------------------------------------------
  //--- operator []=
  //-----------------------------------------------------------------------
  //---THE LIST METHODS
  //---add
  final addNumberList = <int>[1, 2, 3];
  addNumberList.add(4);
  print(numbers);
  //-----------------------------------------------------------------------
  //---addAll
  final addAllNumbers = <int>[4, 5, 6];
  addNumberList.addAll(addAllNumbers);
  print(addNumberList);
  //-----------------------------------------------------------------------
  //---any
  final anyNumbers = <int>[0, 1, 2, 3, 5, 6, 7, 8, 9];
  var result = anyNumbers.any((element) => element >= 5);
  print(result);
  result = anyNumbers.any((element) => element >= 10);
  print(result);
  //-----------------------------------------------------------------------
  //---asMap
  var wordy = <String>["absoluetly", "certainly", "exactly", "surely"];
  var wordyMap = wordy.asMap();
  print(wordyMap);
  print(wordyMap.keys.toList());
  print(wordyMap.values.toList());
  //-----------------------------------------------------------------------
  //---cast

  //-----------------------------------------------------------------------
  //---clear
  final junkNumbers = <int>[6, 0, 2, 5];
  print(junkNumbers);
  print(junkNumbers.length);
  junkNumbers.clear();
  print(junkNumbers.length);
  print(junkNumbers);
  //-----------------------------------------------------------------------
  //---contains
  final junkyard = <int, dynamic>{
    1: "broken pliers",
    2: 3.14,
    3: true,
    4: {print('Hello')},
    5: "rusty pocket knife"
  };
  bool containsKnife = junkyard.keys.contains("rusty pocket knife");
  print(containsKnife);
  containsKnife = junkyard.values.contains("rusty pocket knife");
  print(containsKnife);
  bool containsBoolean = junkyard.values.contains(true | false);
  print(containsBoolean);
  //-----------------------------------------------------------------------
  //---elementAt
  List<dynamic> draftsList = [9, "spoon", 3.14, true];
  for (var i = 0; i < draftsList.length; i++) {
    if (draftsList.elementAt(i) is int) {
      draftsList[i] = 0;
    }
  }
  print(draftsList);
  //-----------------------------------------------------------------------
  //---every
  final planetsByMass = <double, String>{
    0.06: 'Mercury',
    0.81: 'Venus',
    0.11: 'Mars'
  };
  // Checks whether all keys are smaller than 1.
  final every = planetsByMass.keys.every((key) => key < 1.0);
  print(every);
  //-----------------------------------------------------------------------
  //---expand

  //-----------------------------------------------------------------------
  //---fillRange
  final words = List.filled(5, 'old');
  print(words); // [old, old, old, old, old]
  words.fillRange(1, 3, 'new');
  print(words);
  //-----------------------------------------------------------------------
  //---firstWhere
  final numbersFirstWhere = <int>[1, 2, 3, 4, 5, 6, 7];
  var resultFirstWhere = numbersFirstWhere.firstWhere((elemet) => elemet < 5);
  print(resultFirstWhere);
  resultFirstWhere =
      numbersFirstWhere.firstWhere((element) => element > 10, orElse: () => -1);
  print(resultFirstWhere);
  //-----------------------------------------------------------------------
  //---fold
  final foldNumbers = <double>[10, 2, 5, 0.5];
  const initialValue = 100.0;
  final foldingResult = foldNumbers.fold<double>(
      initialValue, (previousValue, element) => previousValue + element);
  print(foldingResult);

  final wordsList = <String>["We ", "are ", "the ", "wordy", " list!"];
  final foldingWordsList = wordsList.fold(
      'The Sentence: ', (previousValue, item) => previousValue + item);
  print(foldingWordsList);
  //-----------------------------------------------------------------------
  //---followedBy
  var planets = <String>['Earth', 'Jupiter'];
  var updated = planets.followedBy(['Mars', 'Venus']);
  print(updated);
  //-----------------------------------------------------------------------
  //---forEach
  final nums = <int>[1, 2, 5, 9];
  nums.forEach(print);
  //-----------------------------------------------------------------------
  //---getRange
  final colors = <String>['red', 'green', 'blue', 'orange', 'pink'];
  final firstRange = colors.getRange(0, 3);
  print(firstRange.join(', ')); // red, green, blue

  final secondRange = colors.getRange(2, 5);
  print(secondRange.join(' - '));
  //-----------------------------------------------------------------------
  //---indexOf
  final notes = <String>['do', 're', 'mi', 're'];
  print(notes.indexOf('re'));
  final indexWithStart = notes.indexOf('re', 2);
  print(indexWithStart);
  final index = notes.indexOf('fa');
  print(index);
  //-----------------------------------------------------------------------
  //---indexWhere
  final musicalNotes = <String>['do', 're', 'mi', 're'];
  final first = musicalNotes.indexWhere((note) => note.startsWith('r'));
  print(first);
  final second = musicalNotes.indexWhere((note) => note.startsWith('r'), 2);
  print(second);
  final isExist = musicalNotes.indexWhere((note) => note.startsWith('k'));
  print(isExist);
  //-----------------------------------------------------------------------
  //---insert
  final aNumberSet = <int>[1, 2, 3, 4];
  const position = 2;
  aNumberSet.insert(position, 10);
  print(aNumberSet);
  //-----------------------------------------------------------------------
  //---insertAll
  final anyNumberSet = <int>[1, 2, 3, 4];
  final insertItems = [10, 11];
  anyNumberSet.insertAll(2, insertItems);
  print(anyNumberSet);
  //-----------------------------------------------------------------------
  //---join
  final massAndPlanets = <double, String>{
    0.06: 'Mercury',
    0.81: 'Venus',
    0.11: 'Mars'
  };
  final joinedNames = massAndPlanets.values.join('-');
  print(joinedNames);
  final joinedMass = massAndPlanets.keys.join(' | ');
  print(joinedMass);
  //-----------------------------------------------------------------------
  //---lastIndexOf
  final musicalNotations = <String>['do', 're', 'mi', 're'];
  final lastIndex = musicalNotations.lastIndexOf('re');
  print(lastIndex);

  const int startFrom = 2;
  final lastIndexStartingFrom = musicalNotations.lastIndexOf('re', startFrom);
  print(lastIndexStartingFrom);

  final isThereAnElementAs = musicalNotations.lastIndexOf('fa');
  print(isThereAnElementAs);
  //-----------------------------------------------------------------------
  //---lastIndexWhere
  final notesForMusic = <String>['do', 're', 'mi', 're'];
  final firstWhere =
      notesForMusic.lastIndexWhere((note) => note.startsWith('r'));
  print(firstWhere);
  final secondWhere =
      notesForMusic.lastIndexWhere((note) => note.startsWith('r'), 2);
  print(secondWhere);
  final indexWhere =
      notesForMusic.lastIndexWhere((note) => note.startsWith('k'));
  print(index);
  print(indexWhere);
  //-----------------------------------------------------------------------
  //---insert
  final hollowedNumbers = <int>[1, 2, 4, 5];
  const aimedIndex = 2;
  hollowedNumbers.insert(aimedIndex, 3);
  print(hollowedNumbers);
  //-----------------------------------------------------------------------
  //---insertAll
  final orphanNumbers = <int>[1, 2, 5, 6];
  final insertAllItems = [3, 4];
  orphanNumbers.insertAll(2, insertAllItems);
  print(orphanNumbers);
  //-----------------------------------------------------------------------
  //---join
  final peopleAndSkills = {
    'creativitiy': 'Gurkan',
    'lidership': 'Mine',
    'superSkilled': 'Ece'
  };
  final family = peopleAndSkills.values.join(' + ');
  print(family);
  final joinedSkills = peopleAndSkills.keys.join(' * ');
  print(joinedSkills);
  //-----------------------------------------------------------------------
  //---lastIndexOf
  final newComers = <String>['Dona', 'Remus', 'Mike', 'Remus'];
  final whatIndex = newComers.lastIndexOf('Remus');
  print(whatIndex);
  const startIndex = 2;
  final whichIndex = newComers.lastIndexOf('Remus', startIndex);
  print(whichIndex);
  final DoesExistAnewComer = newComers.lastIndexOf('Frodo');
  print(DoesExistAnewComer);
  //-----------------------------------------------------------------------
  //---lastIndexWhere
  final newNotes = <String>['do', 're', 'mi', 're'];
  final firstPlace = newNotes.lastIndexWhere((note) => note.startsWith('r'));
  print(firstPlace);
  final secondPlace =
      newNotes.lastIndexWhere((note) => note.startsWith('r'), 2);
  print(secondPlace);
  //-----------------------------------------------------------------------
  //---lastWhere
  final newNumbers = <int>[1, 2, 3, 5, 6, 7];
  var lastWhereResult = newNumbers.lastWhere((element) => element < 5);
  print(lastWhereResult);
  lastWhereResult = newNumbers.lastWhere((element) => element > 5);
  print(lastWhereResult);
  lastWhereResult =
      newNumbers.lastWhere((element) => element > 10, orElse: () => -1);
  print(lastWhereResult);
  //-----------------------------------------------------------------------
  //---map
  //-----------------------------------------------------------------------
  //---noSuchMethod
  try {
    dynamic object = 1;
    object.add(32);
  } catch (e) {
    print('An error occured: $e');
  }
  //-----------------------------------------------------------------------
  //---reduce
  final aFewNumbers = <double>[10, 2, 5, 0.5];
  final resultOfReducing =
      aFewNumbers.reduce((value, element) => value + element);
  print(resultOfReducing);
  //-----------------------------------------------------------------------
  //---remove
  final bodyParts = <String>['head', 'shoulders', 'knees', 'toes'];
  bool isRemoved = bodyParts.remove('head'); // true
  print(isRemoved);
  print(bodyParts);
  //-----------------------------------------------------------------------
  //---removeAt
  final parts = <String>['head', 'shoulder', 'knees', 'toes'];
  final removedPartAt = parts.removeAt(2); // knees
  print(removedPartAt);
  print(parts);
  //-----------------------------------------------------------------------
  //---removeLast
  final aFewBodyParts = <String>['head', 'shoulder', 'knees', 'toes'];
  final removedLastPart = parts.removeLast(); // toes
  print(removedLastPart);
  print(aFewBodyParts);
  //-----------------------------------------------------------------------
  //---removeRange
  final pieSlices = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];
  pieSlices.removeRange(2, 5);
  print(pieSlices);
  //-----------------------------------------------------------------------
  //---removeWhere
  final spactators = <String>[
    'BadJack',
    'Rina',
    'Lena',
    'BadLucy',
    'Kagan',
    'DirtyHarry'
  ];
  spactators.removeWhere((item) => item.length == 4);
  print(spactators);
  spactators.removeWhere((item) => item.substring(0, 3) == "Bad");
  print(spactators);
  //-----------------------------------------------------------------------
  //---replaceRange
  final audience = <String>['Bluish', 'Doggy', 'Silly', 'Frank', 'Dexter'];
  final replacements = ['Dolly', 'Sunny'];
  audience.replaceRange(1, 4, replacements);
  print(audience);
  //-----------------------------------------------------------------------
  //---retainWhere
  final performers = <String>['Ted', 'Rex', 'Mark', 'Tuna', 'Roddy'];
  performers.retainWhere((item) => item.length == 3);
  print(performers);
  //-----------------------------------------------------------------------
  //---setAll
  final list = <String>['a', 'b', 'c', 'd'];
  list.setAll(1, ['bee', 'sea']);
  print(list);
  //-----------------------------------------------------------------------
  //---setRange
  //-----------------------------------------------------------------------
  //---shuffle
  final songList = <String>[
    "Stop",
    "Lost on you",
    "Tell me sweet little lies",
    "Novamber rain",
    "Alone",
    "Unchain my heart"
  ];
  songList.shuffle();
  print(songList);
  //-----------------------------------------------------------------------
  //---singleWhere
  final fewNumbers = <int>[2, 2, 10];
  var resultSingleWhere = fewNumbers.singleWhere((element) => element > 5);
  print(resultSingleWhere);
  resultSingleWhere = fewNumbers.singleWhere(
    (element) => element == 1,
    orElse: () => -1,
  );
  print(resultSingleWhere);
  //-----------------------------------------------------------------------
  //---skip
  final seats = <int>[1, 2, 3, 4, 5, 6, 7];
  final skippingResult = seats.skip(4);
  print(skippingResult);
  //-----------------------------------------------------------------------
  //---skipWhile
  final saloonSeats = <int>[1, 2, 3, 5, 6, 7];
  var skipWhileResult = saloonSeats.skipWhile((x) => x < 5);
  print(skipWhileResult);
  skipWhileResult = saloonSeats.skipWhile((x) => x != 3);
  print(skipWhileResult);
  skipWhileResult = saloonSeats.skipWhile((x) => x.isOdd);
  print(skipWhileResult);
  skipWhileResult = saloonSeats.skipWhile((x) => x.isEven);
  print(skipWhileResult);
  //-----------------------------------------------------------------------
  //---sort
  final furnitures = <String>[
    "table",
    "armchair",
    "TV",
    "coffee table",
    "console"
  ];
  furnitures.sort((a, b) => a.length.compareTo(b.length));
  print(furnitures);
  //-----------------------------------------------------------------------
  //---sublist
  final favoriteColors = <String>['red', 'green', 'blue', 'orange', 'pink'];
  print(favoriteColors.sublist(1, 3));
  //-----------------------------------------------------------------------
  //---take
  //-----------------------------------------------------------------------
  //---takeWhile
  //-----------------------------------------------------------------------
  //---toList
  final solarPlanets = <int, String>{1: 'Mercury', 2: 'Venus', 3: 'Mars'};
  final keysList = solarPlanets.keys.toList(growable: false);
  print(keysList);
  final valuesList = solarPlanets.values.toList(growable: false);
  print(valuesList);
  //-----------------------------------------------------------------------
  //---toSet
  final valueSet = solarPlanets.values.toSet();
  print(valueSet);
  //-----------------------------------------------------------------------
  //---toString
  //-----------------------------------------------------------------------
  //---where
  final someIntegers = <int>[-3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var resultWhere = someIntegers.where((x) => x < 5);
  print(resultWhere);
  resultWhere = someIntegers.where((x) => x > 5);
  print(resultWhere);
  resultWhere = someIntegers.where((x) => x.isEven);
  print(resultWhere);
  resultWhere = someIntegers.where((x) => x.isOdd);
  print(resultWhere);
  resultWhere = someIntegers.where((x) => x.isNegative);
  print(resultWhere);
  resultWhere = someIntegers.where((x) => !(x.isNegative));
  print(resultWhere);
  //-----------------------------------------------------------------------
  //---whereType
  //-----------------------------------------------------------------------
}
/***The End of MAIN*****************************************************/

//------SPECIAL FUNCTIONS--------------------------------------------------
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
//--------------------------------------------------------------------------

void doHeaderSub(
    {String? fillerChar = '-',
    int? howManyChars = 7,
    String? title = 'subtitle'}) {
  String titleLineStart = List.filled(howManyChars!, fillerChar).join();
  String titleLineEnd = List.filled(howManyChars, fillerChar).join();
  String linedTitle =
      '\n' + titleLineStart + ' ${title!} ' + titleLineEnd + '\n';
  print(linedTitle);
}
//--------------------------------------------------------------------------
