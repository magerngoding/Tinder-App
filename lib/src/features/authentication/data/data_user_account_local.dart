import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tinder_app/src/features/authentication/domainn/user_account.dart';

class DataUserAccountLocal {
  static const userAccountKey = 'userAcoountKey';

  static getDataUserAccountFromStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final result = prefs.getString(userAccountKey) ?? '';
    return jsonDecode(result);
  }

  // CARA SIMPAN DATA OBJEK MENGGUNAKAN SHAREDPREFERENCES
  static void setDataUserAccountToStorage(UserAccount userAccount) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(userAccountKey, jsonEncode(userAccount.toMap()));
  }
}

class UserAccountRegister {
  static const String userAccountRegisterKey = 'userAcoountRegister';

  static Future<bool> getUserAccountRegister() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(userAccountRegisterKey) ?? false;
  }

  static void setUSerAccountRegister(bool isRegister) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(userAccountRegisterKey, isRegister);
  }
}
