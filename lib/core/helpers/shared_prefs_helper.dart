import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  // private constructor as I don't want to allow creating an instance of this class itself.
  SharedPrefHelper._();

  /// Saves a [value] with a [key] in the SharedPreferences.
  static setData(String key, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    debugPrint("SharedPrefHelper : setData with key : $key and value : $value");

    switch (value) {
      case String _:
        await sharedPreferences.setString(key, value);
        break;
      case int _:
        await sharedPreferences.setInt(key, value);
        break;
      case bool _:
        await sharedPreferences.setBool(key, value);
        break;
      case double _:
        await sharedPreferences.setDouble(key, value);
        break;
      default:
        return null;
    }
  }

  /// Returns the value of the [key] from the SharedPreferences.
  static getData(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    debugPrint("SharedPrefHelper : getData with key : $key with value : ${sharedPreferences.get(key)}");
    return sharedPreferences.get(key);
  }
}