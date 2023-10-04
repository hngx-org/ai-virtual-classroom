import 'package:ai_virtual_classroom/controllers/submit_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SubmitSuccessScreen.
///
/// This class ensures that the SubmitSuccessController is created when the
/// SubmitSuccessScreen is first loaded.
class SubmitSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubmitSuccessController());
  }
}
