void main() {
  /**
   * Dart SDK version: 3.5.3 (stable) (None) on "linux_x64"
   */

  List<int> squareIntegers = [];
  var squareInteger = (int integer) => integer * integer;
  squareIntegers.add(squareInteger(3));
  print(squareIntegers);

  List<int> numbers = [3, 6, 8];
  List<int> squaredNumbers = numbers.map((number) => number * number).toList();
  print(squaredNumbers);

  //---9.
  List<dynamic> rawValues = [
    1,
    "hello!",
    3.14,
    false,
    () {
      print('Ouch!');
    },
    23,
    10e-7,
    9
  ];
  List<int> pickedIntegers = [];
  List<double> pickedDouble = [];
  for (var element in rawValues) {
    if (element is int)
      pickedIntegers.add(element);
    else if (element is double) pickedDouble.add(element);
  }
  print(pickedIntegers);
  print(pickedDouble);
}
