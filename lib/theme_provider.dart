import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier
{
  bool isDark=false;

  void getTheme()
  async{
    var prefs = await SharedPreferences.getInstance();
    isDark =  prefs.getBool("Theme")??false;
    notifyListeners();
  }

    void changeThemeValue(bool newValue)
    async{
      var prefs = await SharedPreferences.getInstance();
      prefs.setBool("Theme",newValue);
      notifyListeners();
    }

     getThemeValue()=> isDark;
}