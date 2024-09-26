void main(List<dynamic> args) {
//---1. Assigning an Anonymous Function to a Variable
  var printHello = (() {
    print('Hello from the inline function!');
  });
  print(printHello.runtimeType);
  print(printHello().runtimeType);
  printHello();
  //--------------------------------------------------------------------------

  //---2. Anonymous Function with Parameters
  var multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(2, 3));
  //--------------------------------------------------------------------------

  //---3. Passing an Anonymous Function as a Callback
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.forEach((item) {
    print(item * 2);
  });
  //--------------------------------------------------------------------------

  //---4. Using Anonymous Function in List Operations
  var doubleNumbers = numbers.map((item) => item * 2).toList();
  print(doubleNumbers);
  //--------------------------------------------------------------------------

  //---5. Anonymous Function with Optional or Default Parameters
  var greet = ([String name = 'there']) {
    print('Hello, $name!');
  };
  greet();
  greet('Gurkan');
  //--------------------------------------------------------------------------

  //---6.
  List<int> squareIntegers = [];
  var squareInteger = (int integer) => integer * integer;
  squareIntegers.add(squareInteger(3));
  print(squareIntegers);
  //--------------------------------------------------------------------------

  //---7.
  List<int> numberList = [3, 6, 8];
  List<int> squaredNumbers =
      numberList.map((number) => number * number).toList();
  print(squaredNumbers);
  //--------------------------------------------------------------------------

  //---8. Anonymous Function Directly Inside add() Method
  List<int> sqrNumbers = [];
  sqrNumbers.add((int number) {
    return number * number;
  }(4));
  print(sqrNumbers);
  //--------------------------------------------------------------------------

  //---9. Direct Use in add(): Quickly add the squared number to the list.
  List<int> squaredIntegers = [];
  for (int i = 0; i < 10; i++) {
    squaredIntegers.add((int i) {
      return i * i;
    }(i));
  }
  print(squaredIntegers);

  //-------------------------------------------------------------------------

  //---10. Conditional Logic in map():
  //Apply logic within the anonymous function to add squared
  //or non-squared values based on conditions.
  List<int> aFewIntegers = [2, 4, 6, 8, 10, 12];

  // Use map with a condition inside the anonymous function
  List<int?> aFewSquaredIntegers = aFewIntegers.map((number) {
    if (number > 5) {
      return number * number;
    } else
      return number; // Return the original number if <= 5
  }).toList();

  print(aFewSquaredIntegers); // Output: [2, 4, 36, 64]

  //-----------------------------------------------------------------------
  //---11.
  List<int> someSquaredNumbers = [1, 9, 25];

  // Use an anonymous function with insert()
  someSquaredNumbers.insert(
      1,
      (int number) {
        return number * number;
      }(4)); // Inserts 16 at index 1

  print(someSquaredNumbers); // Output: [1, 16, 9, 25]
  //-----------------------------------------------------------------------
  //---12. Loop with Anonymous Functions:
  //Iterate through a list,
  //applying the anonymous function to add squared values.
  List<int> newNumbers = [2, 3, 4];
  List<int> newSquaredNumbers = [];

  // Loop through the numbers and use an anonymous function to square each
  for (int number in newNumbers) {
    newSquaredNumbers.add((int n) {
      return n * n;
    }(number));
  }

  print(newSquaredNumbers);
  //-----------------------------------------------------------------------

  //---13. Filter and Map Combination:
  //Use filtering (where()) and transformation (map())
  //in sequence with anonymous functions.
  List<int> someNumbers = [1, 2, 3, 4, 5, 6];

  // First filter numbers and then square them
  List<int> filteredAndSquared = someNumbers
      .where((number) =>
          number % 2 == 0) // Anonymous function to filter even numbers
      .map((number) => number * number) // Anonymous function to square numbers
      .toList();

  print(filteredAndSquared);
  //-----------------------------------------------------------------------
  //---14. Add Multiple Values at Once:
  //Use addAll() to return multiple squared numbers and
  //append them to the list.
  List<int> fewNumbers = [3, 5];
  List<int> fewSquaredNumbers = [];

  // Use addAll() with anonymous function results
  fewSquaredNumbers.addAll(fewNumbers.map((number) {
    return number * number;
  }).toList());

  print(fewSquaredNumbers);
}

/************************************************************************* */
