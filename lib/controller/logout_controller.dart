import 'package:ai_virtual_classroom/core/app_export.dart';
import 'package:ai_virtual_classroom/core/global/global.dart';
import 'package:ai_virtual_classroom/screens/sign_in_screen.dart';

class LogOut extends GetxController {
  Future<void> logout() async {
    String email = await authController.getEmail();
    try {
      final logout = await authRepository.logout(email);
      if (logout != null) {
        print(logout);
      }
    } catch (e) {
      print('error $e');
    }
  }
}
