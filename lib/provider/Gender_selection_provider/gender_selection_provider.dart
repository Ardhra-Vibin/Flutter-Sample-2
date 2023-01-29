import 'package:flutter/cupertino.dart';

class GenderSelectionProvider extends ChangeNotifier{
  int radio = 0;
  change(int val){
   radio = val;
   notifyListeners();
  }
}