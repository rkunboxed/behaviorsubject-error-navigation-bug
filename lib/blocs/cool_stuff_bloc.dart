import 'dart:async';
import 'dart:math';

class CoolStuffBloc {

  final _coolStuff = StreamController<String>.broadcast();
  Stream<String> get coolStuff => _coolStuff.stream;

  fetchCoolStuff(bool forceError) {
    if (forceError == true){
      _coolStuff.addError('something went wrong');
    }
    else {
      var _stuff  = Random().nextInt(20).toString();
      _coolStuff.add(_stuff);
    }
  }

  dispose() {
    print('DISPOSING BLOC');
    _coolStuff.close();
  }
}



