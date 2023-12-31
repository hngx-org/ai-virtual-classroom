import 'package:ai_virtual_classroom/core/app_export.dart';
import '../models/submit_success_model.dart';
/// A controller class for the SubmitSuccessScreen.
///
/// This class manages the state of the SubmitSuccessScreen, including the
/// current submitSuccessModelObj
class SubmitSuccessController extends GetxController {
  Rx<SubmitSuccessModel> submitSuccessModelObj = SubmitSuccessModel().obs;
}
