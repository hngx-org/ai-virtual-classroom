import 'dart:developer';

import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  RxBool isLoggedIn = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize the isLoggedIn status when the app starts
    checkLoginStatus();
  }

  Future<void> checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    isLoggedIn.value = prefs.getBool('isLoggedin') ?? false;
  }

  Future<void> login() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedin', true);
    isLoggedIn.value = true;
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedin', false);
    isLoggedIn.value = false;
  }

  Future<bool> saveName(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString("name", value);
  }

  Future<String> getName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    return pref.getString("name") ?? "";
  }

  Future<bool> saveEmail(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString("email", value);
  }

  Future<String> getEmail() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    return pref.getString("email") ?? "";
  }

  Future<bool> saveCookie(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString("cookie", value);
  }

  Future<String> getCookie() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    return pref.getString("cookie") ?? "";
  }
}
