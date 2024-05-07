import 'package:flutter/foundation.dart';

class AppState extends ChangeNotifier{
  int selectedCategoryId = 0;
  
  void updateCategoryId(int selectedCategory){
    selectedCategoryId = selectedCategory;
    notifyListeners();  
  }
}