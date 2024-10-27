import 'package:flutter/material.dart';


class AuthProvider extends ChangeNotifier{



  /// name validation condition
  String _name = "";
  String get name => _name;
  void updateName(String newName){
    _name = newName;
    notifyListeners();
  }
  bool get isNameValid =>  _name.length >= 6;

  /// email validation
  String _email = '';
  bool _isValid = false;

  String get email => _email;
  bool get isValid => _isValid;

  void setEmail(String value) {
    _email = value;
    _isValid = _validateEmail(_email);
    notifyListeners();
  }

  bool _validateEmail(String email) {
    final emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegex.hasMatch(email);
  }

}