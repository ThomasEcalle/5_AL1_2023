class UnknowkError implements Exception {}

class TotoError implements Exception {}

void main() async {
  print('1');

  try {
    final text = await _getTextFromNetwork();
    final length = await _getLengthFromServer(text);
    print('Length: $length');
  } on (UnknowkError, TotoError) catch (error) {
    print('HEY');
  } catch (error) {
    print('Une erreur est survenue: $error');
  } finally {
    print('2');
  }

  // _getTextFromNetwork().then((value) {
  //   _getLengthFromServer(value).then((length) {
  //     print(length);
  //   }). catchError((error) {
  //     print('Oups 2, une erreur est survenue: $error');
  //   });
  // }).catchError((error) {
  //   print('Oups, une erreur est survenue: $error');
  // });
}

Future<String> _getTextFromNetwork() {
  return Future.delayed(Duration(seconds: 1), () {
    return 'coucou';
  });
}

Future<int> _getLengthFromServer(String value) {
  return Future.delayed(Duration(seconds: 1), () {
    throw UnknowkError();
    return value.length;
  });
}
