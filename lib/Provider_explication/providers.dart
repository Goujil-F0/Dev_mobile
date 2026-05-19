import 'package:flutter/foundation.dart';

class CounterNotifier extends ChangeNotifier {

  int counter =0;

  void increments(){
    counter++;
    notifyListeners();
  }

}