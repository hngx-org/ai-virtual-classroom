import 'package:ai_virtual_classroom/controller/auth_controller.dart';

import '../app_export.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    Get.lazyPut(() => AuthController());
  }
}
