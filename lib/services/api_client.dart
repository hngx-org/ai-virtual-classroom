import 'dart:convert';

import 'package:ai_virtual_classroom/core/utils/progress_dialog_utils.dart';

import '../core/app_export.dart';

class ApiClient extends GetConnect {
  var url = "https://spitfire-interractions.onrender.com";
  //final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  /// Performs API call for https://spitfire-openai.onrender.com/api/auth/login
  ///
  /// Sends a POST request to the server's ' https://spitfire-openai.onrender.com/api/auth/login' endpoint
  /// with the provided headers and request data
  /// Returns a [PostLoginResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<dynamic> postLogin({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/api/auth/login',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return response.body;
      } else {
        throw response.body != null ? response.body : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<dynamic> postRegister({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/api/auth/register',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return response.body;
      } else {
        throw response.body != null ? response.body : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<dynamic> chat({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/api/chat/completions',
        headers: headers,
        body: requestData,
        contentType: 'application/json',
      );
      print("------${response.body}-------");
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return response.body;
        // } else if (response.statusCode == 401) {
        //   print("Error ${response.statusCode}");
        //   return response.statusCode ;
      } else {
        throw response.body != null ? response.body : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
