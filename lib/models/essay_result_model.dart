import '../controller/essay_result_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EssayResultScreen.
///
/// This class ensures that the EssayResultController is created when the
/// EssayResultScreen is first loaded.
class EssayResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EssayResultController());
  }
}
