//----the innovation start of Main---------------------------------
void main() {
  //--------------------------------------------------------------------------
  doHeaderMain(
      fillerChar: '%', howManyChars: 15, title: 'The Head of Map Analyze');
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Various declaration and definition of a map');
  doHeaderSub(title: 'var mapName={...};');
  var pencilCase = {
    //item    //count
    "pencils": 3,
    "eraser": 1,
    "pen": 1,
    "ruler": 1,
    "coloreds": 6
  };
  print('Items - Counts');
  print('--------------');
  pencilCase.forEach((key, value) {
    print('$key - $value');
  });
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Declarating a map at the start of the line');
  doHeaderSub(title: 'Map<Type, Type> mapName={...};');
  Map<String, int> fruitBox = {'banana': 3, 'apple': 5, 'kivi': 7};
  fruitBox.forEach((key, value) {
    print('fruit: $key --- how many: $value');
  });
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'First declaration, second definition');
  doHeaderSub(title: 'Map<Type, Type> mapName={};');
  Map<int, String> importantStuff = {};
  importantStuff[0] = "my computer";
  importantStuff[1] = "my cell phone";
  importantStuff[2] = "my boxing gloves";
  importantStuff.forEach((key, value) => print('$key : $value'));
  print(importantStuff.length);

  doHeaderSub(title: 'To grow a map using an additional list');
  int length = importantStuff.length;
  List additionals = ['calligraphy pen', 'AWT t-shirt', 'baglama'];
  for (int i = length; i < additionals.length + length; i++) {
    importantStuff[i] = additionals[i - length].toString();
  }
  print(importantStuff);
  //----------------------------------------------------------------------
  doHeaderMain(title: 'Default declaration by dynamic type');
  doHeaderSub(title: 'var mapName = {};');
  doHeaderSub(title: 'in this way both the key and value will be dynamic');
  var universalConstants = {};
  universalConstants['pi'] = 3.14;
  universalConstants['gravitational'] = 6.6743 * 10e-11;
  universalConstants['speed of light'] = 3 * 10e5;
  universalConstants.forEach((key, value) => print('$key ---> $value'));

  //---------------------------------------------------------------------------
  Map<String, String> glossary = {
    //--key
    "fun": "a feeling from happiness",
    "run": "an activity which is unusual in sleeping times",
    "gun": "a tool to kill",
    "nun": "a woman choosing a religious way to live",
    "pun": "an expression way in literature",
    "sun": "a star giving life to our earth",
    "tun": "a container keeping winegar inside of it"
  };
  //--------------------------------------------------------------------------
  doHeaderMain(title: 'The key is String, value dynamic');
  Map<String, dynamic> junkyard = {
    'electronics': 'computer, obsolute cell phones, a burned router',
    'ingredients': 'wrinkled leather rolls and slivers',
    'tools': 'pliers, hammers and screwdrivers',
    'kaputs': 7,
    'useful': 3,
    'loaned': 2
  };
  junkyard.forEach((key, value) => print('$key ---> $value'));
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Give the key, get the value');
  print(junkyard['ingredients']);
  junkyard['ingredients'] += ' and many blunt knives';
  print(junkyard['ingredients']);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Printing keys or values using joker name in for-in');
  for (var name in junkyard.keys) {
    print('$name: ${junkyard[name]}');
  }
  //---------------------------------------------------------------------------
  doHeaderSub(title: 'Reaching the keys and values separatedly');
  for (var element in junkyard.entries) {
    print('${element.key} :\n ${element.value}');
  }
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Is the map empthy or not?');
  print(glossary.isEmpty);
  print(glossary.isNotEmpty);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Printing map easily');
  //---A.BASICS ON DEALING THE MAP DATA TYPE WITH THE METHODS---
  //---to print the whole map easily---
  print(glossary);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Getting a map length');
  print(glossary.length);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Getting map entries');
  print(glossary.entries);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'A copy map from the other');
  //---create a map copying the other one---
  final copyGlossary = Map<String, String>.from(glossary);
  print(copyGlossary);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Using the classic for loop');
  //---to print keys and values of the map item by item---
  for (int i = 0; i < glossary.length; i++) {
    print(glossary.keys.elementAt(i) + ':');
    print(glossary.values.elementAt(i) + '.');
  }
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Using for-each method with funtion body');
  print('Keys ---> Values');
  glossary.forEach(
    (key, value) {
      print('$key ---> $value');
    },
  );
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Using for-in method for getting a list of a map');
  for (MapEntry element in glossary.entries) {
    print('${element.key}--> ${element.value}');
  }
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Using ternary operator and fat arrow in for-each');
  glossary.forEach(
    (key, value) => (key == 'pun')
        ? print('pun is a technic to use words humorously')
        : (key == 'sun')
            ? print('sun is a likely deadly laser in hot Summer days')
            : print('There is no such a thing bro!'),
  );
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Using for-each method with fat arrow');
  glossary.forEach((key, value) => print('$key ---> $value'));
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Adding item to a map using []= operator');
  glossary['rock'] = 'a hard stone to carve instead to make music';
  //print(glossary);
  glossary.forEach(
    (key, value) => print('$key ---> $value'),
  );
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Updating an element according its key');
  glossary['rock'] = 'a kind of music hard to listen to';
  glossary.forEach(
    (key, value) {
      print('$key ---> $value');
      print('----------------');
    },
  );
  //---------------------------------------------------------------------------
  //---B. COMPLICATED APPROACHES TO THE MAP DATA TYPE---
  //---to make a list from keys of a map---
  //---map.keys.toList(growable:true/false)---
  doHeaderMain(title: 'Creating a string from a map keys and values');
  List<String> glossaryKeys = glossary.keys.toList();
  print(glossaryKeys);
  drawLine();

  List<String> glossaryValues = glossary.values.toList();
  print(glossaryValues);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Does a map contain a given key?');
  print(glossary.containsKey('tech'));
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Does a map contain a given value?');
  print(glossary.containsValue('tech is a way to make the life easier'));
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Adding a key-value couple to a map');
  glossary['tech'] = 'tech is a way to make the life easier';
  print(glossary);
  //---------------------------------------------------------------------------

  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Adding suitable another map into the map');
  final someFarmAnimals = <String, String>{
    'cow': 'it is a very special one',
    'donkey': 'typical small organic lorry',
    'chicken': 'a factory of eggs'
  };
  copyGlossary.addAll(someFarmAnimals);
  print(copyGlossary);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Add entries to a map');
  copyGlossary.addEntries([
    MapEntry('cat', 'an animal which speaks meow language'),
    MapEntry('fat', 'a boy who can not his feet'),
    MapEntry('rat', 'a small creature that is keen on cheese')
  ]);
  print(copyGlossary);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Converting keys of a map into string');
  String box = copyGlossary.keys.toString();
  print(box);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Converting values of a map into string');
  print(copyGlossary.values.toString());
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'If it is absent, put it!');
  final newComer = <String, String>{'fox': 'that is canny animal'};
  for (final item in copyGlossary.entries) {
    newComer.putIfAbsent(item.key, () => item.value);
  }
  print(newComer);
  print(copyGlossary);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Removing an element through the given index');
  print(copyGlossary);
  drawLine();
  final removedItem = copyGlossary.remove('run');
  print(copyGlossary);
  drawLine();
  print(removedItem);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Removing all entries that satisfy the given test');
  copyGlossary.removeWhere((key, value) => key.startsWith('f'));
  print(copyGlossary);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Updating an item of a map');
  copyGlossary.update('nun', (value) => 'very special and homely one');
  print(copyGlossary);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Updating an item of a map if it absent');
  copyGlossary.update('hyna', (value) => 'New',
      ifAbsent: () => 'which is very opportunistic one');
  print(copyGlossary);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'Updating all item of a map');
  copyGlossary.updateAll(
    (key, value) => value.toUpperCase(),
  );
  print(copyGlossary);
  //---------------------------------------------------------------------------
  doHeaderMain(title: 'A map from iterable');
  List<int> aFewNumbers = [1, 2, 3, 4, 5, 6, 7];
  Map<int, int> aFewSquareNumbers = Map<int, int>.fromIterable(aFewNumbers,
      key: (item) => item, value: (item) => item * item);
  print(aFewSquareNumbers);
  //---------------------------------------------------------------------------
  doHeaderMain(
      fillerChar: '%', howManyChars: 15, title: 'The End of Map Analyze');
} //---the dramatic end of Main------------------------------------

//
//
//
/***********************FUNCTIONS******************************** */
//------but it continues some functions----------------------------
void drawLine([String? fillerChar, int? howManyChars]) {
  if (howManyChars != null && fillerChar != null) {
    String lineBox = List.filled(howManyChars, fillerChar).join();
    print(lineBox);
  } else {
    String lineBox = List.filled(35, '-').join();
    print(lineBox);
  }
}

//-----------------------------------------------------------------------------
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
