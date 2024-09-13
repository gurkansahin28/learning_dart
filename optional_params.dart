void main() {
  sendMessageToYourSelf('Gurkan');
  sendMessageToYourSelf('Gurkan', 'Good codings');
  sendMessageToYourSelfOptionally();
  sendMessageToYourSelfOptionally2();
  sendMessageToYourSelfOptionally2('gurkan');
  sendMessageToYourSelfOptionally2('', 'what is the best');
  sendMessagetoYourSelfOptionalNamed();
  sendMessagetoYourSelfOptionalNamed(name: 'Gurkan');
  sendMessagetoYourSelfOptionalNamed(name: 'Gurkan', message: 'Eyoo! Helloo!');
}

//---the end of Main---
//---FUNCTIONS---
//-1-Optional Positional Parameters--------------------------------
//---They are declared inside square brackets '[]'------------
void sendMessageToYourSelf(String? name, [String? message]) {
  String defaultMessage = "Hello";
  (message != null)
      ? print('$message $name!')
      : print('$defaultMessage $name!');
}

//---------------------------------------------------------
void sendMessageToYourSelfOptionally([String? name, String? message]) {
  (name != null && message != null)
      ? print('$message to you, $name')
      : print('Hi, human!');
}

//------------------------------------------------------------
void sendMessageToYourSelfOptionally2([String? name, String? message]) {
  (name != null && message != null)
      ? print('$message to you, $name')
      : (name != null && message == null)
          ? print('Hi, $name')
          : (name == null && message != null)
              ? print('Hi, $message')
              : print('What the fun heaven you are, man!');
}

//-2 and 3-Optional Named Parameters with Default Values----------------
//---They are declared inside curly brackets '{}'---
void sendMessagetoYourSelfOptionalNamed(
    {String? name = 'no name', String? message = 'no comment'}) {
  print('$name said $message');
}
